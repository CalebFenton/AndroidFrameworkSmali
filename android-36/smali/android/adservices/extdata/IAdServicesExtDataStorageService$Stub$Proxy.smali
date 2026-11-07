.class Landroid/adservices/extdata/IAdServicesExtDataStorageService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAdServicesExtDataStorageService.java"

# interfaces
.implements Landroid/adservices/extdata/IAdServicesExtDataStorageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/extdata/IAdServicesExtDataStorageService$Stub;
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

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Landroid/adservices/extdata/IAdServicesExtDataStorageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 126
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/adservices/extdata/IAdServicesExtDataStorageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getAdServicesExtData(Landroid/adservices/extdata/IGetAdServicesExtDataCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/adservices/extdata/IGetAdServicesExtDataCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 139
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.adservices.extdata.IAdServicesExtDataStorageService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 141
    iget-object v1, p0, Landroid/adservices/extdata/IAdServicesExtDataStorageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    nop

    .line 146
    return-void

    .line 144
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 133
    const-string v0, "android.adservices.extdata.IAdServicesExtDataStorageService"

    return-object v0
.end method

.method public blacklist putAdServicesExtData(Landroid/adservices/extdata/AdServicesExtDataParams;[ILandroid/adservices/extdata/IGetAdServicesExtDataCallback;)V
    .registers 9
    .param p1, "params"    # Landroid/adservices/extdata/AdServicesExtDataParams;
    .param p2, "adServicesExtDataFields"    # [I
    .param p3, "callback"    # Landroid/adservices/extdata/IGetAdServicesExtDataCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 151
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.adservices.extdata.IAdServicesExtDataStorageService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 153
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 154
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 155
    iget-object v1, p0, Landroid/adservices/extdata/IAdServicesExtDataStorageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    nop

    .line 160
    return-void

    .line 158
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    throw v1
.end method
