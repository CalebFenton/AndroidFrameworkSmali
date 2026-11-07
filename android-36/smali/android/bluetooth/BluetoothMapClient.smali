.class public final Landroid/bluetooth/BluetoothMapClient;
.super Ljava/lang/Object;
.source "BluetoothMapClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_MESSAGE_DELETED_STATUS_CHANGED:Ljava/lang/String; = "android.bluetooth.mapmce.profile.action.MESSAGE_DELETED_STATUS_CHANGED"

.field public static final blacklist ACTION_MESSAGE_DELIVERED_SUCCESSFULLY:Ljava/lang/String; = "android.bluetooth.mapmce.profile.action.MESSAGE_DELIVERED_SUCCESSFULLY"

.field public static final blacklist ACTION_MESSAGE_READ_STATUS_CHANGED:Ljava/lang/String; = "android.bluetooth.mapmce.profile.action.MESSAGE_READ_STATUS_CHANGED"

.field public static final blacklist ACTION_MESSAGE_RECEIVED:Ljava/lang/String; = "android.bluetooth.mapmce.profile.action.MESSAGE_RECEIVED"

.field public static final blacklist ACTION_MESSAGE_SENT_SUCCESSFULLY:Ljava/lang/String; = "android.bluetooth.mapmce.profile.action.MESSAGE_SENT_SUCCESSFULLY"

.field private static final blacklist DBG:Z

.field public static final blacklist DELETED:I = 0x3

.field public static final blacklist EXTRA_MESSAGE_DELETED_STATUS:Ljava/lang/String; = "android.bluetooth.mapmce.profile.extra.MESSAGE_DELETED_STATUS"

.field public static final blacklist EXTRA_MESSAGE_HANDLE:Ljava/lang/String; = "android.bluetooth.mapmce.profile.extra.MESSAGE_HANDLE"

.field public static final blacklist EXTRA_MESSAGE_READ_STATUS:Ljava/lang/String; = "android.bluetooth.mapmce.profile.extra.MESSAGE_READ_STATUS"

.field public static final blacklist EXTRA_MESSAGE_TIMESTAMP:Ljava/lang/String; = "android.bluetooth.mapmce.profile.extra.MESSAGE_TIMESTAMP"

.field public static final blacklist EXTRA_RESULT_CODE:Ljava/lang/String; = "android.bluetooth.device.extra.RESULT_CODE"

.field public static final blacklist EXTRA_SENDER_CONTACT_NAME:Ljava/lang/String; = "android.bluetooth.mapmce.profile.extra.SENDER_CONTACT_NAME"

.field public static final blacklist EXTRA_SENDER_CONTACT_URI:Ljava/lang/String; = "android.bluetooth.mapmce.profile.extra.SENDER_CONTACT_URI"

.field public static final blacklist READ:I = 0x1

.field public static final blacklist RESULT_CANCELED:I = 0x2

.field public static final blacklist RESULT_FAILURE:I = 0x0

.field public static final blacklist RESULT_SUCCESS:I = 0x1

.field public static final blacklist STATE_ERROR:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UNDELETED:I = 0x2

.field public static final blacklist UNREAD:I

.field private static final blacklist VDBG:Z


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mService:Landroid/bluetooth/IBluetoothMapClient;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 60
    const-class v0, Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    .line 62
    sget-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    .line 63
    sget-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothMapClient;->VDBG:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_e

    sget-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    const-string v1, "Create BluetoothMapClient proxy object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_e
    iput-object p2, p0, Landroid/bluetooth/BluetoothMapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 222
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    .line 224
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mCloseGuard:Landroid/util/CloseGuard;

    .line 225
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothMapClient;
    .registers 2

    .line 268
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .registers 2

    .line 576
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 247
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 248
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_e

    .line 249
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 251
    :cond_e
    return-void
.end method

