.class Lcom/android/internal/app/IProcessStats$Stub$Proxy;
.super Ljava/lang/Object;
.source "IProcessStats.java"

# interfaces
.implements Lcom/android/internal/app/IProcessStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IProcessStats$Stub;
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
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    iput-object p1, p0, Lcom/android/internal/app/IProcessStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 86
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/app/IProcessStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getCurrentMemoryState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 142
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 145
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IProcessStats"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 146
    iget-object v3, p0, Lcom/android/internal/app/IProcessStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 151
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 154
    return v2

    #@23
    .line 150
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 150
    throw v3
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p1, "historic":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 101
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 104
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IProcessStats"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 105
    iget-object v3, p0, Lcom/android/internal/app/IProcessStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 106
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    #@1b
    move-result-object v2

    #@1c
    .line 108
    .local v2, "_result":[B
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, p1, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 114
    return-object v2

    #@28
    .line 110
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    #@29
    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 110
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    const-string/jumbo v0, "com.android.internal.app.IProcessStats"

    #@3
    return-object v0
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "minTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 119
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 122
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IProcessStats"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 123
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 124
    iget-object v3, p0, Lcom/android/internal/app/IProcessStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 127
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 134
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 137
    return-object v2

    #@30
    .line 130
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    #@32
    .line 133
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    #@33
    .line 134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 133
    throw v3
.end method
