.class Lcom/android/server/backup/BackupManagerService$ClearDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    #@0
    .prologue
    .line 2274
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    #@0
    .prologue
    .line 2276
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 2277
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@7
    const/4 v2, 0x0

    #@8
    iput-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z

    #@a
    .line 2278
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    #@e
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 2275
    return-void

    #@13
    .line 2276
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method
