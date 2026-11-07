.class Landroid/adservices/adid/IAdIdService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAdIdService.java"

# interfaces
.implements Landroid/adservices/adid/IAdIdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adid/IAdIdService$Stub;
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

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/adservices/adid/IAdIdService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 114
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/adservices/adid/IAdIdService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getAdId(Landroid/adservices/adid/GetAdIdParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adid/IGetAdIdCallback;)V
    .registers 9
    .param p1, "adIdParam"    # Landroid/adservices/adid/GetAdIdParam;
    .param p2, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p3, "callback"    # Landroid/adservices/adid/IGetAdIdCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 127
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 129
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.adservices.adid.IAdIdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 130
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 131
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 132
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 133
    iget-object v3, p0, Landroid/adservices/adid/IAdIdService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 134
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    .line 137
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    nop

    .line 140
    return-void

    .line 137
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 121
    const-string v0, "android.adservices.adid.IAdIdService"

    return-object v0
.end method
