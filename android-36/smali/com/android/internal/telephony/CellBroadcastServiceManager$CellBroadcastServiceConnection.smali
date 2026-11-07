.class Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;
.super Ljava/lang/Object;
.source "CellBroadcastServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellBroadcastServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellBroadcastServiceConnection"
.end annotation


# instance fields
.field blacklist mService:Landroid/os/IBinder;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastServiceManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastServiceManager;Lcom/android/internal/telephony/CellBroadcastServiceManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;-><init>(Lcom/android/internal/telephony/CellBroadcastServiceManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 312
    const-string p0, "CellBroadcastServiceManager"

    const-string p1, "Binding died"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 2

    .line 317
    const-string p0, "CellBroadcastServiceManager"

    const-string p1, "Null binding"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 300
    const-string p1, "CellBroadcastServiceManager"

    const-string v0, "connected to CellBroadcastService"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 306
    const-string p1, "CellBroadcastServiceManager"

    const-string v0, "mICellBroadcastService has disconnected unexpectedly"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 307
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    return-void
.end method
