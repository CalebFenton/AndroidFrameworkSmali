.class public Landroid/telephony/gba/GbaService;
.super Landroid/app/Service;
.source "GbaService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/gba/GbaService$IGbaServiceWrapper;,
        Landroid/telephony/gba/GbaService$GbaServiceHandler;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist EVENT_GBA_AUTH_REQUEST:I = 0x1

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.gba.GbaService"

.field private static final blacklist TAG:Ljava/lang/String; = "GbaService"


# instance fields
.field private final blacklist mBinder:Landroid/telephony/gba/GbaService$IGbaServiceWrapper;

.field private final blacklist mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/IBootstrapAuthenticationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/telephony/gba/GbaService$GbaServiceHandler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/telephony/gba/GbaService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telephony/gba/GbaService;)Landroid/telephony/gba/GbaService$GbaServiceHandler;
    .registers 1

    iget-object p0, p0, Landroid/telephony/gba/GbaService;->mHandler:Landroid/telephony/gba/GbaService$GbaServiceHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Landroid/telephony/gba/GbaService;->DBG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/telephony/gba/GbaService;->DBG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 84
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Landroid/telephony/gba/GbaService$IGbaServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/gba/GbaService$IGbaServiceWrapper;-><init>(Landroid/telephony/gba/GbaService;Landroid/telephony/gba/GbaService-IA;)V

    iput-object v0, p0, Landroid/telephony/gba/GbaService;->mBinder:Landroid/telephony/gba/GbaService$IGbaServiceWrapper;

    .line 85
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GbaService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/gba/GbaService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 86
    iget-object v0, p0, Landroid/telephony/gba/GbaService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance v0, Landroid/telephony/gba/GbaService$GbaServiceHandler;

    iget-object v2, p0, Landroid/telephony/gba/GbaService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/telephony/gba/GbaService$GbaServiceHandler;-><init>(Landroid/telephony/gba/GbaService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/gba/GbaService;->mHandler:Landroid/telephony/gba/GbaService$GbaServiceHandler;

    .line 89
    const-string v0, "GBA service created"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist onAuthenticationRequest(IIILandroid/net/Uri;[BZ)V
    .registers 8
    .param p1, "subscriptionId"    # I
    .param p2, "token"    # I
    .param p3, "appType"    # I
    .param p4, "nafUrl"    # Landroid/net/Uri;
    .param p5, "securityProtocol"    # [B
    .param p6, "forceBootStrapping"    # Z

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/telephony/gba/GbaService;->reportAuthenticationFailure(II)V

    .line 151
    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 205
    const-string v0, "android.telephony.gba.GbaService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 206
    const-string v0, "GbaService"

    const-string v1, "GbaService Bound."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Landroid/telephony/gba/GbaService;->mBinder:Landroid/telephony/gba/GbaService$IGbaServiceWrapper;

    return-object v0

    .line 209
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/telephony/gba/GbaService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 216
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 217
    return-void
.end method

.method public final whitelist reportAuthenticationFailure(II)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "cb":Landroid/telephony/IBootstrapAuthenticationCallback;
    iget-object v1, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 190
    :try_start_4
    iget-object v2, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/IBootstrapAuthenticationCallback;

    move-object v0, v2

    .line 191
    iget-object v2, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 192
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_20

    .line 193
    if-eqz v0, :cond_1f

    .line 195
    :try_start_15
    invoke-interface {v0, p1, p2}, Landroid/telephony/IBootstrapAuthenticationCallback;->onAuthenticationFailure(II)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    .line 198
    goto :goto_1f

    .line 196
    :catch_19
    move-exception v1

    .line 197
    .local v1, "exception":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 200
    .end local v1    # "exception":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    return-void

    .line 192
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public final whitelist reportKeysAvailable(I[BLjava/lang/String;)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "gbaKey"    # [B
    .param p3, "transactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "cb":Landroid/telephony/IBootstrapAuthenticationCallback;
    iget-object v1, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 166
    :try_start_4
    iget-object v2, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/IBootstrapAuthenticationCallback;

    move-object v0, v2

    .line 167
    iget-object v2, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 168
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_20

    .line 169
    if-eqz v0, :cond_1f

    .line 171
    :try_start_15
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/IBootstrapAuthenticationCallback;->onKeysAvailable(I[BLjava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    .line 174
    goto :goto_1f

    .line 172
    :catch_19
    move-exception v1

    .line 173
    .local v1, "exception":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 176
    .end local v1    # "exception":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    return-void

    .line 168
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method
