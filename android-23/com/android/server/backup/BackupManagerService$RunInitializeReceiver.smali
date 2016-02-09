.class Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunInitializeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    #@0
    .prologue
    .line 1138
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1140
    const-string/jumbo v1, "android.app.backup.intent.INIT"

    #@3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1141
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@f
    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@11
    monitor-enter v2

    #@12
    .line 1142
    :try_start_0
    const-string/jumbo v1, "BackupManagerService"

    #@15
    const-string/jumbo v3, "Running a device init"

    #@18
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1146
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1d
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@1f
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@22
    .line 1148
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@24
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@26
    const/4 v3, 0x5

    #@27
    invoke-virtual {v1, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    #@2a
    move-result-object v0

    #@2b
    .line 1149
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2d
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@2f
    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    monitor-exit v2

    #@33
    .line 1139
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    #@34
    .line 1141
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1
.end method
