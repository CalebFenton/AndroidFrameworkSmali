.class Landroid/net/wifi/IInterfaceCreationInfoCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInterfaceCreationInfoCallback.java"

# interfaces
.implements Landroid/net/wifi/IInterfaceCreationInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IInterfaceCreationInfoCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Landroid/net/wifi/IInterfaceCreationInfoCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 112
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/net/wifi/IInterfaceCreationInfoCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 119
    const-string v0, "android.net.wifi.IInterfaceCreationInfoCallback"

    return-object v0
.end method

.method public blacklist onResults(Z[I[Ljava/lang/String;)V
    .registers 8
    .param p1, "canCreate"    # Z
    .param p2, "interfacesToDelete"    # [I
    .param p3, "packagesForInterfaces"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 125
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.wifi.IInterfaceCreationInfoCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 127
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 128
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Landroid/net/wifi/IInterfaceCreationInfoCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1e

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 133
    nop

    .line 134
    return-void

    .line 132
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 133
    throw v1
.end method
