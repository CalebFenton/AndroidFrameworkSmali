.class public Lcom/android/server/webkit/WebViewUpdateService;
.super Lcom/android/server/SystemService;
.source "WebViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/WebViewUpdateService$BinderService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewUpdateService"

.field private static final WAIT_TIMEOUT_MS:I = 0x1388


# instance fields
.field private mRelroReady32Bit:Z

.field private mRelroReady64Bit:Z

.field private mWebViewUpdatedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/webkit/WebViewUpdateService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady32Bit:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/webkit/WebViewUpdateService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady64Bit:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/webkit/WebViewUpdateService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady32Bit:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/webkit/WebViewUpdateService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady64Bit:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/webkit/WebViewUpdateService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateService;->onWebViewUpdateInstalled()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@4
    .line 40
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady32Bit:Z

    #@6
    .line 41
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady64Bit:Z

    #@8
    .line 45
    return-void
.end method

.method private onWebViewUpdateInstalled()V
    .locals 2

    #@0
    .prologue
    .line 69
    const-string/jumbo v0, "WebViewUpdateService"

    #@3
    const-string/jumbo v1, "WebView Package updated!"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 71
    monitor-enter p0

    #@a
    .line 72
    const/4 v0, 0x0

    #@b
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady32Bit:Z

    #@d
    .line 73
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady64Bit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 75
    invoke-static {}, Landroid/webkit/WebViewFactory;->onWebViewUpdateInstalled()V

    #@14
    .line 68
    return-void

    #@15
    .line 71
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method


# virtual methods
.method public onStart()V
    .locals 4

    #@0
    .prologue
    .line 51
    new-instance v1, Lcom/android/server/webkit/WebViewUpdateService$1;

    #@2
    invoke-direct {v1, p0}, Lcom/android/server/webkit/WebViewUpdateService$1;-><init>(Lcom/android/server/webkit/WebViewUpdateService;)V

    #@5
    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService;->mWebViewUpdatedReceiver:Landroid/content/BroadcastReceiver;

    #@7
    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    #@9
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@c
    .line 61
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    #@f
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@12
    .line 62
    const-string/jumbo v1, "package"

    #@15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@18
    .line 63
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateService;->mWebViewUpdatedReceiver:Landroid/content/BroadcastReceiver;

    #@1e
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@21
    .line 65
    const-string/jumbo v1, "webviewupdate"

    #@24
    new-instance v2, Lcom/android/server/webkit/WebViewUpdateService$BinderService;

    #@26
    const/4 v3, 0x0

    #@27
    invoke-direct {v2, p0, v3}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;-><init>(Lcom/android/server/webkit/WebViewUpdateService;Lcom/android/server/webkit/WebViewUpdateService$BinderService;)V

    #@2a
    invoke-virtual {p0, v1, v2}, Lcom/android/server/webkit/WebViewUpdateService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@2d
    .line 50
    return-void
.end method
