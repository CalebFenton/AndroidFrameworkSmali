.class Landroid/net/nsd/INsdManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "INsdManager.java"

# interfaces
.implements Landroid/net/nsd/INsdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/INsdManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/net/nsd/INsdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 114
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/net/nsd/INsdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist connect(Landroid/net/connectivity/android/net/nsd/INsdManagerCallback;Z)Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;
    .registers 8
    .param p1, "cb"    # Landroid/net/connectivity/android/net/nsd/INsdManagerCallback;
    .param p2, "useJavaBackend"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Landroid/net/nsd/INsdManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 126
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 129
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.net.nsd.INsdManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 131
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    iget-object v2, p0, Landroid/net/nsd/INsdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 133
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 134
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 137
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    nop

    .line 140
    return-object v3

    .line 137
    .end local v3    # "_result":Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 121
    const-string v0, "android.net.nsd.INsdManager"

    return-object v0
.end method
