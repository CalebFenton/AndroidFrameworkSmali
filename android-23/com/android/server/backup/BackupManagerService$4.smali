.class Lcom/android/server/backup/BackupManagerService$4;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/BackupManagerService;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field final synthetic val$deferTime:J


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "val$deferTime"    # J

    #@0
    .prologue
    .line 4504
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$4;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    iput-wide p2, p0, Lcom/android/server/backup/BackupManagerService$4;->val$deferTime:J

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 4506
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$4;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@4
    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService$4;->val$deferTime:J

    #@6
    invoke-static {v0, v2, v3}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;J)V

    #@9
    .line 4505
    return-void
.end method
