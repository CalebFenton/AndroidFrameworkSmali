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
        Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;,
        Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;,
        Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;,
        Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;
    }
.end annotation


# instance fields
.field private final mActiveConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Landroid/os/Handler;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mDied:Z

.field private final mFlags:I

.field private mForgotten:Z

.field private final mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

.field private final mLocation:Landroid/app/ServiceConnectionLeaked;

.field private mUnbindLocation:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activityThread"    # Landroid/os/Handler;
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1083
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 1082
    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    #@a
    .line 1087
    new-instance v0, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    #@c
    invoke-direct {v0, p0}, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;)V

    #@f
    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    #@11
    .line 1088
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    #@13
    .line 1089
    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    #@15
    .line 1090
    iput-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    #@17
    .line 1091
    new-instance v0, Landroid/app/ServiceConnectionLeaked;

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-direct {v0, v1}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    #@1d
    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    #@1f
    .line 1092
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    #@21
    invoke-virtual {v0}, Landroid/app/ServiceConnectionLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    #@24
    .line 1093
    iput p4, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mFlags:I

    #@26
    .line 1086
    return-void
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1147
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1148
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    #@6
    new-instance v1, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-direct {v1, p0, p1, p2, v2}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@f
    .line 1146
    :goto_0
    return-void

    #@10
    .line 1150
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/LoadedApk$ServiceDispatcher;->doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    #@13
    goto :goto_0
.end method

