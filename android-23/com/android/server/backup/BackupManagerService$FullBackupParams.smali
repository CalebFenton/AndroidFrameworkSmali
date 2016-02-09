.class Lcom/android/server/backup/BackupManagerService$FullBackupParams;
.super Lcom/android/server/backup/BackupManagerService$FullParams;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupParams"
.end annotation


# instance fields
.field public allApps:Z

.field public doCompress:Z

.field public doWidgets:Z

.field public includeApks:Z

.field public includeObbs:Z

.field public includeShared:Z

.field public includeSystem:Z

.field public packages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "saveApks"    # Z
    .param p4, "saveObbs"    # Z
    .param p5, "saveShared"    # Z
    .param p6, "alsoWidgets"    # Z
    .param p7, "doAllApps"    # Z
    .param p8, "doSystem"    # Z
    .param p9, "compress"    # Z
    .param p10, "pkgList"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$FullParams;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@5
    .line 491
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    #@7
    .line 492
    iput-boolean p3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeApks:Z

    #@9
    .line 493
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeObbs:Z

    #@b
    .line 494
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeShared:Z

    #@d
    .line 495
    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doWidgets:Z

    #@f
    .line 496
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->allApps:Z

    #@11
    .line 497
    iput-boolean p8, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeSystem:Z

    #@13
    .line 498
    iput-boolean p9, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doCompress:Z

    #@15
    .line 499
    iput-object p10, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->packages:[Ljava/lang/String;

    #@17
    .line 490
    return-void
.end method
