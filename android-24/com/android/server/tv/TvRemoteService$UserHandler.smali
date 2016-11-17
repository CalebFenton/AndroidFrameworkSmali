.class final Lcom/android/server/tv/TvRemoteService$UserHandler;
.super Landroid/os/Handler;
.source "TvRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserHandler"
.end annotation


# static fields
.field public static final MSG_INPUT_BRIDGE_CONNECTED:I = 0x2

.field public static final MSG_START:I = 0x1


# instance fields
.field private mRunning:Z

.field private final mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

.field final synthetic this$0:Lcom/android/server/tv/TvRemoteService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteService$UserProvider;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/tv/TvRemoteService;
    .param p2, "provider"    # Lcom/android/server/tv/TvRemoteService$UserProvider;
    .param p3, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@2
    .line 223
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    const/4 v2, 0x1

    #@8
    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@b
    .line 224
    new-instance v0, Lcom/android/server/tv/TvRemoteProviderWatcher;

    #@d
    invoke-direct {v0, p3, p2, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;Landroid/os/Handler;)V

    #@10
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

    #@12
    .line 222
    return-void
.end method

.method private start()V
    .locals 1

    #@0
    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->mRunning:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 247
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->mRunning:Z

    #@7
    .line 248
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

    #@9
    invoke-virtual {v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->start()V

    #@c
    .line 245
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 229
    iget v2, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v2, :pswitch_data_0

    #@5
    .line 228
    :cond_0
    :goto_0
    return-void

    #@6
    .line 231
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteService$UserHandler;->start()V

    #@9
    goto :goto_0

    #@a
    .line 235
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v1, Landroid/os/IBinder;

    #@e
    .line 236
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@10
    invoke-static {v2}, Lcom/android/server/tv/TvRemoteService;->-get2(Lcom/android/server/tv/TvRemoteService;)Ljava/util/Map;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy;

    #@1a
    .line 237
    .local v0, "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    if-eqz v0, :cond_0

    #@1c
    .line 238
    invoke-virtual {v0, v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->inputBridgeConnected(Landroid/os/IBinder;)V

    #@1f
    goto :goto_0

    #@20
    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
