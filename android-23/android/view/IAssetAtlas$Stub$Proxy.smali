.class Landroid/view/IAssetAtlas$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAssetAtlas.java"

# interfaces
.implements Landroid/view/IAssetAtlas;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IAssetAtlas$Stub;
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
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 93
    iput-object p1, p0, Landroid/view/IAssetAtlas$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 91
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/view/IAssetAtlas$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getBuffer()Landroid/view/GraphicBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 133
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 136
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IAssetAtlas"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 137
    iget-object v3, p0, Landroid/view/IAssetAtlas$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 140
    sget-object v3, Landroid/view/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/view/GraphicBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 147
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 150
    return-object v2

    #@2d
    .line 143
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/view/GraphicBuffer;
    goto :goto_0

    #@2f
    .line 146
    .end local v2    # "_result":Landroid/view/GraphicBuffer;
    :catchall_0
    move-exception v3

    #@30
    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 146
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 101
    const-string/jumbo v0, "android.view.IAssetAtlas"

    #@3
    return-object v0
.end method

.method public getMap()[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 165
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 168
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IAssetAtlas"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 169
    iget-object v3, p0, Landroid/view/IAssetAtlas$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 174
    .local v2, "_result":[J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 177
    return-object v2

    #@23
    .line 173
    .end local v2    # "_result":[J
    :catchall_0
    move-exception v3

    #@24
    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 173
    throw v3
.end method

.method public isCompatible(I)Z
    .locals 6
    .param p1, "ppid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 111
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 114
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IAssetAtlas"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 115
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 116
    iget-object v3, p0, Landroid/view/IAssetAtlas$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 117
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    const/4 v2, 0x1

    #@22
    .line 121
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 124
    return v2

    #@29
    .line 118
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 120
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 120
    throw v3
.end method
