.class Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunBackupReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    #@0
    .prologue
    .line 1097
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1099
    const-string/jumbo v2, "android.app.backup.intent.RUN"

    #@3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1100
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@f
    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@11
    monitor-enter v3

    #@12
    .line 1101
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@14
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@16
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v2

    #@1a
    if-lez v2, :cond_1

    #@1c
    .line 1106
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1e
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->-get1(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;

    #@21
    move-result-object v2

    #@22
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@24
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    #@26
    invoke-virtual {v2, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@29
    .line 1107
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2b
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    #@2d
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    :goto_0
    monitor-exit v3

    #@31
    .line 1098
    :cond_0
    return-void

    #@32
    .line 1108
    :catch_0
    move-exception v0

    #@33
    .line 1109
    .local v0, "ce":Landroid/app/PendingIntent$CanceledException;
    :try_start_2
    const-string/jumbo v2, "BackupManagerService"

    #@36
    const-string/jumbo v4, "Run init intent cancelled"

    #@39
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 1100
    .end local v0    # "ce":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v2

    #@3e
    monitor-exit v3

    #@3f
    throw v2

    #@40
    .line 1115
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@42
    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@44
    if-eqz v2, :cond_3

    #@46
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@48
    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@4a
    if-eqz v2, :cond_3

    #@4c
    .line 1116
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4e
    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    #@50
    if-nez v2, :cond_2

    #@52
    .line 1117
    const-string/jumbo v2, "BackupManagerService"

    #@55
    const-string/jumbo v4, "Running a backup pass"

    #@58
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 1121
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@5d
    const/4 v4, 0x1

    #@5e
    iput-boolean v4, v2, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    #@60
    .line 1122
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@62
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@64
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@67
    .line 1124
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@69
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@6b
    const/4 v4, 0x1

    #@6c
    invoke-virtual {v2, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    #@6f
    move-result-object v1

    #@70
    .line 1125
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@72
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@74
    invoke-virtual {v2, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@77
    goto :goto_0

    #@78
    .line 1127
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    const-string/jumbo v2, "BackupManagerService"

    #@7b
    const-string/jumbo v4, "Backup time but one already running"

    #@7e
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    goto :goto_0

    #@82
    .line 1130
    :cond_3
    const-string/jumbo v2, "BackupManagerService"

    #@85
    new-instance v4, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v5, "Backup pass but e="

    #@8d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@93
    iget-boolean v5, v5, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@98
    move-result-object v4

    #@99
    const-string/jumbo v5, " p="

    #@9c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@a2
    iget-boolean v5, v5, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@a4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v4

    #@ac
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@af
    goto :goto_0
.end method
