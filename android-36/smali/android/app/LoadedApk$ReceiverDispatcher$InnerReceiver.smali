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
.field final blacklist mApplicationThread:Landroid/app/IApplicationThread;

.field final greylist-max-o mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method constructor blacklist <init>(Landroid/app/IApplicationThread;Landroid/app/LoadedApk$ReceiverDispatcher;Z)V
    .registers 5
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "rd"    # Landroid/app/LoadedApk$ReceiverDispatcher;
    .param p3, "strong"    # Z

    .line 1707
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 1708
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mApplicationThread:Landroid/app/IApplicationThread;

    .line 1709
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    .line 1710
    if-eqz p3, :cond_10

    move-object v0, p2

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1711
    return-void
.end method


# virtual methods
.method public greylist-max-o performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .line 1716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "performReceive() called targeting raw IIntentReceiver for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadedApk"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    nop

    .line 1718
    const/4 v0, 0x1

    move/from16 v6, p5

    invoke-static {v0, v6}, Landroid/content/BroadcastReceiver$PendingResult;->guessAssumeDelivered(IZ)Z

    move-result v8

    .line 1717
    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v11}, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIILjava/lang/String;)V

    .line 1722
    return-void
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

    .line 1728
    if-nez p1, :cond_c

    .line 1729
    const-string v0, "LoadedApk"

    const-string v1, "Null intent received"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/4 v0, 0x0

    move-object v1, v0

    .local v0, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_15

    .line 1732
    .end local v0    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_c
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v1, v0

    .line 1739
    .local v1, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :goto_15
    if-eqz v1, :cond_2d

    .line 1740
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

    invoke-virtual/range {v1 .. v11}, Landroid/app/LoadedApk$ReceiverDispatcher;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIILjava/lang/String;)V

    move-object v8, v1

    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .local v8, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_53

    .line 1743
    .end local v8    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_2d
    move-object/from16 v5, p4

    move-object v8, v1

    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v8    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-nez p7, :cond_53

    .line 1750
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1752
    .local v1, "mgr":Landroid/app/IActivityManager;
    if-eqz v5, :cond_3c

    .line 1753
    const/4 v0, 0x0

    :try_start_39
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 1755
    :cond_3c
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mApplicationThread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1756
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    .line 1755
    const/4 v6, 0x0

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_4c} :catch_4d

    .line 1759
    goto :goto_53

    .line 1757
    :catch_4d
    move-exception v0

    .line 1758
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1761
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "mgr":Landroid/app/IActivityManager;
    :cond_53
    :goto_53
    return-void
.end method
