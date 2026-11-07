.class public Landroid/hardware/cas/IMediaCasService$Default;
.super Ljava/lang/Object;
.source "IMediaCasService.java"

# interfaces
.implements Landroid/hardware/cas/IMediaCasService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/cas/IMediaCasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createDescrambler(I)Landroid/hardware/cas/IDescrambler;
    .registers 3
    .param p1, "CA_system_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createPlugin(ILandroid/hardware/cas/ICasListener;)Landroid/hardware/cas/ICas;
    .registers 4
    .param p1, "CA_system_id"    # I
    .param p2, "listener"    # Landroid/hardware/cas/ICasListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enumeratePlugins()[Landroid/hardware/cas/AidlCasPluginDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 50
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDescramblerSupported(I)Z
    .registers 3
    .param p1, "CA_system_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSystemIdSupported(I)Z
    .registers 3
    .param p1, "CA_system_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method
