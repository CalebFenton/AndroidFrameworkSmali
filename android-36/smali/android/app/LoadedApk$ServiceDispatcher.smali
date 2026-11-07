.class final Landroid/app/LoadedApk$ServiceDispatcher;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;,
        Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;,
        Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;,
        Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;
    }
.end annotation


# instance fields
.field private final greylist-max-o mActiveConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mActivityExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mActivityThread:Landroid/os/Handler;

.field private final greylist-max-r mConnection:Landroid/content/ServiceConnection;

.field private final greylist-max-p mContext:Landroid/content/Context;

.field private final blacklist mFlags:J

.field private greylist-max-o mForgotten:Z

.field private final greylist-max-o mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

.field private final greylist-max-o mLocation:Landroid/app/ServiceConnectionLeaked;

.field private greylist-max-o mUnbindLocation:Ljava/lang/RuntimeException;


# direct methods
.method constructor greylist-max-r <init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;J)V
    .registers 8
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activityThread"    # Landroid/os/Handler;
    .param p4, "flags"    # J

    .line 2087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2082
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    .line 2088
    new-instance v0, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    invoke-direct {v0, p0}, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    .line 2089
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 2090
    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    .line 2091
    iput-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 2092
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    .line 2093
    new-instance v1, Landroid/app/ServiceConnectionLeaked;

    invoke-direct {v1, v0}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    .line 2094
    iput-wide p4, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mFlags:J

    .line 2095
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/util/concurrent/Executor;J)V
    .registers 8
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activityExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "flags"    # J

    .line 2098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2082
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    .line 2099
    new-instance v0, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    invoke-direct {v0, p0}, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    .line 2100
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 2101
    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    .line 2102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 2103
    iput-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    .line 2104
    new-instance v1, Landroid/app/ServiceConnectionLeaked;

    invoke-direct {v1, v0}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    .line 2105
    iput-wide p4, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mFlags:J

    .line 2106
    return-void
.end method


# virtual methods
.method public greylist-max-o connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    .registers 16
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;
    .param p3, "dead"    # Z

    .line 2166
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_14

    .line 2167
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    .end local p1    # "name":Landroid/content/ComponentName;
    .end local p2    # "service":Landroid/os/IBinder;
    .end local p3    # "dead":Z
    .local v3, "name":Landroid/content/ComponentName;
    .local v4, "service":Landroid/os/IBinder;
    .local v6, "dead":Z
    invoke-direct/range {v1 .. v6}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_31

    .line 2168
    .end local v3    # "name":Landroid/content/ComponentName;
    .end local v4    # "service":Landroid/os/IBinder;
    .end local v6    # "dead":Z
    .restart local p1    # "name":Landroid/content/ComponentName;
    .restart local p2    # "service":Landroid/os/IBinder;
    .restart local p3    # "dead":Z
    :cond_14
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    .end local p1    # "name":Landroid/content/ComponentName;
    .end local p2    # "service":Landroid/os/IBinder;
    .end local p3    # "dead":Z
    .restart local v3    # "name":Landroid/content/ComponentName;
    .restart local v4    # "service":Landroid/os/IBinder;
    .restart local v6    # "dead":Z
    iget-object p1, v2, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eqz p1, :cond_2e

    .line 2169
    iget-object p1, v2, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    move v11, v6

    .end local v6    # "dead":Z
    .local v11, "dead":Z
    new-instance v6, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    const/4 v10, 0x0

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    .end local v3    # "name":Landroid/content/ComponentName;
    .end local v4    # "service":Landroid/os/IBinder;
    .local v8, "name":Landroid/content/ComponentName;
    .local v9, "service":Landroid/os/IBinder;
    invoke-direct/range {v6 .. v11}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;IZ)V

    move-object p2, v6

    move v6, v11

    .end local v8    # "name":Landroid/content/ComponentName;
    .end local v9    # "service":Landroid/os/IBinder;
    .end local v11    # "dead":Z
    .restart local v3    # "name":Landroid/content/ComponentName;
    .restart local v4    # "service":Landroid/os/IBinder;
    .restart local v6    # "dead":Z
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    .line 2171
    :cond_2e
    invoke-virtual {p0, v3, v4, v6}, Landroid/app/LoadedApk$ServiceDispatcher;->doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    .line 2173
    :goto_31
    return-void
.end method

.method public greylist-max-o death(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 16
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2176
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_14

    .line 2177
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "name":Landroid/content/ComponentName;
    .end local p2    # "service":Landroid/os/IBinder;
    .local v3, "name":Landroid/content/ComponentName;
    .local v4, "service":Landroid/os/IBinder;
    invoke-direct/range {v1 .. v6}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2e

    .line 2178
    .end local v3    # "name":Landroid/content/ComponentName;
    .end local v4    # "service":Landroid/os/IBinder;
    .restart local p1    # "name":Landroid/content/ComponentName;
    .restart local p2    # "service":Landroid/os/IBinder;
    :cond_14
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "name":Landroid/content/ComponentName;
    .end local p2    # "service":Landroid/os/IBinder;
    .restart local v3    # "name":Landroid/content/ComponentName;
    .restart local v4    # "service":Landroid/os/IBinder;
    iget-object p1, v2, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eqz p1, :cond_2b

    .line 2179
    iget-object p1, v2, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    new-instance v7, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    .end local v3    # "name":Landroid/content/ComponentName;
    .end local v4    # "service":Landroid/os/IBinder;
    .local v9, "name":Landroid/content/ComponentName;
    .local v10, "service":Landroid/os/IBinder;
    invoke-direct/range {v7 .. v12}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;IZ)V

    .end local v9    # "name":Landroid/content/ComponentName;
    .end local v10    # "service":Landroid/os/IBinder;
    .restart local v3    # "name":Landroid/content/ComponentName;
    .restart local v4    # "service":Landroid/os/IBinder;
    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2e

    .line 2181
    :cond_2b
    invoke-virtual {p0, v3, v4}, Landroid/app/LoadedApk$ServiceDispatcher;->doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 2183
    :goto_2e
    return-void
