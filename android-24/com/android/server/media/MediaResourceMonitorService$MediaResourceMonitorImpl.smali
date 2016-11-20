.class Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;
.super Landroid/media/IMediaResourceMonitor$Stub;
.source "MediaResourceMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaResourceMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaResourceMonitorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaResourceMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaResourceMonitorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaResourceMonitorService;

    #@0
    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    #@2
    invoke-direct {p0}, Landroid/media/IMediaResourceMonitor$Stub;-><init>()V

    #@5
    return-void
.end method

.method private getPackageNamesFromPid(I)[Ljava/lang/String;
    .locals 5
    .param p1, "pid"    # I

    #@0
    .prologue
    .line 78
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v3

    #@4
    invoke-interface {v3}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    #@7
    move-result-object v3

    #@8
    .line 77
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    .local v2, "proc$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    #@18
    .line 79
    .local v1, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    #@1a
    if-ne v3, p1, :cond_0

    #@1c
    .line 80
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    return-object v3

    #@1f
    .line 83
    .end local v1    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "proc$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@20
    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaResourceMonitor"

    #@23
    const-string/jumbo v4, "ActivityManager.getRunningAppProcesses() failed"

    #@26
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 86
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v3, 0x0

    #@2a
    return-object v3
.end method


# virtual methods
.method public notifyResourceGranted(II)V
    .locals 7
    .param p1, "pid"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->-get0()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 57
    const-string/jumbo v4, "MediaResourceMonitor"

    #@9
    new-instance v5, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v6, "notifyResourceGranted(pid="

    #@11
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    const-string/jumbo v6, ", type="

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    const-string/jumbo v6, ")"

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 59
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@35
    move-result-wide v0

    #@36
    .line 61
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 62
    .local v3, "pkgNames":[Ljava/lang/String;
    if-eqz v3, :cond_1

    #@3c
    .line 63
    new-instance v2, Landroid/content/Intent;

    #@3e
    const-string/jumbo v4, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    #@41
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@44
    .line 64
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.PACKAGES"

    #@47
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    #@4a
    .line 65
    const-string/jumbo v4, "android.intent.extra.MEDIA_RESOURCE_TYPE"

    #@4d
    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@50
    .line 66
    iget-object v4, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    #@52
    invoke-virtual {v4}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    #@55
    move-result-object v4

    #@56
    .line 67
    new-instance v5, Landroid/os/UserHandle;

    #@58
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@5b
    move-result v6

    #@5c
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@5f
    .line 68
    const-string/jumbo v6, "android.permission.RECEIVE_MEDIA_RESOURCE_USAGE"

    #@62
    .line 66
    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    .line 71
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@68
    .line 55
    return-void

    #@69
    .line 70
    .end local v3    # "pkgNames":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@6a
    .line 71
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6d
    .line 70
    throw v4
.end method
