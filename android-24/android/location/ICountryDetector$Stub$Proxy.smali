.class Landroid/location/ICountryDetector$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICountryDetector.java"

# interfaces
.implements Landroid/location/ICountryDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ICountryDetector$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    iput-object p1, p0, Landroid/location/ICountryDetector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 88
    return-void
.end method


# virtual methods
.method public addCountryListener(Landroid/location/ICountryListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/ICountryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 132
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 134
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ICountryDetector"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 135
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 136
    iget-object v2, p0, Landroid/location/ICountryDetector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 129
    return-void

    #@29
    .line 139
    :catchall_0
    move-exception v2

    #@2a
    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 139
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/location/ICountryDetector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public detectCountry()Landroid/location/Country;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 107
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 110
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ICountryDetector"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 111
    iget-object v3, p0, Landroid/location/ICountryDetector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 114
    sget-object v3, Landroid/location/Country;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/location/Country;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 121
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 124
    return-object v2

    #@2d
    .line 117
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/location/Country;
    goto :goto_0

    #@2f
    .line 120
    .end local v2    # "_result":Landroid/location/Country;
    :catchall_0
    move-exception v3

    #@30
    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 120
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 98
    const-string/jumbo v0, "android.location.ICountryDetector"

    #@3
    return-object v0
.end method

.method public removeCountryListener(Landroid/location/ICountryListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/ICountryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 150
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 152
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.ICountryDetector"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 153
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 154
    iget-object v2, p0, Landroid/location/ICountryDetector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x3

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 147
    return-void

    #@29
    .line 157
    :catchall_0
    move-exception v2

    #@2a
    .line 158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 157
    throw v2
.end method
