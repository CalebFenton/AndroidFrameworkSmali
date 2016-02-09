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
    .line 792
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    #@3
    .line 793
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    #@a
    .line 794
    if-eqz p2, :cond_0

    #@c
    .end local p1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :goto_0
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;

    #@e
    .line 792
    return-void

    #@f
    .line 794
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
    .line 798
    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@8
    .line 804
    .local v0, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v0, :cond_0

    #@a
    move-object v1, p1

    #@b
    move v2, p2

    #@c
    move-object v3, p3

    #@d
    move-object v4, p4

    #@e
    move v5, p5

    #@f
    move v6, p6

    #@10
    move/from16 v7, p7

    #@12
    .line 805
    invoke-virtual/range {v0 .. v7}, Landroid/app/LoadedApk$ReceiverDispatcher;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    #@15
    .line 797
    :goto_0
    return-void

    #@16
    .line 814
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@19
    move-result-object v1

    #@1a
    .line 816
    .local v1, "mgr":Landroid/app/IActivityManager;
    if-eqz p4, :cond_1

    #@1c
    .line 817
    const/4 v2, 0x0

    #@1d
    :try_start_0
    invoke-virtual {p4, v2}, Landroid/os/Bundle;->setAllowFds(Z)Z

    #@20
    .line 819
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    #@23
    move-result v7

    #@24
    const/4 v6, 0x0

    #@25
    move-object v2, p0

    #@26
    move v3, p2

    #@27
    move-object v4, p3

    #@28
    move-object v5, p4

    #@29
    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    goto :goto_0

    #@2d
    .line 820
    :catch_0
    move-exception v8

    #@2e
    .line 821
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ActivityThread"

    #@31
    const-string/jumbo v3, "Couldn\'t finish broadcast to unregistered receiver"

    #@34
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    goto :goto_0
.end method
