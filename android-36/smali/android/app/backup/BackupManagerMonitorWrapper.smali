.class public Landroid/app/backup/BackupManagerMonitorWrapper;
.super Landroid/app/backup/IBackupManagerMonitor$Stub;
.source "BackupManagerMonitorWrapper.java"


# instance fields
.field private final blacklist mMonitor:Landroid/app/backup/BackupManagerMonitor;


# direct methods
.method public constructor blacklist <init>(Landroid/app/backup/BackupManagerMonitor;)V
    .registers 2
    .param p1, "monitor"    # Landroid/app/backup/BackupManagerMonitor;

    .line 40
    invoke-direct {p0}, Landroid/app/backup/IBackupManagerMonitor$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/app/backup/BackupManagerMonitorWrapper;->mMonitor:Landroid/app/backup/BackupManagerMonitor;

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist onEvent(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "event"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Landroid/app/backup/BackupManagerMonitorWrapper;->mMonitor:Landroid/app/backup/BackupManagerMonitor;

    if-nez v0, :cond_5

    .line 48
    return-void

    .line 50
    :cond_5
    iget-object v0, p0, Landroid/app/backup/BackupManagerMonitorWrapper;->mMonitor:Landroid/app/backup/BackupManagerMonitor;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupManagerMonitor;->onEvent(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method
