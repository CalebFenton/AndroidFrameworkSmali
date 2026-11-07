.class Lcom/android/internal/telecom/IInternalServiceRetriever$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInternalServiceRetriever.java"

# interfaces
.implements Lcom/android/internal/telecom/IInternalServiceRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInternalServiceRetriever$Stub;
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

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/internal/telecom/IInternalServiceRetriever$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 108
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/internal/telecom/IInternalServiceRetriever$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getDeviceIdleController()Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInternalServiceRetriever$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 120
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 123
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telecom.IInternalServiceRetriever"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/android/internal/telecom/IInternalServiceRetriever$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 125
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 129
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    nop

    .line 132
    return-object v3

    .line 129
    .end local v3    # "_result":Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 115
    const-string v0, "com.android.internal.telecom.IInternalServiceRetriever"

    return-object v0
.end method
