.class Lcom/android/server/backup/BackupManagerService$TransportConnection;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransportConnection"
.end annotation


# instance fields
.field mTransport:Landroid/content/pm/ServiceInfo;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/content/pm/ServiceInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transport"    # Landroid/content/pm/ServiceInfo;

    #@0
    .prologue
    .line 1904
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$TransportConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1905
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$TransportConnection;->mTransport:Landroid/content/pm/ServiceInfo;

    #@7
    .line 1904
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/16 v9, 0xb22

    #@2
    const/4 v8, 0x2

    #@3
    const/4 v7, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 1910
    const-string/jumbo v3, "BackupManagerService"

    #@8
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "Connected to transport "

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 1911
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 1913
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/backup/IBackupTransport$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;

    #@26
    move-result-object v2

    #@27
    .line 1914
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$TransportConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@29
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-static {v3, v4, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    #@30
    .line 1915
    const/4 v3, 0x2

    #@31
    new-array v3, v3, [Ljava/lang/Object;

    #@33
    const/4 v4, 0x0

    #@34
    aput-object v1, v3, v4

    #@36
    const/4 v4, 0x1

    #@37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v4

    #@3b
    const/4 v5, 0x1

    #@3c
    aput-object v4, v3, v5

    #@3e
    const/16 v4, 0xb22

    #@40
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 1909
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :goto_0
    return-void

    #@44
    .line 1916
    :catch_0
    move-exception v0

    #@45
    .line 1917
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BackupManagerService"

    #@48
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, "Unable to register transport "

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 1918
    new-array v3, v8, [Ljava/lang/Object;

    #@61
    aput-object v1, v3, v6

    #@63
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v4

    #@67
    aput-object v4, v3, v7

    #@69
    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@6c
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1924
    const-string/jumbo v1, "BackupManagerService"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Disconnected from transport "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 1925
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 1926
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x2

    #@21
    new-array v1, v1, [Ljava/lang/Object;

    #@23
    aput-object v0, v1, v4

    #@25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v2

    #@29
    const/4 v3, 0x1

    #@2a
    aput-object v2, v1, v3

    #@2c
    const/16 v2, 0xb22

    #@2e
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@31
    .line 1927
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$TransportConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@33
    invoke-static {v1, v5, v0, v5}, Lcom/android/server/backup/BackupManagerService;->-wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    #@36
    .line 1923
    return-void
.end method
