.class final Lcom/android/server/am/BackupRecord;
.super Ljava/lang/Object;
.source "BackupRecord.java"


# static fields
.field public static final BACKUP_FULL:I = 0x1

.field public static final BACKUP_NORMAL:I = 0x0

.field public static final RESTORE:I = 0x2

.field public static final RESTORE_FULL:I = 0x3


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field final backupMode:I

.field final stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

.field stringName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/pm/ApplicationInfo;I)V
    .locals 0
    .param p1, "_agentStats"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .param p2, "_appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "_backupMode"    # I

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lcom/android/server/am/BackupRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@5
    .line 42
    iput-object p2, p0, Lcom/android/server/am/BackupRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    .line 43
    iput p3, p0, Lcom/android/server/am/BackupRecord;->backupMode:I

    #@9
    .line 40
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x20

    #@2
    .line 47
    iget-object v1, p0, Lcom/android/server/am/BackupRecord;->stringName:Ljava/lang/String;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 48
    iget-object v1, p0, Lcom/android/server/am/BackupRecord;->stringName:Ljava/lang/String;

    #@8
    return-object v1

    #@9
    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    const/16 v1, 0x80

    #@d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@10
    .line 51
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "BackupRecord{"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 52
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1a
    move-result v2

    #@1b
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 53
    iget-object v2, p0, Lcom/android/server/am/BackupRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@29
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@2b
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 54
    iget-object v2, p0, Lcom/android/server/am/BackupRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@35
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    #@37
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 55
    iget-object v2, p0, Lcom/android/server/am/BackupRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@41
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@43
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    .line 55
    const/16 v2, 0x7d

    #@49
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    iput-object v1, p0, Lcom/android/server/am/BackupRecord;->stringName:Ljava/lang/String;

    #@52
    return-object v1
.end method
