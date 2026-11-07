.class Lcom/android/internal/telecom/ITelecomLoader$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITelecomLoader.java"

# interfaces
.implements Lcom/android/internal/telecom/ITelecomLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ITelecomLoader$Stub;
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

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/internal/telecom/ITelecomLoader$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 113
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/android/internal/telecom/ITelecomLoader$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist createTelecomService(Lcom/android/internal/telecom/IInternalServiceRetriever;Ljava/lang/String;)Lcom/android/internal/telecom/ITelecomService;
    .registers 8
    .param p1, "retriever"    # Lcom/android/internal/telecom/IInternalServiceRetriever;
    .param p2, "sysUiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomLoader$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 125
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 128
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.internal.telecom.ITelecomLoader"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 130
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/android/internal/telecom/ITelecomLoader$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 132
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 133
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 136
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/internal/telecom/ITelecomService;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    nop

    .line 139
    return-object v3

    .line 136
    .end local v3    # "_result":Lcom/android/internal/telecom/ITelecomService;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 120
    const-string v0, "com.android.internal.telecom.ITelecomLoader"

    return-object v0
.end method
