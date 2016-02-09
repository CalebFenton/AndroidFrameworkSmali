.class Lcom/android/server/backup/BackupManagerService$RestoreParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreParams"
.end annotation


# instance fields
.field public dirName:Ljava/lang/String;

.field public filterSet:[Ljava/lang/String;

.field public isSystemRestore:Z

.field public observer:Landroid/app/backup/IRestoreObserver;

.field public pkgInfo:Landroid/content/pm/PackageInfo;

.field public pmToken:I

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field public token:J

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 419
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 421
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@8
    .line 422
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    #@a
    .line 423
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@c
    .line 424
    iput-wide p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    #@e
    .line 425
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    #@10
    .line 426
    const/4 v0, 0x0

    #@11
    iput v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    #@13
    .line 427
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    #@16
    .line 428
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    #@18
    .line 420
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_pkg"    # Landroid/content/pm/PackageInfo;
    .param p8, "_pmToken"    # I

    #@0
    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 407
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@7
    .line 408
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    #@9
    .line 409
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@b
    .line 410
    iput-wide p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    #@d
    .line 411
    iput-object p7, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    #@f
    .line 412
    iput p8, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    #@11
    .line 413
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    #@14
    .line 414
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    #@17
    .line 406
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_filterSet"    # [Ljava/lang/String;
    .param p8, "_isSystemRestore"    # Z

    #@0
    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 435
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@7
    .line 436
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    #@9
    .line 437
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@b
    .line 438
    iput-wide p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    #@d
    .line 439
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    #@10
    .line 440
    const/4 v0, 0x0

    #@11
    iput v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    #@13
    .line 441
    iput-boolean p8, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    #@15
    .line 442
    iput-object p7, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    #@17
    .line 434
    return-void
.end method
