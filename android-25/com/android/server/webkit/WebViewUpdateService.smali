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
.field static final PACKAGE_ADDED:I = 0x1

.field static final PACKAGE_ADDED_REPLACED:I = 0x2

.field static final PACKAGE_CHANGED:I = 0x0

.field static final PACKAGE_REMOVED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WebViewUpdateService"


# instance fields
.field private mImpl:Lcom/android/server/webkit/WebViewUpdateServiceImpl;

.field private mWebViewUpdatedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->packageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 58
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@5
    invoke-static {}, Lcom/android/server/webkit/SystemImpl;->getInstance()Lcom/android/server/webkit/SystemImpl;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, p1, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V

    #@c
    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@e
    .line 56
    return-void
.end method

.method public static entirePackageChanged(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 134
    const-string/jumbo v1, "android.intent.extra.changed_component_name_list"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 135
    .local v0, "componentList":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@a
    move-result-object v1

    #@b
    .line 136
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    const-string/jumbo v3, "package:"

    #@12
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@15
    move-result v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 135
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    return v1
.end method

.method private static packageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "package:"

    #@7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 12

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 63
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateService$1;

    #@4
    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateService$1;-><init>(Lcom/android/server/webkit/WebViewUpdateService;)V

    #@7
    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mWebViewUpdatedReceiver:Landroid/content/BroadcastReceiver;

    #@9
    .line 98
    new-instance v3, Landroid/content/IntentFilter;

    #@b
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@e
    .line 99
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    #@11
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@14
    .line 100
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@17
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1a
    .line 101
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    #@1d
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@20
    .line 102
    const-string/jumbo v0, "package"

    #@23
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@26
    .line 104
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@28
    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    #@2b
    move-result-object v2

    #@2c
    array-length v5, v2

    #@2d
    move v0, v1

    #@2e
    :goto_0
    if-ge v0, v5, :cond_0

    #@30
    aget-object v11, v2, v0

    #@32
    .line 105
    .local v11, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-object v6, v11, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    #@34
    invoke-virtual {v3, v6, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@37
    .line 104
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 108
    .end local v11    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    #@3d
    move-result-object v0

    #@3e
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService;->mWebViewUpdatedReceiver:Landroid/content/BroadcastReceiver;

    #@40
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@42
    move-object v5, v4

    #@43
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@46
    .line 111
    new-instance v8, Landroid/content/IntentFilter;

    #@48
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@4b
    .line 112
    .local v8, "userAddedFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    #@4e
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@51
    .line 113
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    #@54
    move-result-object v5

    #@55
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateService;->mWebViewUpdatedReceiver:Landroid/content/BroadcastReceiver;

    #@57
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@59
    move-object v9, v4

    #@5a
    move-object v10, v4

    #@5b
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@5e
    .line 116
    const-string/jumbo v0, "webviewupdate"

    #@61
    new-instance v1, Lcom/android/server/webkit/WebViewUpdateService$BinderService;

    #@63
    invoke-direct {v1, p0, v4}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;-><init>(Lcom/android/server/webkit/WebViewUpdateService;Lcom/android/server/webkit/WebViewUpdateService$BinderService;)V

    #@66
    const/4 v2, 0x1

    #@67
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/webkit/WebViewUpdateService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    #@6a
    .line 62
    return-void
.end method

.method public prepareWebViewInSystemServer()V
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->prepareWebViewInSystemServer()V

    #@5
    .line 119
    return-void
.end method
