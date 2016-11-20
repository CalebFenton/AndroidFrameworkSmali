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
    .line 53
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
    .line 87
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v3

    #@4
    invoke-interface {v3}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    #@7
    move-result-object v3

    #@8
    .line 86
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
    .line 88
    .local v1, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    #@1a
    if-ne v3, p1, :cond_0

    #@1c
    .line 89
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    return-object v3

    #@1f
    .line 92
    .end local v1    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "proc$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@20
    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaResourceMonitor"

    #@23
    const-string/jumbo v4, "ActivityManager.getRunningAppProcesses() failed"

    #@26
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 95
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v3, 0x0

    #@2a
    return-object v3
.end method


# virtual methods
.method public notifyResourceGranted(II)V
    .locals 12
    .param p1, "pid"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 57
    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->-get0()Z

    #@4
    move-result v8

    #@5
    if-eqz v8, :cond_0

    #@7
    .line 58
    const-string/jumbo v8, "MediaResourceMonitor"

    #@a
    new-instance v9, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v10, "notifyResourceGranted(pid="

    #@12
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v9

    #@16
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v9

    #@1a
    const-string/jumbo v10, ", type="

    #@1d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v9

    #@21
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v9

    #@25
    const-string/jumbo v10, ")"

    #@28
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v9

    #@2c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v9

    #@30
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 60
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@36
    move-result-wide v0

    #@37
    .line 62
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    move-result-object v4

    #@3b
    .line 63
    .local v4, "pkgNames":[Ljava/lang/String;
    if-nez v4, :cond_1

    #@3d
    .line 80
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 64
    return-void

    #@41
    .line 66
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    #@43
    invoke-virtual {v8}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    #@46
    move-result-object v8

    #@47
    .line 67
    const-string/jumbo v9, "user"

    #@4a
    .line 66
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@4d
    move-result-object v3

    #@4e
    check-cast v3, Landroid/os/UserManager;

    #@50
    .line 68
    .local v3, "manager":Landroid/os/UserManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@53
    move-result v8

    #@54
    invoke-virtual {v3, v8}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    #@57
    move-result-object v6

    #@58
    .line 69
    .local v6, "userIds":[I
    if-eqz v6, :cond_2

    #@5a
    array-length v8, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    if-nez v8, :cond_3

    #@5d
    .line 80
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@60
    .line 70
    return-void

    #@61
    .line 72
    :cond_3
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    #@63
    const-string/jumbo v8, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    #@66
    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@69
    .line 73
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "android.intent.extra.PACKAGES"

    #@6c
    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    #@6f
    .line 74
    const-string/jumbo v8, "android.intent.extra.MEDIA_RESOURCE_TYPE"

    #@72
    invoke-virtual {v2, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@75
    .line 75
    array-length v8, v6

    #@76
    :goto_0
    if-ge v7, v8, :cond_4

    #@78
    aget v5, v6, v7

    #@7a
    .line 76
    .local v5, "userId":I
    iget-object v9, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    #@7c
    invoke-virtual {v9}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    #@7f
    move-result-object v9

    #@80
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@83
    move-result-object v10

    #@84
    .line 77
    const-string/jumbo v11, "android.permission.RECEIVE_MEDIA_RESOURCE_USAGE"

    #@87
    .line 76
    invoke-virtual {v9, v2, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8a
    .line 75
    add-int/lit8 v7, v7, 0x1

    #@8c
    goto :goto_0

    #@8d
    .line 80
    .end local v5    # "userId":I
    :cond_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@90
    .line 56
    return-void

    #@91
    .line 79
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "manager":Landroid/os/UserManager;
    .end local v4    # "pkgNames":[Ljava/lang/String;
    .end local v6    # "userIds":[I
    :catchall_0
    move-exception v7

    #@92
    .line 80
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@95
    .line 79
    throw v7
.end method