.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 286
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_22

    sget-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")for MAPS MCE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_22
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->getService()Landroid/bluetooth/IBluetoothMapClient;

    move-result-object v0

    .line 288
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    if-nez v0, :cond_42

    .line 289
    sget-object v1, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-boolean v1, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v1, :cond_7f

    sget-object v1, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 291
    :cond_42
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 293
    :try_start_4e
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothMapClient;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_54} :catch_55

    return v1

    .line 294
    :catch_55
    move-exception v1

    .line 295
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7f
    :goto_7f
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 311
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_22

    sget-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_22
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->getService()Landroid/bluetooth/IBluetoothMapClient;

    move-result-object v0

    .line 313
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    if-nez v0, :cond_42

    .line 314
    sget-object v1, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-boolean v1, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v1, :cond_7f

    sget-object v1, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 316
    :cond_42
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 318
    :try_start_4e
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothMapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_54} :catch_55

    return v1

    .line 319
    :catch_55
    move-exception v1

    .line 320
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7f
    :goto_7f
    const/4 v1, 0x0

    return v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 233
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 235
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothMapClient;->close()V

    .line 236
    return-void
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 275
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 336
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    const-string v1, "getConnectedDevices()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_b
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->getService()Landroid/bluetooth/IBluetoothMapClient;

    move-result-object v0

    .line 338
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    if-nez v0, :cond_2b

    .line 339
    sget-object v1, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    sget-boolean v1, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v1, :cond_68

    sget-object v1, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 341
    :cond_2b
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 343
    :try_start_31
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 344
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothMapClient;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothMapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 343
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3d} :catch_3e

    return-object v1

    .line 345
    :catch_3e
    move-exception v1

    .line 346
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_68
    :goto_68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 488
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->VDBG:Z

    if-eqz v0, :cond_22

    sget-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectionPolicy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_22
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->getService()Landroid/bluetooth/IBluetoothMapClient;

    move-result-object v0

    .line 490
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    if-nez v0, :cond_42

    .line 491
    sget-object v1, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    sget-boolean v1, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v1, :cond_7f

    sget-object v1, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 493
    :cond_42
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 495
    :try_start_4e
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothMapClient;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_54} :catch_55

    return v1

    .line 496
    :catch_55
    move-exception v1

    .line 497
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7f
    :goto_7f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 390
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_22

    sget-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectionState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_22
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->getService()Landroid/bluetooth/IBluetoothMapClient;

    move-result-object v0

    .line 392
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    if-nez v0, :cond_42

    .line 393
    sget-object v1, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-boolean v1, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v1, :cond_7f

    sget-object v1, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 395
    :cond_42
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 397
    :try_start_4e
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothMapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_54} :catch_55

    return v1

    .line 398
    :catch_55
    move-exception v1

    .line 399
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7f
    :goto_7f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 7
    .param p1, "states"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 363
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    const-string v1, "getDevicesMatchingStates()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_b
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->getService()Landroid/bluetooth/IBluetoothMapClient;

    move-result-object v0

    .line 365
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    if-nez v0, :cond_2b

    .line 366
    sget-object v1, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-boolean v1, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v1, :cond_68

    sget-object v1, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 368
    :cond_2b
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 370
    :try_start_31
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 371
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothMapClient;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothMapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 370
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3d} :catch_3e

    return-object v1

    .line 373
    :catch_3e
    move-exception v1

    .line 374
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_68
    :goto_68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 470
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->VDBG:Z

    if-eqz v0, :cond_22

    sget-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPriority("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_22
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMapClient;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->connectionPolicyToPriority(I)I

    move-result v0

    return v0
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 257
    invoke-static {p1}, Landroid/bluetooth/IBluetoothMapClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMapClient;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    .line 258
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    .line 265
    return-void
.end method

.method public whitelist sendMessage(Landroid/bluetooth/BluetoothDevice;Ljava/util/Collection;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .registers 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveredIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    .line 526
    .local p2, "contacts":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    nop

    .line 528
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/net/Uri;

    .line 526
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "sentIntent":Landroid/app/PendingIntent;
    .end local p5    # "deliveredIntent":Landroid/app/PendingIntent;
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    .local v4, "message":Ljava/lang/String;
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    .local v6, "deliveredIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/BluetoothMapClient;->sendMessage(Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-r sendMessage(Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .registers 15
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "contacts"    # [Landroid/net/Uri;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveredIntent"    # Landroid/app/PendingIntent;

    .line 557
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_32

    .line 558
    sget-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_32
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->getService()Landroid/bluetooth/IBluetoothMapClient;

    move-result-object v2

    .line 561
    .local v2, "service":Landroid/bluetooth/IBluetoothMapClient;
    if-nez v2, :cond_57

    .line 562
    sget-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_51

    sget-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    goto :goto_a8

    .line 564
    :cond_57
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 566
    :try_start_63
    iget-object v8, p0, Landroid/bluetooth/BluetoothMapClient;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_65} :catch_72

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "contacts":[Landroid/net/Uri;
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "sentIntent":Landroid/app/PendingIntent;
    .end local p5    # "deliveredIntent":Landroid/app/PendingIntent;
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    .local v4, "contacts":[Landroid/net/Uri;
    .local v5, "message":Ljava/lang/String;
    .local v6, "sentIntent":Landroid/app/PendingIntent;
    .local v7, "deliveredIntent":Landroid/app/PendingIntent;
    :try_start_6a
    invoke-interface/range {v2 .. v8}, Landroid/bluetooth/IBluetoothMapClient;->sendMessage(Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/AttributionSource;)Z

    move-result p1
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_6e} :catch_6f

    return p1

    .line 568
    :catch_6f
    move-exception v0

    move-object p1, v0

    goto :goto_79

    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "contacts":[Landroid/net/Uri;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    .end local v7    # "deliveredIntent":Landroid/app/PendingIntent;
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "contacts":[Landroid/net/Uri;
    .restart local p3    # "message":Ljava/lang/String;
    .restart local p4    # "sentIntent":Landroid/app/PendingIntent;
    .restart local p5    # "deliveredIntent":Landroid/app/PendingIntent;
    :catch_72
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object p1, v0

    .line 569
    .end local p2    # "contacts":[Landroid/net/Uri;
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "sentIntent":Landroid/app/PendingIntent;
    .end local p5    # "deliveredIntent":Landroid/app/PendingIntent;
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "contacts":[Landroid/net/Uri;
    .restart local v5    # "message":Ljava/lang/String;
    .restart local v6    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v7    # "deliveredIntent":Landroid/app/PendingIntent;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_79
    sget-object p2, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "\n"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    new-instance p4, Ljava/lang/Throwable;

    invoke-direct {p4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 564
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "contacts":[Landroid/net/Uri;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    .end local v7    # "deliveredIntent":Landroid/app/PendingIntent;
    .local p1, "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "contacts":[Landroid/net/Uri;
    .restart local p3    # "message":Ljava/lang/String;
    .restart local p4    # "sentIntent":Landroid/app/PendingIntent;
    .restart local p5    # "deliveredIntent":Landroid/app/PendingIntent;
    :cond_a3
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 572
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "contacts":[Landroid/net/Uri;
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "sentIntent":Landroid/app/PendingIntent;
    .end local p5    # "deliveredIntent":Landroid/app/PendingIntent;
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "contacts":[Landroid/net/Uri;
    .restart local v5    # "message":Ljava/lang/String;
    .restart local v6    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v7    # "deliveredIntent":Landroid/app/PendingIntent;
    :goto_a8
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 439
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_2c

    sget-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectionPolicy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_2c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->getService()Landroid/bluetooth/IBluetoothMapClient;

    move-result-object v0

    .line 441
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    if-nez v0, :cond_4c

    .line 442
    sget-object v1, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    sget-boolean v1, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v1, :cond_8f

    sget-object v1, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 444
    :cond_4c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 445
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_8f

    if-eqz p2, :cond_5e

    const/16 v1, 0x64

    if-ne p2, v1, :cond_8f

    .line 449
    :cond_5e
    :try_start_5e
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothMapClient;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_64} :catch_65

    return v1

    .line 450
    :catch_65
    move-exception v1

    .line 451
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8f
    :goto_8f
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 418
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_2c

    sget-object v0, Landroid/bluetooth/BluetoothMapClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPriority("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_2c
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->priorityToConnectionPolicy(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothMapClient;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method
