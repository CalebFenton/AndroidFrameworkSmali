.class Landroid/os/ServiceManagerProxy;
.super Ljava/lang/Object;
.source "ServiceManagerNative.java"

# interfaces
.implements Landroid/os/IServiceManager;


# instance fields
.field private greylist mRemote:Landroid/os/IBinder;

.field private blacklist mServiceManager:Landroid/os/IServiceManager;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/os/ServiceManagerProxy;->mRemote:Landroid/os/IBinder;

    .line 53
    nop

    .line 54
    invoke-direct {p0}, Landroid/os/ServiceManagerProxy;->getNativeServiceManager()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/os/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    .line 55
    return-void
.end method

.method private native blacklist getNativeServiceManager()Landroid/os/IBinder;
.end method


# virtual methods
.method public blacklist addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;
    .param p3, "allowIsolated"    # Z
    .param p4, "dumpPriority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 87
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1}, Landroid/os/ServiceManagerProxy;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Service;->getServiceWithMetadata()Landroid/os/ServiceWithMetadata;

    move-result-object v0

    iget-object v0, v0, Landroid/os/ServiceWithMetadata;->service:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist checkService2(Ljava/lang/String;)Landroid/os/Service;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getConnectionInfo(Ljava/lang/String;)Landroid/os/ConnectionInfo;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->getConnectionInfo(Ljava/lang/String;)Landroid/os/ConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Landroid/os/ServiceManagerProxy;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Service;->getServiceWithMetadata()Landroid/os/ServiceWithMetadata;

    move-result-object v0

    iget-object v0, v0, Landroid/os/ServiceWithMetadata;->service:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getService2(Ljava/lang/String;)Landroid/os/Service;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1}, Landroid/os/ServiceManagerProxy;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0}, Landroid/os/IServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUpdatableNames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "apexName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->getUpdatableNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isDeclared(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist listServices(I)[Ljava/lang/String;
    .registers 3
    .param p1, "dumpPriority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->listServices(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerClientCallback(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/IClientCallback;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;
    .param p3, "cb"    # Landroid/os/IClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public blacklist registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/IServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 96
    return-void
.end method

.method public blacklist tryUnregisterService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public blacklist unregisterForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/IServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public blacklist updatableViaApex(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->updatableViaApex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
