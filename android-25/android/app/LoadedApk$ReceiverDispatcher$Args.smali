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

.field private mDispatched:Z

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
    .line 1077
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@2
    .line 1080
    iget-boolean v1, p1, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v5, 0x1

    #@7
    .line 1081
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
    .line 1079
    invoke-direct/range {v1 .. v10}, Landroid/content/BroadcastReceiver$PendingResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V

    #@1f
    .line 1082
    iput-object p2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    #@21
    .line 1083
    move/from16 v0, p6

    #@23
    iput-boolean v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    #@25
    .line 1078
    return-void

    #@26
    .line 1080
    :cond_0
    const/4 v5, 0x2

    #@27
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    #@0
    .prologue
    const-wide/16 v10, 0x40

    #@2
    const/4 v9, 0x0

    #@3
    .line 1087
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@5
    iget-object v5, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    #@7
    .line 1088
    .local v5, "receiver":Landroid/content/BroadcastReceiver;
    iget-boolean v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    #@9
    .line 1098
    .local v4, "ordered":Z
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@c
    move-result-object v3

    #@d
    .line 1099
    .local v3, "mgr":Landroid/app/IActivityManager;
    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    #@f
    .line 1100
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_0

    #@11
    .line 1101
    const-string/jumbo v6, "LoadedApk"

    #@14
    new-instance v7, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v8, "Null intent being dispatched, mDispatched="

    #@1c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v7

    #@20
    iget-boolean v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    #@22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v7

    #@2a
    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 1104
    :cond_0
    iput-object v9, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    #@2f
    .line 1105
    const/4 v6, 0x1

    #@30
    iput-boolean v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    #@32
    .line 1106
    if-eqz v5, :cond_1

    #@34
    if-nez v2, :cond_3

    #@36
    .line 1107
    :cond_1
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@38
    iget-boolean v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    #@3a
    if-eqz v6, :cond_2

    #@3c
    if-eqz v4, :cond_2

    #@3e
    .line 1110
    invoke-virtual {p0, v3}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    #@41
    .line 1112
    :cond_2
    return-void

    #@42
    .line 1106
    :cond_3
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@44
    iget-boolean v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    #@46
    if-nez v6, :cond_1

    #@48
    .line 1115
    const-string/jumbo v6, "broadcastReceiveReg"

    #@4b
    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@4e
    .line 1117
    :try_start_0
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@50
    iget-object v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    #@52
    invoke-virtual {v6}, Landroid/content/BroadcastReceiver;->getClass()Ljava/lang/Class;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@59
    move-result-object v0

    #@5a
    .line 1118
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@5d
    .line 1119
    invoke-virtual {v2}, Landroid/content/Intent;->prepareToEnterProcess()V

    #@60
    .line 1120
    invoke-virtual {p0, v0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@63
    .line 1121
    invoke-virtual {v5, p0}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    #@66
    .line 1122
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@68
    iget-object v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    #@6a
    invoke-virtual {v5, v6, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    .line 1138
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_4
    invoke-virtual {v5}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    #@70
    move-result-object v6

    #@71
    if-eqz v6, :cond_5

    #@73
    .line 1139
    invoke-virtual {p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->finish()V

    #@76
    .line 1141
    :cond_5
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@79
    .line 1086
    return-void

    #@7a
    .line 1123
    :catch_0
    move-exception v1

    #@7b
    .line 1124
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@7d
    iget-boolean v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    #@7f
    if-eqz v6, :cond_6

    #@81
    if-eqz v4, :cond_6

    #@83
    .line 1127
    invoke-virtual {p0, v3}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    #@86
    .line 1129
    :cond_6
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@88
    iget-object v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    #@8a
    if-eqz v6, :cond_7

    #@8c
    .line 1130
    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@8e
    iget-object v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    #@90
    iget-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@92
    iget-object v7, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    #@94
    invoke-virtual {v6, v7, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@97
    move-result v6

    #@98
    if-nez v6, :cond_4

    #@9a
    .line 1131
    :cond_7
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@9d
    .line 1132
    new-instance v6, Ljava/lang/RuntimeException;

    #@9f
    .line 1133
    new-instance v7, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v8, "Error receiving broadcast "

    #@a7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v7

    #@ab
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v7

    #@af
    .line 1134
    const-string/jumbo v8, " in "

    #@b2
    .line 1133
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v7

    #@b6
    .line 1134
    iget-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@b8
    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    #@ba
    .line 1133
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v7

    #@be
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v7

    #@c2
    .line 1132
    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c5
    throw v6
.end method
