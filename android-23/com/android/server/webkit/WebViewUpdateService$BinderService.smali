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
    .line 78
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
.method public notifyRelroCreationCompleted(ZZ)V
    .locals 3
    .param p1, "is64Bit"    # Z
    .param p2, "success"    # Z

    #@0
    .prologue
    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x40d

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v0

    #@c
    const/16 v1, 0x3e8

    #@e
    if-eq v0, v1, :cond_0

    #@10
    .line 92
    return-void

    #@11
    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@13
    monitor-enter v1

    #@14
    .line 96
    if-eqz p1, :cond_1

    #@16
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@18
    const/4 v2, 0x1

    #@19
    invoke-static {v0, v2}, Lcom/android/server/webkit/WebViewUpdateService;->-set1(Lcom/android/server/webkit/WebViewUpdateService;Z)Z

    #@1c
    .line 101
    :goto_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@1e
    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateService;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v1

    #@22
    .line 86
    return-void

    #@23
    .line 99
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@25
    const/4 v2, 0x1

    #@26
    invoke-static {v0, v2}, Lcom/android/server/webkit/WebViewUpdateService;->-set0(Lcom/android/server/webkit/WebViewUpdateService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 95
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v1

    #@2c
    throw v0
.end method

.method public waitForRelroCreationCompleted(Z)V
    .locals 14
    .param p1, "is64Bit"    # Z

    #@0
    .prologue
    const-wide/32 v10, 0xf4240

    #@3
    .line 114
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6
    move-result v8

    #@7
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@a
    move-result v9

    #@b
    if-ne v8, v9, :cond_0

    #@d
    .line 115
    new-instance v8, Ljava/lang/IllegalStateException;

    #@f
    const-string/jumbo v9, "Cannot create a WebView from the SystemServer"

    #@12
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v8

    #@16
    .line 118
    :cond_0
    const-wide/32 v0, 0xf4240

    #@19
    .line 119
    .local v0, "NS_PER_MS":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@1c
    move-result-wide v8

    #@1d
    div-long/2addr v8, v10

    #@1e
    const-wide/16 v10, 0x1388

    #@20
    add-long v6, v8, v10

    #@22
    .line 120
    .local v6, "timeoutTimeMs":J
    if-eqz p1, :cond_3

    #@24
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@26
    invoke-static {v8}, Lcom/android/server/webkit/WebViewUpdateService;->-get1(Lcom/android/server/webkit/WebViewUpdateService;)Z

    #@29
    move-result v3

    #@2a
    .line 121
    .local v3, "relroReady":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@2c
    monitor-enter v9

    #@2d
    .line 122
    :goto_1
    if-nez v3, :cond_1

    #@2f
    .line 123
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@32
    move-result-wide v10

    #@33
    const-wide/32 v12, 0xf4240

    #@36
    div-long v4, v10, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 124
    .local v4, "timeNowMs":J
    cmp-long v8, v4, v6

    #@3a
    if-ltz v8, :cond_4

    #@3c
    .end local v4    # "timeNowMs":J
    :cond_1
    monitor-exit v9

    #@3d
    .line 131
    if-nez v3, :cond_2

    #@3f
    const-string/jumbo v8, "WebViewUpdateService"

    #@42
    const-string/jumbo v9, "creating relro file timed out"

    #@45
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 109
    :cond_2
    return-void

    #@49
    .line 120
    .end local v3    # "relroReady":Z
    :cond_3
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@4b
    invoke-static {v8}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Z

    #@4e
    move-result v3

    #@4f
    .restart local v3    # "relroReady":Z
    goto :goto_0

    #@50
    .line 126
    .restart local v4    # "timeNowMs":J
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@52
    sub-long v10, v6, v4

    #@54
    invoke-virtual {v8, v10, v11}, Lcom/android/server/webkit/WebViewUpdateService;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 128
    :goto_2
    if-eqz p1, :cond_5

    #@59
    :try_start_2
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@5b
    invoke-static {v8}, Lcom/android/server/webkit/WebViewUpdateService;->-get1(Lcom/android/server/webkit/WebViewUpdateService;)Z

    #@5e
    move-result v3

    #@5f
    goto :goto_1

    #@60
    :cond_5
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@62
    invoke-static {v8}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    move-result v3

    #@66
    goto :goto_1

    #@67
    .line 121
    .end local v4    # "timeNowMs":J
    :catchall_0
    move-exception v8

    #@68
    monitor-exit v9

    #@69
    throw v8

    #@6a
    .line 127
    .restart local v4    # "timeNowMs":J
    :catch_0
    move-exception v2

    #@6b
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_2
.end method
