.class public Landroid/bluetooth/BluetoothFrameworkInitializer;
.super Ljava/lang/Object;
.source "BluetoothFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static volatile blacklist sBinderCallsStatsInitializer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sBluetoothServiceManager:Landroid/os/BluetoothServiceManager;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBluetoothServiceManager()Landroid/os/BluetoothServiceManager;
    .registers 1

    .line 61
    sget-object v0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBluetoothServiceManager:Landroid/os/BluetoothServiceManager;

    return-object v0
.end method

.method public static blacklist initializeBinderCallsStats(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 86
    sget-object v0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBinderCallsStatsInitializer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_a

    .line 89
    sget-object v0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBinderCallsStatsInitializer:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 90
    return-void

    .line 87
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sBinderCallsStatsInitializer has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/bluetooth/BluetoothManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 103
    new-instance v0, Landroid/bluetooth/BluetoothManager;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 100
    const-class v0, Landroid/bluetooth/BluetoothManager;

    new-instance v1, Landroid/bluetooth/BluetoothFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "bluetooth"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 104
    return-void
.end method

.method public static blacklist setBinderCallsStatsInitializer(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p0, "binderCallsStatsConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/Context;>;"
    sget-object v0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBinderCallsStatsInitializer:Ljava/util/function/Consumer;

    if-nez v0, :cond_11

    .line 77
    if-eqz p0, :cond_9

    .line 81
    sput-object p0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBinderCallsStatsInitializer:Ljava/util/function/Consumer;

    .line 82
    return-void

    .line 78
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "binderCallsStatsConsumer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setBinderCallsStatsInitializer called twice!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setBluetoothServiceManager(Landroid/os/BluetoothServiceManager;)V
    .registers 3
    .param p0, "bluetoothServiceManager"    # Landroid/os/BluetoothServiceManager;

    .line 48
    sget-object v0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBluetoothServiceManager:Landroid/os/BluetoothServiceManager;

    if-nez v0, :cond_11

    .line 52
    if-eqz p0, :cond_9

    .line 56
    sput-object p0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBluetoothServiceManager:Landroid/os/BluetoothServiceManager;

    .line 57
    return-void

    .line 53
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bluetoothServiceManager must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setBluetoothServiceManager called twice!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
