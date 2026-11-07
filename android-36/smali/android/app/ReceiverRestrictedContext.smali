.class Landroid/app/ReceiverRestrictedContext;
.super Landroid/content/ContextWrapper;
.source "ContextImpl.java"


# direct methods
.method constructor greylist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "base"    # Landroid/content/Context;

    .line 133
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 134
    return-void
.end method


# virtual methods
.method public whitelist bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 8
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "instanceName"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "conn"    # Landroid/content/ServiceConnection;

    .line 190
    new-instance v0, Landroid/content/ReceiverCallNotAllowedException;

    const-string v1, "BroadcastReceiver components are not allowed to bind to services"

    invoke-direct {v0, v1}, Landroid/content/ReceiverCallNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "conn"    # Landroid/content/ServiceConnection;

    .line 183
    new-instance v0, Landroid/content/ReceiverCallNotAllowedException;

    const-string v1, "BroadcastReceiver components are not allowed to bind to services"

    invoke-direct {v0, v1}, Landroid/content/ReceiverCallNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .line 176
    new-instance v0, Landroid/content/ReceiverCallNotAllowedException;

    const-string v1, "BroadcastReceiver components are not allowed to bind to services"

    invoke-direct {v0, v1}, Landroid/content/ReceiverCallNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ReceiverRestrictedContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .line 144
    if-nez p1, :cond_8

    .line 147
    const/4 v0, 0x0

    invoke-super {p0, v0, p2, p3, p4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 149
    :cond_8
    new-instance v0, Landroid/content/ReceiverCallNotAllowedException;

    const-string v1, "BroadcastReceiver components are not allowed to register to receive intents"

    invoke-direct {v0, v1}, Landroid/content/ReceiverCallNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 12
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;

    .line 164
    if-nez p1, :cond_d

    .line 167
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "filter":Landroid/content/IntentFilter;
    .end local p4    # "broadcastPermission":Ljava/lang/String;
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v2, "user":Landroid/os/UserHandle;
    .local v3, "filter":Landroid/content/IntentFilter;
    .local v4, "broadcastPermission":Ljava/lang/String;
    .local v5, "scheduler":Landroid/os/Handler;
    invoke-super/range {v0 .. v5}, Landroid/content/ContextWrapper;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p2

    return-object p2

    .line 169
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "broadcastPermission":Ljava/lang/String;
    .end local v5    # "scheduler":Landroid/os/Handler;
    .restart local p2    # "user":Landroid/os/UserHandle;
    .restart local p3    # "filter":Landroid/content/IntentFilter;
    .restart local p4    # "broadcastPermission":Ljava/lang/String;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_d
    move-object v2, p2

    move-object v3, p3

    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "user":Landroid/os/UserHandle;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    new-instance p2, Landroid/content/ReceiverCallNotAllowedException;

    const-string p3, "BroadcastReceiver components are not allowed to register to receive intents"

    invoke-direct {p2, p3}, Landroid/content/ReceiverCallNotAllowedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .line 157
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "filter":Landroid/content/IntentFilter;
    .end local p3    # "broadcastPermission":Ljava/lang/String;
    .end local p4    # "scheduler":Landroid/os/Handler;
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v3, "filter":Landroid/content/IntentFilter;
    .local v4, "broadcastPermission":Ljava/lang/String;
    .local v5, "scheduler":Landroid/os/Handler;
    invoke-virtual/range {v0 .. v5}, Landroid/app/ReceiverRestrictedContext;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
