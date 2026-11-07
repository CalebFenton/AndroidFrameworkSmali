.class public abstract Landroid/app/backup/BackupObserver;
.super Ljava/lang/Object;
.source "BackupObserver.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist backupFinished(I)V
    .registers 2
    .param p1, "status"    # I

    .line 58
    return-void
.end method

.method public whitelist onResult(Ljava/lang/String;I)V
    .registers 3
    .param p1, "currentBackupPackage"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 48
    return-void
.end method

.method public whitelist onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .registers 3
    .param p1, "currentBackupPackage"    # Ljava/lang/String;
    .param p2, "backupProgress"    # Landroid/app/backup/BackupProgress;

    .line 37
    return-void
.end method
