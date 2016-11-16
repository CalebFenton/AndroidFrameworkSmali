.class Lcom/android/server/webkit/WebViewUpdateService$BinderService;
.super Landroid/webkit/IWebViewUpdateService$Stub;
.source "WebViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/webkit/WebViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method private constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/webkit/WebViewUpdateService;

    #@0
    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@2
    invoke-direct {p0}, Landroid/webkit/IWebViewUpdateService$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;Lcom/android/server/webkit/WebViewUpdateService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/webkit/WebViewUpdateService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;-><init>(Lcom/android/server/webkit/WebViewUpdateService;)V

    #@3
    return-void
.end method


# virtual methods
.method public changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "newProvider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@2
    invoke-virtual {v3}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v3

    #@6
    .line 195
    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    #@9
    .line 194
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Permission Denial: changeProviderAndSetting() from pid="

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    .line 198
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v4

    #@1f
    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 199
    const-string/jumbo v4, ", uid="

    #@26
    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 199
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v4

    #@2e
    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 200
    const-string/jumbo v4, " requires "

    #@35
    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    .line 200
    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    #@3c
    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 201
    .local v2, "msg":Ljava/lang/String;
    const-string/jumbo v3, "WebViewUpdateService"

    #@47
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 202
    new-instance v3, Ljava/lang/SecurityException;

    #@4c
    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v3

    #@50
    .line 205
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@53
    move-result-wide v0

    #@54
    .line 207
    .local v0, "callingId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@56
    invoke-static {v3}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    move-result-object v3

    #@5e
    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@61
    .line 207
    return-object v3

    #@62
    .line 209
    :catchall_0
    move-exception v3

    #@63
    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@66
    .line 209
    throw v3
.end method

.method public enableFallbackLogic(Z)V
    .locals 5
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 236
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@2
    invoke-virtual {v3}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v3

    #@6
    .line 237
    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    #@9
    .line 236
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Permission Denial: enableFallbackLogic() from pid="

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    .line 240
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v4

    #@1f
    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 241
    const-string/jumbo v4, ", uid="

    #@26
    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 241
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v4

    #@2e
    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 242
    const-string/jumbo v4, " requires "

    #@35
    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    .line 242
    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    #@3c
    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 243
    .local v2, "msg":Ljava/lang/String;
    const-string/jumbo v3, "WebViewUpdateService"

    #@47
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 244
    new-instance v3, Ljava/lang/SecurityException;

    #@4c
    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v3

    #@50
    .line 247
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@53
    move-result-wide v0

    #@54
    .line 249
    .local v0, "callingId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@56
    invoke-static {v3}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->enableFallbackLogic(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    .line 251
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@60
    .line 235
    return-void

    #@61
    .line 250
    :catchall_0
    move-exception v3

    #@62
    .line 251
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@65
    .line 250
    throw v3
.end method

.method public getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@2
    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@2
    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getCurrentWebViewPackageName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@2
    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public isFallbackPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@2
    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isFallbackPackage(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public notifyRelroCreationCompleted()V
    .locals 4

    #@0
    .prologue
    .line 159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    const/16 v3, 0x40d

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 160
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v2

    #@c
    const/16 v3, 0x3e8

    #@e
    if-eq v2, v3, :cond_0

    #@10
    .line 161
    return-void

    #@11
    .line 164
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 166
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@17
    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->notifyRelroCreationCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 168
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 155
    return-void

    #@22
    .line 167
    :catchall_0
    move-exception v2

    #@23
    .line 168
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 167
    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 144
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;-><init>(Landroid/webkit/IWebViewUpdateService;)V

    #@5
    move-object v1, p0

    #@6
    move-object v2, p1

    #@7
    move-object v3, p2

    #@8
    move-object v4, p3

    #@9
    move-object v5, p4

    #@a
    move-object v6, p5

    #@b
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    #@e
    .line 143
    return-void
.end method

.method public waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 2

    #@0
    .prologue
    .line 182
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v1, "Cannot create a WebView from the SystemServer"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@15
    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method
