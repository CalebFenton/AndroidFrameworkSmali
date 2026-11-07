.class Landroid/net/wear/ICompanionDeviceManagerProxy$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICompanionDeviceManagerProxy.java"

# interfaces
.implements Landroid/net/wear/ICompanionDeviceManagerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wear/ICompanionDeviceManagerProxy$Stub;
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

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/net/wear/ICompanionDeviceManagerProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/net/wear/ICompanionDeviceManagerProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getAllAssociations()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 117
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 120
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.wear.ICompanionDeviceManagerProxy"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Landroid/net/wear/ICompanionDeviceManagerProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 122
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 123
    sget-object v3, Landroid/companion/AssociationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    .line 126
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    nop

    .line 129
    return-object v3

    .line 126
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 112
    const-string v0, "android.net.wear.ICompanionDeviceManagerProxy"

    return-object v0
.end method
