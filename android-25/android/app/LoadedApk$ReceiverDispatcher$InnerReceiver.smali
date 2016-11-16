.class final Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerReceiver"
.end annotation


# instance fields
.field final mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field final mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Z)V
    .locals 1
    .param p1, "rd"    # Landroid/app/LoadedApk$ReceiverDispatcher;
    .param p2, "strong"    # Z

    #@0
    .prologue
    .line 1019
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    #@3
    .line 1020
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    #@a
    .line 1021
    if-eqz p2, :cond_0

    #@c
    .end local p1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :goto_0
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@e
    .line 1019
    return-void

    #@f
    .line 1021
    .restart local p1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_0
    const/4 p1, 0x0

    #@10
    goto :goto_0
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    #@0
    .prologue
    .line 1028
    if-nez p1, :cond_0

    #@2
    .line 1029
    const-string/jumbo v2, "LoadedApk"

    #@5
    const-string/jumbo v3, "Null intent received"

    #@8
    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 1030
    const/4 v0, 0x0

    #@c
    .line 1039
    :goto_0
    if-eqz v0, :cond_1

    #@e
    move-object v1, p1

    #@f
    move v2, p2

    #@10
    move-object v3, p3

    #@11
    move-object v4, p4

    #@12
    move v5, p5

    #@13
    move v6, p6

    #@14
    move/from16 v7, p7

    #@16
    .line 1040
    invoke-virtual/range {v0 .. v7}, Landroid/app/LoadedApk$ReceiverDispatcher;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    #@19
    .line 1026
    :goto_1
    return-void

    #@1a
    .line 1032
    :cond_0
    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    #@1c
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@22
    .local v0, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_0

    #@23
    .line 1049
    .end local v0    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@26
    move-result-object v1

    #@27
    .line 1051
    .local v1, "mgr":Landroid/app/IActivityManager;
    if-eqz p4, :cond_2

    #@29
    .line 1052
    const/4 v2, 0x0

    #@2a
    :try_start_0
    invoke-virtual {p4, v2}, Landroid/os/Bundle;->setAllowFds(Z)Z

    #@2d
    .line 1054
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    #@30
    move-result v7

    #@31
    const/4 v6, 0x0

    #@32
    move-object v2, p0

    #@33
    move v3, p2

    #@34
    move-object v4, p3

    #@35
    move-object v5, p4

    #@36
    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    goto :goto_1

    #@3a
    .line 1055
    :catch_0
    move-exception v8

    #@3b
    .line 1056
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@3e
    move-result-object v2

    #@3f
    throw v2
.end method
