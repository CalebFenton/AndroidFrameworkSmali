.class Landroid/os/ServiceManagerProxy;
.super Ljava/lang/Object;
.source "ServiceManagerNative.java"

# interfaces
.implements Landroid/os/IServiceManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 111
    iput-object p1, p0, Landroid/os/ServiceManagerProxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 110
    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;
    .param p3, "allowIsolated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 145
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 146
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.os.IServiceManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 148
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 149
    if-eqz p3, :cond_0

    #@17
    const/4 v2, 0x1

    #@18
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 150
    iget-object v2, p0, Landroid/os/ServiceManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x3

    #@1e
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 143
    return-void

    #@28
    :cond_0
    move v2, v3

    #@29
    .line 149
    goto :goto_0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 132
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 133
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.os.IServiceManager"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 134
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 135
    iget-object v3, p0, Landroid/os/ServiceManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 136
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    .line 137
    .local v0, "binder":Landroid/os/IBinder;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 139
    return-object v0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 120
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 121
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.os.IServiceManager"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 122
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 123
    iget-object v3, p0, Landroid/os/ServiceManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 124
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    .line 125
    .local v0, "binder":Landroid/os/IBinder;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 127
    return-object v0
.end method

.method public listServices()[Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    new-instance v6, Ljava/util/ArrayList;

    #@2
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 157
    .local v6, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@6
    .line 159
    .local v3, "n":I
    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 160
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@d
    move-result-object v4

    #@e
    .line 161
    .local v4, "reply":Landroid/os/Parcel;
    const-string/jumbo v7, "android.os.IServiceManager"

    #@11
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@14
    .line 162
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 163
    add-int/lit8 v3, v3, 0x1

    #@19
    .line 165
    :try_start_0
    iget-object v7, p0, Landroid/os/ServiceManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1b
    const/4 v8, 0x4

    #@1c
    const/4 v9, 0x0

    #@1d
    invoke-interface {v7, v8, v1, v4, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v5

    #@21
    .line 166
    .local v5, "res":Z
    if-nez v5, :cond_0

    #@23
    .line 179
    .end local v5    # "res":Z
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v7

    #@27
    new-array v0, v7, [Ljava/lang/String;

    #@29
    .line 180
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2c
    .line 181
    return-object v0

    #@2d
    .line 175
    .end local v0    # "array":[Ljava/lang/String;
    .restart local v5    # "res":Z
    :cond_0
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    .line 176
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    goto :goto_0

    #@3b
    .line 169
    .end local v5    # "res":Z
    :catch_0
    move-exception v2

    #@3c
    .local v2, "e":Ljava/lang/RuntimeException;
    goto :goto_1
.end method

.method public setPermissionController(Landroid/os/IPermissionController;)V
    .locals 5
    .param p1, "controller"    # Landroid/os/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 187
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 188
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.os.IServiceManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 189
    invoke-interface {p1}, Landroid/os/IPermissionController;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 190
    iget-object v2, p0, Landroid/os/ServiceManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v3, 0x6

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 185
    return-void
.end method
