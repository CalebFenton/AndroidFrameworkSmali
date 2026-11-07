.class public final Landroid/provider/DeviceConfigShellCommandHandler;
.super Ljava/lang/Object;
.source "DeviceConfigShellCommandHandler.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static blacklist handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 6
    .param p0, "inPfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "outPfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "errPfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "args"    # [Ljava/lang/String;

    .line 59
    invoke-static {}, Landroid/provider/DeviceConfigInitializer;->getDeviceConfigServiceManager()Landroid/provider/DeviceConfigServiceManager;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/provider/DeviceConfigServiceManager;->getDeviceConfigUpdatableServiceRegisterer()Landroid/provider/DeviceConfigServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/provider/DeviceConfigServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/Binder;

    .line 62
    .local v0, "newBinder":Landroid/os/Binder;
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/os/Binder;->handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
