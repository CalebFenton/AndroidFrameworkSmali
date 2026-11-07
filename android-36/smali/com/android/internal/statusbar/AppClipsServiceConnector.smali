.class public Lcom/android/internal/statusbar/AppClipsServiceConnector;
.super Ljava/lang/Object;
.source "AppClipsServiceConnector.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lcom/android/internal/statusbar/AppClipsServiceConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/internal/statusbar/AppClipsServiceConnector;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method private blacklist connectToServiceAndProcessRequest(ILjava/util/concurrent/CompletableFuture;)V
    .registers 10
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p2, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/android/internal/statusbar/AppClipsServiceConnector$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/internal/statusbar/AppClipsServiceConnector$1;-><init>(Lcom/android/internal/statusbar/AppClipsServiceConnector;Ljava/util/concurrent/CompletableFuture;I)V

    move-object v3, v0

    .line 84
    .local v3, "serviceConnection":Landroid/content/ServiceConnection;
    iget-object v0, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 87
    .local v0, "serviceComponent":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v4}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 90
    const v4, 0x4000001

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v1

    .line 95
    .local v1, "bindService":Z
    if-nez v1, :cond_3a

    .line 96
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 98
    :cond_3a
    return-void
.end method


# virtual methods
.method public blacklist canLaunchCaptureContentActivityForNote(I)Z
    .registers 6
    .param p1, "taskId"    # I

    .line 53
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 54
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/statusbar/AppClipsServiceConnector;->connectToServiceAndProcessRequest(ILjava/util/concurrent/CompletableFuture;)V

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return v1

    .line 56
    .end local v0    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    :catch_13
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/statusbar/AppClipsServiceConnector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception from service\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method
