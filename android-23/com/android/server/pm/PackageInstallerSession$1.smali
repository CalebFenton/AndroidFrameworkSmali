.class Lcom/android/server/pm/PackageInstallerSession$1;
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
    .line 173
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 176
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@2
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->-get0(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 177
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 178
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f
    check-cast v2, Landroid/content/pm/IPackageInstallObserver2;

    #@11
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageInstallerSession;->-set0(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Landroid/content/pm/IPackageInstallObserver2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 182
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@16
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->-wrap0(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    .line 190
    :goto_0
    const/4 v2, 0x1

    #@1a
    monitor-exit v3

    #@1b
    return v2

    #@1c
    .line 183
    :catch_0
    move-exception v1

    #@1d
    .line 184
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_2
    invoke-static {v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 185
    .local v0, "completeMsg":Ljava/lang/String;
    const-string/jumbo v2, "PackageInstaller"

    #@24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "Commit of session "

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@32
    iget v5, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    const-string/jumbo v5, " failed: "

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 186
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@4c
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->-wrap1(Lcom/android/server/pm/PackageInstallerSession;)V

    #@4f
    .line 187
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@51
    iget v4, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    #@53
    const/4 v5, 0x0

    #@54
    invoke-static {v2, v4, v0, v5}, Lcom/android/server/pm/PackageInstallerSession;->-wrap2(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@57
    goto :goto_0

    #@58
    .line 176
    .end local v0    # "completeMsg":Ljava/lang/String;
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    :catchall_0
    move-exception v2

    #@59
    monitor-exit v3

    #@5a
    throw v2
.end method
