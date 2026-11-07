.class public abstract Landroid/telephony/NetworkService;
.super Landroid/app/Service;
.source "NetworkService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NetworkService$INetworkServiceWrapper;,
        Landroid/telephony/NetworkService$NetworkServiceHandler;,
        Landroid/telephony/NetworkService$NetworkServiceProvider;
    }
.end annotation


# static fields
.field private static final greylist-max-o NETWORK_SERVICE_CREATE_NETWORK_SERVICE_PROVIDER:I = 0x1

.field private static final blacklist NETWORK_SERVICE_GET_REGISTRATION_INFO:I = 0x4

.field private static final blacklist NETWORK_SERVICE_INDICATION_NETWORK_INFO_CHANGED:I = 0x7

.field private static final blacklist NETWORK_SERVICE_REGISTER_FOR_INFO_CHANGE:I = 0x5

.field private static final greylist-max-o NETWORK_SERVICE_REMOVE_ALL_NETWORK_SERVICE_PROVIDERS:I = 0x3

.field private static final greylist-max-o NETWORK_SERVICE_REMOVE_NETWORK_SERVICE_PROVIDER:I = 0x2

.field private static final blacklist NETWORK_SERVICE_UNREGISTER_FOR_INFO_CHANGE:I = 0x6

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.NetworkService"


# instance fields
.field private final greylist-max-o TAG:Ljava/lang/String;

.field public final greylist-max-o mBinder:Landroid/telephony/NetworkService$INetworkServiceWrapper;

.field private final greylist-max-o mHandler:Landroid/telephony/NetworkService$NetworkServiceHandler;

.field private final greylist-max-o mHandlerThread:Landroid/os/HandlerThread;

.field private final greylist-max-o mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/NetworkService$NetworkServiceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;
    .registers 1

    iget-object p0, p0, Landroid/telephony/NetworkService;->mHandler:Landroid/telephony/NetworkService$NetworkServiceHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceMap(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/telephony/NetworkService;->mServiceMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 224
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    const-class v0, Landroid/telephony/NetworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/NetworkService;->TAG:Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/NetworkService;->mServiceMap:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Landroid/telephony/NetworkService$INetworkServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/NetworkService$INetworkServiceWrapper;-><init>(Landroid/telephony/NetworkService;Landroid/telephony/NetworkService-IA;)V

    iput-object v0, p0, Landroid/telephony/NetworkService;->mBinder:Landroid/telephony/NetworkService$INetworkServiceWrapper;

    .line 225
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Landroid/telephony/NetworkService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/NetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 226
    iget-object v0, p0, Landroid/telephony/NetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 228
    new-instance v0, Landroid/telephony/NetworkService$NetworkServiceHandler;

    iget-object v1, p0, Landroid/telephony/NetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telephony/NetworkService$NetworkServiceHandler;-><init>(Landroid/telephony/NetworkService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/NetworkService;->mHandler:Landroid/telephony/NetworkService$NetworkServiceHandler;

    .line 229
    const-string/jumbo v0, "network service created"

    invoke-direct {p0, v0}, Landroid/telephony/NetworkService;->log(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method private final greylist-max-o log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Landroid/telephony/NetworkService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method private final greylist-max-o loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 317
    iget-object v0, p0, Landroid/telephony/NetworkService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 249
    if-eqz p1, :cond_12

    const-string v0, "android.telephony.NetworkService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_12

    .line 254
    :cond_f
    iget-object v0, p0, Landroid/telephony/NetworkService;->mBinder:Landroid/telephony/NetworkService$INetworkServiceWrapper;

    return-object v0

    .line 250
    :cond_12
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/NetworkService;->loge(Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onCreateNetworkServiceProvider(I)Landroid/telephony/NetworkService$NetworkServiceProvider;
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 268
    iget-object v0, p0, Landroid/telephony/NetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 269
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 270
    return-void
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 259
    iget-object v0, p0, Landroid/telephony/NetworkService;->mHandler:Landroid/telephony/NetworkService$NetworkServiceHandler;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    return v3
.end method
