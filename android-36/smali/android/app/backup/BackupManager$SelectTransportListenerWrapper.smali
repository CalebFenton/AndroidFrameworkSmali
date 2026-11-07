.class Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;
.super Landroid/app/backup/ISelectBackupTransportCallback$Stub;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectTransportListenerWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mListener:Landroid/app/backup/SelectBackupTransportCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;)Landroid/app/backup/SelectBackupTransportCallback;
    .registers 1

    iget-object p0, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->mListener:Landroid/app/backup/SelectBackupTransportCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/SelectBackupTransportCallback;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/app/backup/SelectBackupTransportCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1179
    invoke-direct {p0}, Landroid/app/backup/ISelectBackupTransportCallback$Stub;-><init>()V

    .line 1180
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->mHandler:Landroid/os/Handler;

    .line 1181
    iput-object p3, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->mListener:Landroid/app/backup/SelectBackupTransportCallback;

    .line 1182
    return-void
.end method


# virtual methods
.method public greylist-max-o onFailure(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 1196
    iget-object v0, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$2;

    invoke-direct {v1, p0, p1}, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$2;-><init>(Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1202
    return-void
.end method

.method public greylist-max-o onSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;

    .line 1186
    iget-object v0, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;

    invoke-direct {v1, p0, p1}, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;-><init>(Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1192
    return-void
.end method
