.class Landroid/app/IUiModeManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUiModeManager.java"

# interfaces
.implements Landroid/app/IUiModeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiModeManager$Stub;
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
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 100
    iput-object p1, p0, Landroid/app/IUiModeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 98
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public disableCarMode(I)V
    .locals 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 137
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IUiModeManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 139
    iget-object v2, p0, Landroid/app/IUiModeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x2

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 132
    return-void

    #@22
    .line 142
    :catchall_0
    move-exception v2

    #@23
    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 142
    throw v2
.end method

.method public enableCarMode(I)V
    .locals 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 117
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 119
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IUiModeManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 121
    iget-object v2, p0, Landroid/app/IUiModeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x1

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 114
    return-void

    #@22
    .line 124
    :catchall_0
    move-exception v2

    #@23
    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 124
    throw v2
.end method

.method public getCurrentModeType()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 153
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 156
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IUiModeManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 157
    iget-object v3, p0, Landroid/app/IUiModeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 158
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 162
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 165
    return v2

    #@23
    .line 161
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 161
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 108
    const-string/jumbo v0, "android.app.IUiModeManager"

    #@3
    return-object v0
.end method

.method public getNightMode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 196
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 199
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IUiModeManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 200
    iget-object v3, p0, Landroid/app/IUiModeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 205
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 208
    return v2

    #@23
    .line 204
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 204
    throw v3
.end method

.method public setNightMode(I)V
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 177
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 179
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IUiModeManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 181
    iget-object v2, p0, Landroid/app/IUiModeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x4

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 174
    return-void

    #@22
    .line 184
    :catchall_0
    move-exception v2

    #@23
    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 184
    throw v2
.end method