.method public death(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1157
    monitor-enter p0

    #@2
    .line 1158
    const/4 v1, 0x1

    #@3
    :try_start_0
    iput-boolean v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mDied:Z

    #@5
    .line 1159
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    #@d
    .line 1160
    .local v0, "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    if-eqz v0, :cond_0

    #@f
    iget-object v1, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    if-eq v1, p2, :cond_1

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 1163
    return-void

    #@15
    .line 1165
    :cond_1
    :try_start_1
    iget-object v1, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    #@17
    iget-object v2, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit p0

    #@1e
    .line 1168
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 1169
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    #@24
    new-instance v2, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    #@26
    invoke-direct {v2, p0, p1, p2, v4}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    #@29
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2c
    .line 1154
    :goto_0
    return-void

    #@2d
    .line 1157
    .end local v0    # "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit p0

    #@2f
    throw v1

    #@30
    .line 1171
    .restart local v0    # "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/app/LoadedApk$ServiceDispatcher;->doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    #@33
    goto :goto_0
.end method

.method public doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1179
    monitor-enter p0

    #@1
    .line 1180
    :try_start_0
    iget-boolean v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mForgotten:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v3, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 1183
    return-void

    #@7
    .line 1185
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    #@f
    .line 1186
    .local v2, "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    if-eqz v2, :cond_1

    #@11
    iget-object v3, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    if-ne v3, p2, :cond_1

    #@15
    monitor-exit p0

    #@16
    .line 1188
    return-void

    #@17
    .line 1191
    :cond_1
    if-eqz p2, :cond_5

    #@19
    .line 1193
    const/4 v3, 0x0

    #@1a
    :try_start_2
    iput-boolean v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mDied:Z

    #@1c
    .line 1194
    new-instance v1, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    #@1e
    const/4 v3, 0x0

    #@1f
    invoke-direct {v1, v3}, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;-><init>(Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;)V

    #@22
    .line 1195
    .local v1, "info":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    iput-object p2, v1, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    #@24
    .line 1196
    new-instance v3, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;

    #@26
    invoke-direct {v3, p0, p1, p2}, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    #@29
    iput-object v3, v1, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    .line 1198
    :try_start_3
    iget-object v3, v1, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-interface {p2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@31
    .line 1199
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    #@33
    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@36
    .line 1212
    .end local v1    # "info":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :goto_0
    if-eqz v2, :cond_2

    #@38
    .line 1213
    :try_start_4
    iget-object v3, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    #@3a
    iget-object v4, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    #@3c
    const/4 v5, 0x0

    #@3d
    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@40
    :cond_2
    monitor-exit p0

    #@41
    .line 1218
    if-eqz v2, :cond_3

    #@43
    .line 1219
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    #@45
    invoke-interface {v3, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    #@48
    .line 1222
    :cond_3
    if-eqz p2, :cond_4

    #@4a
    .line 1223
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    #@4c
    invoke-interface {v3, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    #@4f
    .line 1175
    :cond_4
    return-void

    #@50
    .line 1200
    .restart local v1    # "info":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :catch_0
    move-exception v0

    #@51
    .line 1203
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    #@53
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@56
    monitor-exit p0

    #@57
    .line 1204
    return-void

    #@58
    .line 1209
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "info":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :cond_5
    :try_start_6
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    #@5a
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@5d
    goto :goto_0

    #@5e
    .line 1179
    .end local v2    # "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :catchall_0
    move-exception v3

    #@5f
    monitor-exit p0

    #@60
    throw v3
.end method

.method public doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1228
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    #@2
    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    #@5
    .line 1227
    return-void
.end method

.method doForget()V
    .locals 5

    #@0
    .prologue
    .line 1112
    monitor-enter p0

    #@1
    .line 1113
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@7
    move-result v2

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 1114
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    #@12
    .line 1115
    .local v0, "ci":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    iget-object v2, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    #@14
    iget-object v3, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    #@16
    const/4 v4, 0x0

    #@17
    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@1a
    .line 1113
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1117
    .end local v0    # "ci":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :cond_0
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    #@22
    .line 1118
    const/4 v2, 0x1

    #@23
    iput-boolean v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mForgotten:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit p0

    #@26
    .line 1111
    return-void

    #@27
    .line 1112
    :catchall_0
    move-exception v2

    #@28
    monitor-exit p0

    #@29
    throw v2
.end method

.method getFlags()I
    .locals 1

    #@0
    .prologue
    .line 1135
    iget v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mFlags:I

    #@2
    return v0
.end method

.method getIServiceConnection()Landroid/app/IServiceConnection;
    .locals 1

    #@0
    .prologue
    .line 1131
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    #@2
    return-object v0
.end method

.method getLocation()Landroid/app/ServiceConnectionLeaked;
    .locals 1

    #@0
    .prologue
    .line 1123
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    #@2
    return-object v0
.end method

.method getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    #@0
    .prologue
    .line 1127
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    #@2
    return-object v0
.end method

.method getUnbindLocation()Ljava/lang/RuntimeException;
    .locals 1

    #@0
    .prologue
    .line 1143
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    #@2
    return-object v0
.end method

.method setUnbindLocation(Ljava/lang/RuntimeException;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    #@0
    .prologue
    .line 1139
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    #@2
    .line 1138
    return-void
.end method

.method validate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityThread"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1097
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1098
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    .line 1099
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "ServiceConnection "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 1100
    const-string/jumbo v2, " registered with differing Context (was "

    #@1b
    .line 1099
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 1101
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    #@21
    .line 1099
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 1101
    const-string/jumbo v2, " now "

    #@28
    .line 1099
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 1101
    const-string/jumbo v2, ")"

    #@33
    .line 1099
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 1098
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 1103
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    #@41
    if-eq v0, p2, :cond_1

    #@43
    .line 1104
    new-instance v0, Ljava/lang/RuntimeException;

    #@45
    .line 1105
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v2, "ServiceConnection "

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    .line 1106
    const-string/jumbo v2, " registered with differing handler (was "

    #@5a
    .line 1105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    .line 1107
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    #@60
    .line 1105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    .line 1107
    const-string/jumbo v2, " now "

    #@67
    .line 1105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 1107
    const-string/jumbo v2, ")"

    #@72
    .line 1105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    .line 1104
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v0

    #@7e
    .line 1096
    :cond_1
    return-void
.end method
