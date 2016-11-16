.class Lcom/android/server/pm/PackageInstallerSession$3;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    #@0
    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 205
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@2
    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-get1(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageManagerService;

    #@5
    move-result-object v4

    #@6
    .line 206
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@8
    iget-object v5, v5, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@a
    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@c
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@e
    iget v6, v6, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@10
    const/16 v7, 0x40

    #@12
    .line 205
    invoke-virtual {v4, v5, v7, v6}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@15
    move-result-object v3

    #@16
    .line 207
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@18
    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-get1(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageManagerService;

    #@1b
    move-result-object v4

    #@1c
    .line 208
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@1e
    iget-object v5, v5, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@20
    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@22
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@24
    iget v6, v6, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@26
    const/4 v7, 0x0

    #@27
    .line 207
    invoke-virtual {v4, v5, v7, v6}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@2a
    move-result-object v0

    #@2b
    .line 210
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@2d
    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-get0(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    monitor-enter v5

    #@32
    .line 211
    :try_start_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@34
    if-eqz v4, :cond_0

    #@36
    .line 212
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@38
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a
    check-cast v4, Landroid/content/pm/IPackageInstallObserver2;

    #@3c
    invoke-static {v6, v4}, Lcom/android/server/pm/PackageInstallerSession;->-set0(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Landroid/content/pm/IPackageInstallObserver2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 216
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@41
    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageInstallerSession;->-wrap0(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    .line 224
    :goto_0
    const/4 v4, 0x1

    #@45
    monitor-exit v5

    #@46
    return v4

    #@47
    .line 217
    :catch_0
    move-exception v2

    #@48
    .line 218
    .local v2, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_2
    invoke-static {v2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    .line 219
    .local v1, "completeMsg":Ljava/lang/String;
    const-string/jumbo v4, "PackageInstaller"

    #@4f
    new-instance v6, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v7, "Commit of session "

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@5d
    iget v7, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@5f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    const-string/jumbo v7, " failed: "

    #@66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 220
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@77
    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-wrap1(Lcom/android/server/pm/PackageInstallerSession;)V

    #@7a
    .line 221
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@7c
    iget v6, v2, Lcom/android/server/pm/PackageManagerException;->error:I

    #@7e
    const/4 v7, 0x0

    #@7f
    invoke-static {v4, v6, v1, v7}, Lcom/android/server/pm/PackageInstallerSession;->-wrap2(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@82
    goto :goto_0

    #@83
    .line 210
    .end local v1    # "completeMsg":Ljava/lang/String;
    .end local v2    # "e":Lcom/android/server/pm/PackageManagerException;
    :catchall_0
    move-exception v4

    #@84
    monitor-exit v5

    #@85
    throw v4
.end method
