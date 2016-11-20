.class Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
.super Landroid/app/backup/IRestoreSession$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveRestoreSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field mEnded:Z

.field private mPackageName:Ljava/lang/String;

.field mRestoreSets:[Landroid/app/backup/RestoreSet;

.field private mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

.field mTimedOut:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method static synthetic -set0(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    #@2
    return-object p1
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 10078
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4
    invoke-direct {p0}, Landroid/app/backup/IRestoreSession$Stub;-><init>()V

    #@7
    .line 10073
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    #@9
    .line 10074
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    #@b
    .line 10075
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    #@d
    .line 10076
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    #@f
    .line 10079
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    #@11
    .line 10080
    invoke-static {p1, p3}, Lcom/android/server/backup/BackupManagerService;->-wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    #@17
    .line 10078
    return-void
.end method


# virtual methods
.method public declared-synchronized endRestoreSession()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 10378
    :try_start_0
    const-string/jumbo v0, "RestoreSession"

    #@4
    const-string/jumbo v1, "endRestoreSession"

    #@7
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 10380
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 10381
    const-string/jumbo v0, "RestoreSession"

    #@11
    const-string/jumbo v1, "Session already timed out"

    #@14
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 10382
    return-void

    #@19
    .line 10385
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 10386
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1f
    const-string/jumbo v1, "Restore session already ended"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    :catchall_0
    move-exception v0

    #@27
    monitor-exit p0

    #@28
    throw v0

    #@29
    .line 10389
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@2d
    new-instance v1, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    #@2f
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@31
    invoke-direct {v1, p0, v2, p0}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    #@34
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    monitor-exit p0

    #@38
    .line 10377
    return-void
.end method

.method public declared-synchronized getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I
    .locals 9
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    monitor-enter p0

    #@2
    .line 10089
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v5, "android.permission.BACKUP"

    #@9
    .line 10090
    const-string/jumbo v6, "getAvailableRestoreSets"

    #@c
    .line 10089
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 10091
    if-nez p1, :cond_0

    #@11
    .line 10092
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v5, "Observer must not be null"

    #@16
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :catchall_0
    move-exception v4

    #@1b
    monitor-exit p0

    #@1c
    throw v4

    #@1d
    .line 10095
    :cond_0
    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 10096
    new-instance v4, Ljava/lang/IllegalStateException;

    #@23
    const-string/jumbo v5, "Restore session already ended"

    #@26
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v4

    #@2a
    .line 10099
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    #@2c
    if-eqz v4, :cond_2

    #@2e
    .line 10100
    const-string/jumbo v4, "RestoreSession"

    #@31
    const-string/jumbo v5, "Session already timed out"

    #@34
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    monitor-exit p0

    #@38
    .line 10101
    return v8

    #@39
    .line 10104
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    move-result-wide v2

    #@3d
    .line 10106
    .local v2, "oldId":J
    :try_start_3
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    #@3f
    if-nez v4, :cond_3

    #@41
    .line 10107
    const-string/jumbo v4, "RestoreSession"

    #@44
    const-string/jumbo v5, "Null transport getting restore sets"

    #@47
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@4a
    .line 10126
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4d
    monitor-exit p0

    #@4e
    .line 10108
    return v8

    #@4f
    .line 10114
    :cond_3
    :try_start_5
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@51
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@53
    const/16 v5, 0x8

    #@55
    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@58
    .line 10117
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@5a
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@5c
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@5f
    .line 10118
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@61
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@63
    .line 10119
    new-instance v5, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;

    #@65
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@67
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    #@69
    invoke-direct {v5, v6, v7, p0, p1}, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;)V

    #@6c
    .line 10118
    const/4 v6, 0x6

    #@6d
    invoke-virtual {v4, v6, v5}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@70
    move-result-object v1

    #@71
    .line 10120
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@73
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@75
    invoke-virtual {v4, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@78
    .line 10126
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@7b
    .line 10121
    const/4 v4, 0x0

    #@7c
    monitor-exit p0

    #@7d
    return v4

    #@7e
    .line 10122
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    #@7f
    .line 10123
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v4, "RestoreSession"

    #@82
    const-string/jumbo v5, "Error in getAvailableRestoreSets"

    #@85
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@88
    .line 10126
    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@8b
    monitor-exit p0

    #@8c
    .line 10124
    return v8

    #@8d
    .line 10125
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    #@8e
    .line 10126
    :try_start_9
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@91
    .line 10125
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public markTimedOut()V
    .locals 1

    #@0
    .prologue
    .line 10084
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    #@3
    .line 10083
    return-void
.end method

.method public declared-synchronized restoreAll(JLandroid/app/backup/IRestoreObserver;)I
    .locals 15
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 10131
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@5
    const-string/jumbo v4, "android.permission.BACKUP"

    #@8
    .line 10132
    const-string/jumbo v5, "performRestore"

    #@b
    .line 10131
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 10134
    const-string/jumbo v3, "RestoreSession"

    #@11
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "restoreAll token="

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    .line 10135
    const-string/jumbo v5, " observer="

    #@28
    .line 10134
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    move-object/from16 v0, p3

    #@2e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 10137
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    #@3b
    if-eqz v3, :cond_0

    #@3d
    .line 10138
    new-instance v3, Ljava/lang/IllegalStateException;

    #@3f
    const-string/jumbo v4, "Restore session already ended"

    #@42
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@45
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    :catchall_0
    move-exception v3

    #@47
    monitor-exit p0

    #@48
    throw v3

    #@49
    .line 10141
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    #@4b
    if-eqz v3, :cond_1

    #@4d
    .line 10142
    const-string/jumbo v3, "RestoreSession"

    #@50
    const-string/jumbo v4, "Session already timed out"

    #@53
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    .line 10143
    const/4 v3, -0x1

    #@57
    monitor-exit p0

    #@58
    return v3

    #@59
    .line 10146
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    #@5b
    if-eqz v3, :cond_2

    #@5d
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    #@5f
    if-nez v3, :cond_3

    #@61
    .line 10147
    :cond_2
    const-string/jumbo v3, "RestoreSession"

    #@64
    const-string/jumbo v4, "Ignoring restoreAll() with no restore set"

    #@67
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6a
    .line 10148
    const/4 v3, -0x1

    #@6b
    monitor-exit p0

    #@6c
    return v3

    #@6d
    .line 10151
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    #@6f
    if-eqz v3, :cond_4

    #@71
    .line 10152
    const-string/jumbo v3, "RestoreSession"

    #@74
    const-string/jumbo v4, "Ignoring restoreAll() on single-package session"

    #@77
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7a
    .line 10153
    const/4 v3, -0x1

    #@7b
    monitor-exit p0

    #@7c
    return v3

    #@7d
    .line 10158
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    #@7f
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@82
    move-result-object v6

    #@83
    .line 10165
    .local v6, "dirName":Ljava/lang/String;
    :try_start_5
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@85
    iget-object v14, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@87
    monitor-enter v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@88
    .line 10166
    const/4 v10, 0x0

    #@89
    .local v10, "i":I
    :goto_0
    :try_start_6
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    #@8b
    array-length v3, v3

    #@8c
    if-ge v10, v3, :cond_6

    #@8e
    .line 10167
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    #@90
    aget-object v3, v3, v10

    #@92
    iget-wide v4, v3, Landroid/app/backup/RestoreSet;->token:J

    #@94
    cmp-long v3, p1, v4

    #@96
    if-nez v3, :cond_5

    #@98
    .line 10169
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@9a
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@9c
    const/16 v4, 0x8

    #@9e
    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@a1
    .line 10171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@a4
    move-result-wide v12

    #@a5
    .line 10172
    .local v12, "oldId":J
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@a7
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@a9
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@ac
    .line 10176
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@ae
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@b0
    const/4 v4, 0x3

    #@b1
    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    #@b4
    move-result-object v11

    #@b5
    .line 10177
    .local v11, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    #@b7
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@b9
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    #@bb
    move-object/from16 v7, p3

    #@bd
    move-wide/from16 v8, p1

    #@bf
    invoke-direct/range {v3 .. v9}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J)V

    #@c2
    iput-object v3, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c4
    .line 10179
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@c6
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@c8
    invoke-virtual {v3, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@cb
    .line 10180
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@ce
    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@cf
    .line 10181
    const/4 v3, 0x0

    #@d0
    monitor-exit p0

    #@d1
    return v3

    #@d2
    .line 10159
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "oldId":J
    :catch_0
    move-exception v2

    #@d3
    .line 10161
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string/jumbo v3, "RestoreSession"

    #@d6
    const-string/jumbo v4, "Unable to contact transport for restore"

    #@d9
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@dc
    .line 10162
    const/4 v3, -0x1

    #@dd
    monitor-exit p0

    #@de
    return v3

    #@df
    .line 10166
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v6    # "dirName":Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    #@e1
    goto :goto_0

    #@e2
    :cond_6
    :try_start_9
    monitor-exit v14

    #@e3
    .line 10186
    const-string/jumbo v3, "RestoreSession"

    #@e6
    new-instance v4, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v5, "Restore token "

    #@ee
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v4

    #@f2
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@f5
    move-result-object v5

    #@f6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v4

    #@fa
    const-string/jumbo v5, " not found"

    #@fd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v4

    #@101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v4

    #@105
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@108
    .line 10187
    const/4 v3, -0x1

    #@109
    monitor-exit p0

    #@10a
    return v3

    #@10b
    .line 10165
    :catchall_1
    move-exception v3

    #@10c
    :try_start_a
    monitor-exit v14

    #@10d
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public declared-synchronized restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IRestoreObserver;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 10273
    :try_start_0
    const-string/jumbo v3, "RestoreSession"

    #@4
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v5, "restorePackage pkg="

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    move-object/from16 v0, p1

    #@12
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    const-string/jumbo v5, " obs="

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    move-object/from16 v0, p2

    #@1f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 10275
    move-object/from16 v0, p0

    #@2c
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    #@2e
    if-eqz v3, :cond_0

    #@30
    .line 10276
    new-instance v3, Ljava/lang/IllegalStateException;

    #@32
    const-string/jumbo v4, "Restore session already ended"

    #@35
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@38
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit p0

    #@3b
    throw v3

    #@3c
    .line 10279
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@3e
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    #@40
    if-eqz v3, :cond_1

    #@42
    .line 10280
    const-string/jumbo v3, "RestoreSession"

    #@45
    const-string/jumbo v4, "Session already timed out"

    #@48
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    .line 10281
    const/4 v3, -0x1

    #@4c
    monitor-exit p0

    #@4d
    return v3

    #@4e
    .line 10284
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    #@50
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    #@52
    if-eqz v3, :cond_2

    #@54
    .line 10285
    move-object/from16 v0, p0

    #@56
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    #@58
    move-object/from16 v0, p1

    #@5a
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v3

    #@5e
    if-nez v3, :cond_2

    #@60
    .line 10286
    const-string/jumbo v3, "RestoreSession"

    #@63
    new-instance v4, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v5, "Ignoring attempt to restore pkg="

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    move-object/from16 v0, p1

    #@71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    .line 10287
    const-string/jumbo v5, " on session for package "

    #@78
    .line 10286
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    .line 10287
    move-object/from16 v0, p0

    #@7e
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    #@80
    .line 10286
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v4

    #@88
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8b
    .line 10288
    const/4 v3, -0x1

    #@8c
    monitor-exit p0

    #@8d
    return v3

    #@8e
    .line 10292
    :cond_2
    const/4 v10, 0x0

    #@8f
    .line 10294
    .local v10, "app":Landroid/content/pm/PackageInfo;
    :try_start_3
    move-object/from16 v0, p0

    #@91
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@93
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@96
    move-result-object v3

    #@97
    const/4 v4, 0x0

    #@98
    move-object/from16 v0, p1

    #@9a
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@9d
    move-result-object v10

    #@9e
    .line 10302
    .local v10, "app":Landroid/content/pm/PackageInfo;
    :try_start_4
    move-object/from16 v0, p0

    #@a0
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@a2
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@a4
    const-string/jumbo v4, "android.permission.BACKUP"

    #@a7
    .line 10303
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@aa
    move-result v5

    #@ab
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@ae
    move-result v7

    #@af
    .line 10302
    invoke-virtual {v3, v4, v5, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@b2
    move-result v13

    #@b3
    .line 10304
    .local v13, "perm":I
    const/4 v3, -0x1

    #@b4
    if-ne v13, v3, :cond_3

    #@b6
    .line 10305
    iget-object v3, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@b8
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    #@ba
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@bd
    move-result v4

    #@be
    if-eq v3, v4, :cond_3

    #@c0
    .line 10306
    const-string/jumbo v3, "RestoreSession"

    #@c3
    new-instance v4, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v5, "restorePackage: bad packageName="

    #@cb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v4

    #@cf
    move-object/from16 v0, p1

    #@d1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v4

    #@d5
    .line 10307
    const-string/jumbo v5, " or calling uid="

    #@d8
    .line 10306
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v4

    #@dc
    .line 10307
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@df
    move-result v5

    #@e0
    .line 10306
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v4

    #@e4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v4

    #@e8
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@eb
    .line 10308
    new-instance v3, Ljava/lang/SecurityException;

    #@ed
    const-string/jumbo v4, "No permission to restore other packages"

    #@f0
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@f3
    throw v3

    #@f4
    .line 10295
    .end local v13    # "perm":I
    .local v10, "app":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v12

    #@f5
    .line 10296
    .local v12, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "RestoreSession"

    #@f8
    new-instance v4, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v5, "Asked to restore nonexistent pkg "

    #@100
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v4

    #@104
    move-object/from16 v0, p1

    #@106
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v4

    #@10a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v4

    #@10e
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@111
    .line 10297
    const/4 v3, -0x1

    #@112
    monitor-exit p0

    #@113
    return v3

    #@114
    .line 10312
    .end local v12    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v10, "app":Landroid/content/pm/PackageInfo;
    .restart local v13    # "perm":I
    :cond_3
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@117
    move-result-wide v14

    #@118
    .line 10316
    .local v14, "oldId":J
    :try_start_6
    move-object/from16 v0, p0

    #@11a
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@11c
    move-object/from16 v0, p1

    #@11e
    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    #@121
    move-result-wide v8

    #@122
    .line 10317
    .local v8, "token":J
    const-string/jumbo v3, "RestoreSession"

    #@125
    new-instance v4, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    const-string/jumbo v5, "restorePackage pkg="

    #@12d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v4

    #@131
    move-object/from16 v0, p1

    #@133
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v4

    #@137
    .line 10318
    const-string/jumbo v5, " token="

    #@13a
    .line 10317
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v4

    #@13e
    .line 10318
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@141
    move-result-object v5

    #@142
    .line 10317
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v4

    #@146
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@149
    move-result-object v4

    #@14a
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@14d
    .line 10323
    const-wide/16 v4, 0x0

    #@14f
    cmp-long v3, v8, v4

    #@151
    if-nez v3, :cond_4

    #@153
    .line 10324
    const-string/jumbo v3, "RestoreSession"

    #@156
    const-string/jumbo v4, "No data available for this package; not restoring"

    #@159
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@15c
    .line 10349
    :try_start_7
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@15f
    .line 10325
    const/4 v3, -0x1

    #@160
    monitor-exit p0

    #@161
    return v3

    #@162
    .line 10330
    :cond_4
    :try_start_8
    move-object/from16 v0, p0

    #@164
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    #@166
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@169
    move-result-object v6

    #@16a
    .line 10338
    .local v6, "dirName":Ljava/lang/String;
    :try_start_9
    move-object/from16 v0, p0

    #@16c
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@16e
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@170
    const/16 v4, 0x8

    #@172
    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@175
    .line 10341
    move-object/from16 v0, p0

    #@177
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@179
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@17b
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@17e
    .line 10345
    move-object/from16 v0, p0

    #@180
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@182
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@184
    const/4 v4, 0x3

    #@185
    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    #@188
    move-result-object v11

    #@189
    .line 10346
    .local v11, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    #@18b
    move-object/from16 v0, p0

    #@18d
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@18f
    move-object/from16 v0, p0

    #@191
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    #@193
    move-object/from16 v7, p2

    #@195
    invoke-direct/range {v3 .. v10}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;)V

    #@198
    iput-object v3, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19a
    .line 10347
    move-object/from16 v0, p0

    #@19c
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@19e
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@1a0
    invoke-virtual {v3, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@1a3
    .line 10349
    :try_start_a
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@1a6
    .line 10351
    const/4 v3, 0x0

    #@1a7
    monitor-exit p0

    #@1a8
    return v3

    #@1a9
    .line 10331
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v11    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v2

    #@1aa
    .line 10333
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_b
    const-string/jumbo v3, "RestoreSession"

    #@1ad
    const-string/jumbo v4, "Unable to contact transport for restore"

    #@1b0
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@1b3
    .line 10349
    :try_start_c
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@1b6
    .line 10334
    const/4 v3, -0x1

    #@1b7
    monitor-exit p0

    #@1b8
    return v3

    #@1b9
    .line 10348
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v8    # "token":J
    :catchall_1
    move-exception v3

    #@1ba
    .line 10349
    :try_start_d
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1bd
    .line 10348
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
.end method

.method public declared-synchronized restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I
    .locals 21
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 10193
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@5
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@7
    const-string/jumbo v4, "android.permission.BACKUP"

    #@a
    .line 10194
    const-string/jumbo v5, "performRestore"

    #@d
    .line 10193
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 10197
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    const/16 v3, 0x80

    #@14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@17
    .line 10198
    .local v2, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "restoreSome token="

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 10199
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 10200
    const-string/jumbo v3, " observer="

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 10201
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 10202
    const-string/jumbo v3, " packages="

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 10203
    if-nez p4, :cond_0

    #@39
    .line 10204
    const-string/jumbo v3, "null"

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 10216
    :goto_0
    const-string/jumbo v3, "RestoreSession"

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 10219
    move-object/from16 v0, p0

    #@4b
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    #@4d
    if-eqz v3, :cond_3

    #@4f
    .line 10220
    new-instance v3, Ljava/lang/IllegalStateException;

    #@51
    const-string/jumbo v4, "Restore session already ended"

    #@54
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@57
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    .end local v2    # "b":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    #@59
    monitor-exit p0

    #@5a
    throw v3

    #@5b
    .line 10206
    .restart local v2    # "b":Ljava/lang/StringBuilder;
    :cond_0
    const/16 v3, 0x7b

    #@5d
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@60
    .line 10207
    const/4 v13, 0x1

    #@61
    .line 10208
    .local v13, "first":Z
    const/4 v3, 0x0

    #@62
    move-object/from16 v0, p4

    #@64
    array-length v4, v0

    #@65
    :goto_1
    if-ge v3, v4, :cond_2

    #@67
    aget-object v18, p4, v3

    #@69
    .line 10209
    .local v18, "s":Ljava/lang/String;
    if-nez v13, :cond_1

    #@6b
    .line 10210
    const-string/jumbo v5, ", "

    #@6e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 10212
    :goto_2
    move-object/from16 v0, v18

    #@73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 10208
    add-int/lit8 v3, v3, 0x1

    #@78
    goto :goto_1

    #@79
    .line 10211
    :cond_1
    const/4 v13, 0x0

    #@7a
    goto :goto_2

    #@7b
    .line 10214
    .end local v18    # "s":Ljava/lang/String;
    :cond_2
    const/16 v3, 0x7d

    #@7d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@80
    goto :goto_0

    #@81
    .line 10223
    .end local v13    # "first":Z
    :cond_3
    move-object/from16 v0, p0

    #@83
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    #@85
    if-eqz v3, :cond_4

    #@87
    .line 10224
    const-string/jumbo v3, "RestoreSession"

    #@8a
    const-string/jumbo v4, "Session already timed out"

    #@8d
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@90
    .line 10225
    const/4 v3, -0x1

    #@91
    monitor-exit p0

    #@92
    return v3

    #@93
    .line 10228
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    #@95
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    #@97
    if-eqz v3, :cond_5

    #@99
    move-object/from16 v0, p0

    #@9b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    #@9d
    if-nez v3, :cond_6

    #@9f
    .line 10229
    :cond_5
    const-string/jumbo v3, "RestoreSession"

    #@a2
    const-string/jumbo v4, "Ignoring restoreAll() with no restore set"

    #@a5
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a8
    .line 10230
    const/4 v3, -0x1

    #@a9
    monitor-exit p0

    #@aa
    return v3

    #@ab
    .line 10233
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    #@ad
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    #@af
    if-eqz v3, :cond_7

    #@b1
    .line 10234
    const-string/jumbo v3, "RestoreSession"

    #@b4
    const-string/jumbo v4, "Ignoring restoreAll() on single-package session"

    #@b7
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ba
    .line 10235
    const/4 v3, -0x1

    #@bb
    monitor-exit p0

    #@bc
    return v3

    #@bd
    .line 10240
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    #@bf
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    #@c1
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c4
    move-result-object v6

    #@c5
    .line 10247
    .local v6, "dirName":Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    #@c7
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@c9
    iget-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@cb
    move-object/from16 v19, v0

    #@cd
    monitor-enter v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@ce
    .line 10248
    const/4 v14, 0x0

    #@cf
    .local v14, "i":I
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    #@d1
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    #@d3
    array-length v3, v3

    #@d4
    if-ge v14, v3, :cond_a

    #@d6
    .line 10249
    move-object/from16 v0, p0

    #@d8
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    #@da
    aget-object v3, v3, v14

    #@dc
    iget-wide v4, v3, Landroid/app/backup/RestoreSet;->token:J

    #@de
    cmp-long v3, p1, v4

    #@e0
    if-nez v3, :cond_9

    #@e2
    .line 10251
    move-object/from16 v0, p0

    #@e4
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@e6
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@e8
    const/16 v4, 0x8

    #@ea
    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@ed
    .line 10253
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f0
    move-result-wide v16

    #@f1
    .line 10254
    .local v16, "oldId":J
    move-object/from16 v0, p0

    #@f3
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@f5
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@f7
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@fa
    .line 10258
    move-object/from16 v0, p0

    #@fc
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@fe
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@100
    const/4 v4, 0x3

    #@101
    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    #@104
    move-result-object v15

    #@105
    .line 10259
    .local v15, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    #@107
    move-object/from16 v0, p0

    #@109
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@10b
    move-object/from16 v0, p0

    #@10d
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    #@10f
    .line 10260
    move-object/from16 v0, p4

    #@111
    array-length v7, v0

    #@112
    const/4 v8, 0x1

    #@113
    if-le v7, v8, :cond_8

    #@115
    const/4 v11, 0x1

    #@116
    :goto_4
    move-object/from16 v7, p3

    #@118
    move-wide/from16 v8, p1

    #@11a
    move-object/from16 v10, p4

    #@11c
    .line 10259
    invoke-direct/range {v3 .. v11}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J[Ljava/lang/String;Z)V

    #@11f
    iput-object v3, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@121
    .line 10261
    move-object/from16 v0, p0

    #@123
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@125
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@127
    invoke-virtual {v3, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@12a
    .line 10262
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@12d
    :try_start_7
    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@12e
    .line 10263
    const/4 v3, 0x0

    #@12f
    monitor-exit p0

    #@130
    return v3

    #@131
    .line 10241
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "msg":Landroid/os/Message;
    .end local v16    # "oldId":J
    :catch_0
    move-exception v12

    #@132
    .line 10243
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string/jumbo v3, "RestoreSession"

    #@135
    const-string/jumbo v4, "Unable to contact transport for restore"

    #@138
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@13b
    .line 10244
    const/4 v3, -0x1

    #@13c
    monitor-exit p0

    #@13d
    return v3

    #@13e
    .line 10260
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v6    # "dirName":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v15    # "msg":Landroid/os/Message;
    .restart local v16    # "oldId":J
    :cond_8
    const/4 v11, 0x0

    #@13f
    goto :goto_4

    #@140
    .line 10248
    .end local v15    # "msg":Landroid/os/Message;
    .end local v16    # "oldId":J
    :cond_9
    add-int/lit8 v14, v14, 0x1

    #@142
    goto :goto_3

    #@143
    :cond_a
    :try_start_9
    monitor-exit v19

    #@144
    .line 10268
    const-string/jumbo v3, "RestoreSession"

    #@147
    new-instance v4, Ljava/lang/StringBuilder;

    #@149
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    const-string/jumbo v5, "Restore token "

    #@14f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v4

    #@153
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@156
    move-result-object v5

    #@157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v4

    #@15b
    const-string/jumbo v5, " not found"

    #@15e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v4

    #@162
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@165
    move-result-object v4

    #@166
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@169
    .line 10269
    const/4 v3, -0x1

    #@16a
    monitor-exit p0

    #@16b
    return v3

    #@16c
    .line 10247
    :catchall_1
    move-exception v3

    #@16d
    :try_start_a
    monitor-exit v19

    #@16e
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method
