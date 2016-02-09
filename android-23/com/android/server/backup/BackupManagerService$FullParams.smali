.class Lcom/android/server/backup/BackupManagerService$FullParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullParams"
.end annotation


# instance fields
.field public curPassword:Ljava/lang/String;

.field public encryptPassword:Ljava/lang/String;

.field public fd:Landroid/os/ParcelFileDescriptor;

.field public final latch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public observer:Landroid/app/backup/IFullBackupRestoreObserver;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    #@0
    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 474
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@b
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    .line 473
    return-void
.end method
