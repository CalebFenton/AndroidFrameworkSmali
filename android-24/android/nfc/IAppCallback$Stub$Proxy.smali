.class Landroid/nfc/IAppCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAppCallback.java"

# interfaces
.implements Landroid/nfc/IAppCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/IAppCallback$Stub;
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
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    iput-object p1, p0, Landroid/nfc/IAppCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 93
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/nfc/IAppCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public createBeamShareData(B)Landroid/nfc/BeamShareData;
    .locals 6
    .param p1, "peerLlcpVersion"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 111
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.IAppCallback"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 112
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    #@11
    .line 113
    iget-object v3, p0, Landroid/nfc/IAppCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 116
    sget-object v3, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/nfc/BeamShareData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 123
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 126
    return-object v2

    #@30
    .line 119
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/nfc/BeamShareData;
    goto :goto_0

    #@32
    .line 122
    .end local v2    # "_result":Landroid/nfc/BeamShareData;
    :catchall_0
    move-exception v3

    #@33
    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 122
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 103
    const-string/jumbo v0, "android.nfc.IAppCallback"

    #@3
    return-object v0
.end method

.method public onNdefPushComplete(B)V
    .locals 5
    .param p1, "peerLlcpVersion"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 131
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 133
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.nfc.IAppCallback"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 134
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    #@11
    .line 135
    iget-object v2, p0, Landroid/nfc/IAppCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x2

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 128
    return-void

    #@22
    .line 138
    :catchall_0
    move-exception v2

    #@23
    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 138
    throw v2
.end method

.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 5
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 146
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 148
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.nfc.IAppCallback"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 149
    if-eqz p1, :cond_0

    #@10
    .line 150
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 151
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/nfc/Tag;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 156
    :goto_0
    iget-object v2, p0, Landroid/nfc/IAppCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x3

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 143
    return-void

    #@29
    .line 154
    :cond_0
    const/4 v2, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 159
    :catchall_0
    move-exception v2

    #@2f
    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 159
    throw v2
.end method
