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
    .line 480
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 482
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@8
    .line 483
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    #@a
    .line 484
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@c
    .line 485
    iput-wide p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    #@e
    .line 486
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    #@10
    .line 487
    const/4 v0, 0x0

    #@11
    iput v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    #@13
    .line 488
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    #@16
    .line 489
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    #@18
    .line 481
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_pkg"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 449
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 451
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@8
    .line 452
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    #@a
    .line 453
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@c
    .line 454
    iput-wide p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    #@e
    .line 455
    iput-object p7, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    #@10
    .line 456
    iput v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    #@12
    .line 457
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    #@14
    .line 458
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    #@17
    .line 450
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLjava/lang/String;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_pkgName"    # Ljava/lang/String;
    .param p8, "_pmToken"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 464
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 466
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@8
    .line 467
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    #@a
    .line 468
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@c
    .line 469
    iput-wide p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    #@e
    .line 470
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    #@11
    .line 471
    iput p8, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    #@13
    .line 472
    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    #@15
    .line 473
    const/4 v0, 0x1

    #@16
    new-array v0, v0, [Ljava/lang/String;

    #@18
    aput-object p7, v0, v1

    #@1a
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    #@1c
    .line 465
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
    .line 496
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 498
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@7
    .line 499
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    #@9
    .line 500
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    #@b
    .line 501
    iput-wide p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    #@d
    .line 502
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    #@10
    .line 503
    const/4 v0, 0x0

    #@11
    iput v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    #@13
    .line 504
    iput-boolean p8, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    #@15
    .line 505
    iput-object p7, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    #@17
    .line 497
    return-void
.end method
