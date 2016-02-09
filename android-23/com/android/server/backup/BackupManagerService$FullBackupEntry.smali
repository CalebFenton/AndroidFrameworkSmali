.class Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/backup/BackupManagerService$FullBackupEntry;",
        ">;"
    }
.end annotation


# instance fields
.field lastBackup:J

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "when"    # J

    #@0
    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 578
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    #@7
    .line 579
    iput-wide p3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    #@9
    .line 577
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/backup/BackupManagerService$FullBackupEntry;)I
    .locals 4
    .param p1, "other"    # Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@0
    .prologue
    .line 584
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    #@2
    iget-wide v2, p1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    const/4 v0, -0x1

    #@9
    return v0

    #@a
    .line 585
    :cond_0
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    #@c
    iget-wide v2, p1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    #@e
    cmp-long v0, v0, v2

    #@10
    if-lez v0, :cond_1

    #@12
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 586
    :cond_1
    const/4 v0, 0x0

    #@15
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 583
    check-cast p1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->compareTo(Lcom/android/server/backup/BackupManagerService$FullBackupEntry;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
