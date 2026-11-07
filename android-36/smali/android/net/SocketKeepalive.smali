.class public abstract Landroid/net/SocketKeepalive;
.super Ljava/lang/Object;
.source "SocketKeepalive.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SocketKeepalive$Callback;,
        Landroid/net/SocketKeepalive$InvalidSocketException;,
        Landroid/net/SocketKeepalive$ErrorCodeException;,
        Landroid/net/SocketKeepalive$StartFlags;,
        Landroid/net/SocketKeepalive$KeepaliveEvent;,
        Landroid/net/SocketKeepalive$ErrorCode;
    }
.end annotation


# static fields
.field public static final blacklist BINDER_DIED:I = -0xa

.field public static final blacklist DATA_RECEIVED:I = -0x2

.field public static final whitelist ERROR_HARDWARE_ERROR:I = -0x1f

.field public static final whitelist ERROR_INSUFFICIENT_RESOURCES:I = -0x20

.field public static final whitelist ERROR_INVALID_INTERVAL:I = -0x18

.field public static final whitelist ERROR_INVALID_IP_ADDRESS:I = -0x15

.field public static final whitelist ERROR_INVALID_LENGTH:I = -0x17

.field public static final whitelist ERROR_INVALID_NETWORK:I = -0x14

.field public static final whitelist ERROR_INVALID_PORT:I = -0x16

.field public static final whitelist ERROR_INVALID_SOCKET:I = -0x19

.field public static final whitelist ERROR_NO_SUCH_SLOT:I = -0x21
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_SOCKET_NOT_IDLE:I = -0x1a

.field public static final blacklist ERROR_STOP_REASON_UNINITIALIZED:I = -0x1b

.field public static final whitelist ERROR_UNSUPPORTED:I = -0x1e

.field public static final whitelist FLAG_AUTOMATIC_ON_OFF:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MAX_INTERVAL_SEC:I = 0xe10

.field public static final blacklist MIN_INTERVAL_SEC:I = 0xa

.field public static final blacklist NO_KEEPALIVE:I = -0x1

.field public static final whitelist SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SUCCESS_PAUSED:I = 0x1

.field protected static final blacklist TAG:Ljava/lang/String; = "SocketKeepalive"


# instance fields
.field protected final blacklist mCallback:Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;

.field protected final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field protected final blacklist mNetwork:Landroid/net/Network;

.field protected final blacklist mPfd:Landroid/os/ParcelFileDescriptor;

.field protected final blacklist mService:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor blacklist <init>(Landroid/net/IConnectivityManager;Landroid/net/Network;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)V
    .registers 7
    .param p1, "service"    # Landroid/net/IConnectivityManager;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/net/SocketKeepalive$Callback;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Landroid/net/SocketKeepalive;->mService:Landroid/net/IConnectivityManager;

    .line 262
    iput-object p2, p0, Landroid/net/SocketKeepalive;->mNetwork:Landroid/net/Network;

    .line 263
    iput-object p3, p0, Landroid/net/SocketKeepalive;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 264
    iput-object p4, p0, Landroid/net/SocketKeepalive;->mExecutor:Ljava/util/concurrent/Executor;

    .line 265
    new-instance v0, Landroid/net/SocketKeepalive$1;

    invoke-direct {v0, p0, p5, p4}, Landroid/net/SocketKeepalive$1;-><init>(Landroid/net/SocketKeepalive;Landroid/net/SocketKeepalive$Callback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/net/SocketKeepalive;->mCallback:Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;

    .line 338
    return-void
.end method


# virtual methods
.method public final whitelist test-api close()V
    .registers 2

    .line 408
    invoke-virtual {p0}, Landroid/net/SocketKeepalive;->stop()V

    .line 410
    :try_start_3
    iget-object v0, p0, Landroid/net/SocketKeepalive;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9

    .line 413
    goto :goto_a

    .line 411
    :catch_9
    move-exception v0

    .line 414
    :goto_a
    return-void
.end method

.method public final whitelist start(I)V
    .registers 4
    .param p1, "intervalSec"    # I

    .line 357
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/SocketKeepalive;->startImpl(IILandroid/net/Network;)V

    .line 358
    return-void
.end method

.method public final whitelist start(IILandroid/net/Network;)V
    .registers 4
    .param p1, "intervalSec"    # I
    .param p2, "flags"    # I
    .param p3, "underpinnedNetwork"    # Landroid/net/Network;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 384
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/SocketKeepalive;->startImpl(IILandroid/net/Network;)V

    .line 385
    return-void
.end method

.method protected abstract blacklist startImpl(IILandroid/net/Network;)V
.end method

.method public final whitelist stop()V
    .registers 1

    .line 396
    invoke-virtual {p0}, Landroid/net/SocketKeepalive;->stopImpl()V

    .line 397
    return-void
.end method

.method protected abstract blacklist stopImpl()V
.end method