.end method

.method public greylist-max-o doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;
    .param p3, "dead"    # Z

    .line 2189
    monitor-enter p0

    .line 2190
    :try_start_1
    iget-boolean v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mForgotten:Z

    if-eqz v0, :cond_7

    .line 2193
    monitor-exit p0

    return-void

    .line 2195
    :cond_7
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 2196
    .local v0, "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    if-eqz v0, :cond_17

    iget-object v1, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-ne v1, p2, :cond_17

    .line 2198
    monitor-exit p0

    return-void

    .line 2201
    :cond_17
    const/4 v1, 0x0

    if-eqz p2, :cond_3c

    .line 2203
    new-instance v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;-><init>(Landroid/app/LoadedApk-IA;)V

    .line 2204
    .local v2, "info":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    iput-object p2, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    .line 2205
    new-instance v3, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;

    invoke-direct {v3, p0, p1, p2}, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    iput-object v3, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_68

    .line 2207
    :try_start_29
    iget-object v3, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2208
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_34
    .catchall {:try_start_29 .. :try_end_33} :catchall_68

    .line 2214
    goto :goto_41

    .line 2209
    :catch_34
    move-exception v1

    .line 2212
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_35
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    monitor-exit p0

    return-void

    .line 2218
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "info":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :cond_3c
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    :goto_41
    if-eqz v0, :cond_4a

    .line 2222
    iget-object v2, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2224
    :cond_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_68

    .line 2227
    if-eqz v0, :cond_52

    .line 2228
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v1, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 2230
    :cond_52
    if-eqz p3, :cond_5a

    .line 2231
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v1, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    goto :goto_67

    .line 2234
    :cond_5a
    if-eqz p2, :cond_62

    .line 2235
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v1, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_67

    .line 2238
    :cond_62
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v1, p1}, Landroid/content/ServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    .line 2241
    :goto_67
    return-void

    .line 2224
    .end local v0    # "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0
.end method

.method public greylist-max-o doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2244
    monitor-enter p0

    .line 2245
    :try_start_1
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 2246
    .local v0, "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    if-eqz v0, :cond_25

    iget-object v1, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-eq v1, p2, :cond_10

    goto :goto_25

    .line 2251
    :cond_10
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    iget-object v1, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2253
    nop

    .end local v0    # "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_27

    .line 2255
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 2256
    return-void

    .line 2249
    .restart local v0    # "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :cond_25
    :goto_25
    :try_start_25
    monitor-exit p0

    return-void

    .line 2253
    .end local v0    # "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v0
.end method

.method greylist-max-o doForget()V
    .registers 6

    .line 2130
    monitor-enter p0

    .line 2131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 2132
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 2133
    .local v1, "ci":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    iget-object v2, v1, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v3, v1, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2131
    nop

    .end local v1    # "ci":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2135
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2136
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mForgotten:Z

    .line 2137
    monitor-exit p0

    .line 2138
    return-void

    .line 2137
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method blacklist getFlags()J
    .registers 3

    .line 2154
    iget-wide v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mFlags:J

    return-wide v0
.end method

.method greylist-max-r getIServiceConnection()Landroid/app/IServiceConnection;
    .registers 2

    .line 2150
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    return-object v0
.end method

.method greylist-max-o getLocation()Landroid/app/ServiceConnectionLeaked;
    .registers 2

    .line 2141
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    return-object v0
.end method

.method greylist-max-o getServiceConnection()Landroid/content/ServiceConnection;
    .registers 2

    .line 2145
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method greylist-max-o getUnbindLocation()Ljava/lang/RuntimeException;
    .registers 2

    .line 2162
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method greylist-max-o setUnbindLocation(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .line 2158
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    .line 2159
    return-void
.end method

.method blacklist validate(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityThread"    # Landroid/os/Handler;
    .param p3, "activityExecutor"    # Ljava/util/concurrent/Executor;

    .line 2109
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    const-string v1, ")"

    const-string v2, " now "

    const-string v3, "ServiceConnection "

    if-ne v0, p1, :cond_75

    .line 2115
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-ne v0, p2, :cond_44

    .line 2121
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    if-ne v0, p3, :cond_13

    .line 2127
    return-void

    .line 2122
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registered with differing executor (was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2116
    :cond_44
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registered with differing handler (was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

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

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2110
    :cond_75
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registered with differing Context (was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

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

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
