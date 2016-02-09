.class Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPackageInstallerSession.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallerSession$Stub;
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
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 144
    iput-object p1, p0, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 142
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 287
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 289
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageInstallerSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 290
    iget-object v2, p0, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x8

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 284
    return-void

    #@20
    .line 293
    :catchall_0
    move-exception v2

    #@21
    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 293
    throw v2
.end method

.method public addClientProgress(F)V
    .locals 5
    .param p1, "progress"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 172
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 174
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageInstallerSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    #@11
    .line 176
    iget-object v2, p0, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x2

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 169
    return-void

    #@22
    .line 179
    :catchall_0
    move-exception v2

    #@23
    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 179
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 252
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 254
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageInstallerSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 255
    iget-object v2, p0, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x6

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 249
    return-void

    #@1f
    .line 258
    :catchall_0
    move-exception v2

    #@20
    .line 259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 258
    throw v2
.end method

.method public commit(Landroid/content/IntentSender;)V
    .locals 5
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 266
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 268
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageInstallerSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 269
    if-eqz p1, :cond_0

    #@10
    .line 270
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 271
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 276
    :goto_0
    iget-object v2, p0, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x7

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 263
    return-void

    #@29
    .line 274
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
    .line 279
    :catchall_0
    move-exception v2

    #@2f
    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 279
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 152
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    #@3
    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 6
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
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 190
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageInstallerSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 191
    iget-object v3, p0, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 196
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 199
    return-object v2

    #@23
    .line 195
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 195
    throw v3
.end method

.method public openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 229
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 232
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageInstallerSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 234
    iget-object v3, p0, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x5

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 237
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
    .line 244
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 247
    return-object v2

    #@30
    .line 240
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    #@32
    .line 243
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    #@33
    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 243
    throw v3
.end method

.method public openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 204
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 207
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageInstallerSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 208
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 209
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 210
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    #@17
    .line 211
    iget-object v3, p0, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x4

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 214
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@29
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 221
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 224
    return-object v2

    #@36
    .line 217
    :cond_0
    const/4 v2, 0x0

    #@37
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    #@38
    .line 220
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    #@39
    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 220
    throw v3
.end method

.method public setClientProgress(F)V
    .locals 5
    .param p1, "progress"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 157
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 159
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageInstallerSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    #@11
    .line 161
    iget-object v2, p0, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x1

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 154
    return-void

    #@22
    .line 164
    :catchall_0
    move-exception v2

    #@23
    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 164
    throw v2
.end method
