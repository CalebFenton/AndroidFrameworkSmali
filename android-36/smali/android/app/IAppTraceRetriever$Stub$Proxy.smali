.class Landroid/app/IAppTraceRetriever$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAppTraceRetriever.java"

# interfaces
.implements Landroid/app/IAppTraceRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAppTraceRetriever$Stub;
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

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Landroid/app/IAppTraceRetriever$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 125
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/app/IAppTraceRetriever$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 132
    const-string v0, "android.app.IAppTraceRetriever"

    return-object v0
.end method

.method public blacklist getTraceFileDescriptor(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Landroid/app/IAppTraceRetriever$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 145
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 148
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.app.IAppTraceRetriever"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v2, p0, Landroid/app/IAppTraceRetriever$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 153
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 154
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 157
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    nop

    .line 160
    return-object v3

    .line 157
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    throw v2
.end method
