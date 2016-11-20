.class Lcom/android/server/backup/BackupManagerService$BackupParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackupParams"
.end annotation


# instance fields
.field public dirName:Ljava/lang/String;

.field public fullPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public kvPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public observer:Landroid/app/backup/IBackupObserver;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field public transport:Lcom/android/internal/backup/IBackupTransport;

.field public userInitiated:Z


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "dirName"    # Ljava/lang/String;
    .param p6, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p7, "userInitiated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/backup/IBackupTransport;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/IBackupObserver;",
            "Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 580
    .local p4, "kvPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "fullPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$BackupParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 582
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$BackupParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    #@7
    .line 583
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$BackupParams;->dirName:Ljava/lang/String;

    #@9
    .line 584
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$BackupParams;->kvPackages:Ljava/util/ArrayList;

    #@b
    .line 585
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$BackupParams;->fullPackages:Ljava/util/ArrayList;

    #@d
    .line 586
    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    #@f
    .line 587
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$BackupParams;->userInitiated:Z

    #@11
    .line 581
    return-void
.end method
