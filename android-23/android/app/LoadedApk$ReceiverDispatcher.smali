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
.field final mActivityThread:Landroid/os/Handler;

.field final mContext:Landroid/content/Context;

.field mForgotten:Z

.field final mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

.field final mInstrumentation:Landroid/app/Instrumentation;

.field final mLocation:Landroid/app/IntentReceiverLeaked;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field final mRegistered:Z

.field mUnregisterLocation:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V
    .locals 3
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activityThread"    # Landroid/os/Handler;
    .param p4, "instrumentation"    # Landroid/app/Instrumentation;
    .param p5, "registered"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 907
    if-nez p3, :cond_0

    #@6
    .line 908
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "Handler must not be null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 911
    :cond_0
    new-instance v1, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;

    #@11
    if-eqz p5, :cond_1

    #@13
    const/4 v0, 0x0

    #@14
    :goto_0
    invoke-direct {v1, p0, v0}, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;-><init>(Landroid/app/LoadedApk$ReceiverDispatcher;Z)V

    #@17
    iput-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    #@19
    .line 912
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1b
    .line 913
    iput-object p2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    #@1d
    .line 914
    iput-object p3, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    #@1f
    .line 915
    iput-object p4, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    #@21
    .line 916
    iput-boolean p5, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    #@23
    .line 917
    new-instance v0, Landroid/app/IntentReceiverLeaked;

    #@25
    invoke-direct {v0, v2}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    #@28
    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    #@2a
    .line 918
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    #@2c
    invoke-virtual {v0}, Landroid/app/IntentReceiverLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    #@2f
    .line 906
    return-void

    #@30
    .line 911
    :cond_1
    const/4 v0, 0x1

    #@31
    goto :goto_0
.end method


# virtual methods
.method getIIntentReceiver()Landroid/content/IIntentReceiver;
    .locals 1

    #@0
    .prologue
    .line 945
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    #@2
    return-object v0
.end method

.method getIntentReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    #@0
    .prologue
    .line 941
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    #@2
    return-object v0
.end method

.method getLocation()Landroid/app/IntentReceiverLeaked;
    .locals 1

    #@0
    .prologue
    .line 937
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    #@2
    return-object v0
.end method

.method getUnregisterLocation()Ljava/lang/RuntimeException;
    .locals 1

    #@0
    .prologue
    .line 953
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mUnregisterLocation:Ljava/lang/RuntimeException;

    #@2
    return-object v0
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    #@0
    .prologue
    .line 963
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    move v6, p5

    #@8
    move/from16 v7, p6

    #@a
    move/from16 v8, p7

    #@c
    invoke-direct/range {v0 .. v8}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;-><init>(Landroid/app/LoadedApk$ReceiverDispatcher;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    #@f
    .line 965
    .local v0, "args":Landroid/app/LoadedApk$ReceiverDispatcher$Args;
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    #@11
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 966
    iget-boolean v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    #@19
    if-eqz v1, :cond_0

    #@1b
    if-eqz p5, :cond_0

    #@1d
    .line 967
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@20
    move-result-object v9

    #@21
    .line 970
    .local v9, "mgr":Landroid/app/IActivityManager;
    invoke-virtual {v0, v9}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    #@24
    .line 957
    .end local v9    # "mgr":Landroid/app/IActivityManager;
    :cond_0
    return-void
.end method

.method setUnregisterLocation(Ljava/lang/RuntimeException;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    #@0
    .prologue
    .line 949
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mUnregisterLocation:Ljava/lang/RuntimeException;

    #@2
    .line 948
    return-void
.end method

.method validate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityThread"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 922
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 923
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Receiver "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 925
    const-string/jumbo v2, " registered with differing Context (was "

    #@1b
    .line 924
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 926
    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    #@21
    .line 924
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 926
    const-string/jumbo v2, " now "

    #@28
    .line 924
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 926
    const-string/jumbo v2, ")"

    #@33
    .line 924
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 923
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 928
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    #@41
    if-eq v0, p2, :cond_1

    #@43
    .line 929
    new-instance v0, Ljava/lang/IllegalStateException;

    #@45
    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v2, "Receiver "

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    .line 931
    const-string/jumbo v2, " registered with differing handler (was "

    #@5a
    .line 930
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    .line 932
    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    #@60
    .line 930
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    .line 932
    const-string/jumbo v2, " now "

    #@67
    .line 930
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 932
    const-string/jumbo v2, ")"

    #@72
    .line 930
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    .line 929
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v0

    #@7e
    .line 921
    :cond_1
    return-void
.end method
