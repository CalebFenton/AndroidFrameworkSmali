.class Landroid/app/backup/IRestoreSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRestoreSession.java"

# interfaces
.implements Landroid/app/backup/IRestoreSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IRestoreSession$Stub;
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
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 114
    iput-object p1, p0, Landroid/app/backup/IRestoreSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 112
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Landroid/app/backup/IRestoreSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public endRestoreSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 265
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.backup.IRestoreSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 266
    iget-object v2, p0, Landroid/app/backup/IRestoreSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x5

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 267
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 260
    return-void

    #@1f
    .line 269
    :catchall_0
    move-exception v2

    #@20
    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 269
    throw v2
.end method

.method public getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I
    .locals 6
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.backup.IRestoreSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 139
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/app/backup/IRestoreObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 140
    iget-object v3, p0, Landroid/app/backup/IRestoreSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x1

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v2

    #@26
    .line 145
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 148
    return v2

    #@2d
    .line 144
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2e
    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 144
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 122
    const-string/jumbo v0, "android.app.backup.IRestoreSession"

    #@3
    return-object v0
.end method

.method public restoreAll(JLandroid/app/backup/IRestoreObserver;)I
    .locals 7
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 166
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 169
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.backup.IRestoreSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 170
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@12
    .line 171
    if-eqz p3, :cond_0

    #@14
    invoke-interface {p3}, Landroid/app/backup/IRestoreObserver;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 172
    iget-object v3, p0, Landroid/app/backup/IRestoreSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x2

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v2

    #@29
    .line 177
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 180
    return v2

    #@30
    .line 176
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@31
    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 176
    throw v3
.end method

.method public restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 240
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.backup.IRestoreSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 242
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Landroid/app/backup/IRestoreObserver;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 243
    iget-object v3, p0, Landroid/app/backup/IRestoreSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x4

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v2

    #@29
    .line 248
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 251
    return v2

    #@30
    .line 247
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@31
    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 247
    throw v3
.end method

.method public restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I
    .locals 7
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 202
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.backup.IRestoreSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 206
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@12
    .line 207
    if-eqz p3, :cond_0

    #@14
    invoke-interface {p3}, Landroid/app/backup/IRestoreObserver;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 208
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1e
    .line 209
    iget-object v3, p0, Landroid/app/backup/IRestoreSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v4, 0x3

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result v2

    #@2c
    .line 214
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 217
    return v2

    #@33
    .line 213
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@34
    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 213
    throw v3
.end method
