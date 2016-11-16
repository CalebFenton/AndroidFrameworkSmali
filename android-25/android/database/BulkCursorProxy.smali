.class final Landroid/database/BulkCursorProxy;
.super Ljava/lang/Object;
.source "BulkCursorNative.java"

# interfaces
.implements Landroid/database/IBulkCursor;


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 146
    iput-object p1, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 147
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/database/BulkCursorProxy;->mExtras:Landroid/os/Bundle;

    #@8
    .line 144
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

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
    .line 209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 210
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 212
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.IBulkCursor"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 214
    iget-object v2, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x7

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 215
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 207
    return-void

    #@1f
    .line 216
    :catchall_0
    move-exception v2

    #@20
    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 216
    throw v2
.end method

.method public deactivate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 195
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 197
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.IBulkCursor"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 199
    iget-object v2, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x2

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 200
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 192
    return-void

    #@1f
    .line 201
    :catchall_0
    move-exception v2

    #@20
    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 201
    throw v2
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 247
    iget-object v2, p0, Landroid/database/BulkCursorProxy;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v0

    #@8
    .line 249
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@b
    move-result-object v1

    #@c
    .line 251
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.IBulkCursor"

    #@f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@12
    .line 253
    iget-object v2, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/4 v3, 0x5

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 254
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    #@1c
    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@1f
    move-result-object v2

    #@20
    iput-object v2, p0, Landroid/database/BulkCursorProxy;->mExtras:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 262
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    iget-object v2, p0, Landroid/database/BulkCursorProxy;->mExtras:Landroid/os/Bundle;

    #@2a
    return-object v2

    #@2b
    .line 257
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v1    # "reply":Landroid/os/Parcel;
    :catchall_0
    move-exception v2

    #@2c
    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 257
    throw v2
.end method

.method public getWindow(I)Landroid/database/CursorWindow;
    .locals 7
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 158
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 160
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IBulkCursor"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 161
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 163
    iget-object v3, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/4 v4, 0x1

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 164
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    #@1c
    .line 166
    const/4 v2, 0x0

    #@1d
    .line 167
    .local v2, "window":Landroid/database/CursorWindow;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v3

    #@21
    if-ne v3, v6, :cond_0

    #@23
    .line 168
    invoke-static {v1}, Landroid/database/CursorWindow;->newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result-object v2

    #@27
    .line 172
    .end local v2    # "window":Landroid/database/CursorWindow;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 170
    return-object v2

    #@2e
    .line 171
    :catchall_0
    move-exception v3

    #@2f
    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 171
    throw v3
.end method

.method public onMove(I)V
    .locals 5
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 179
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 181
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.IBulkCursor"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 182
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 184
    iget-object v2, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x4

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 185
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 177
    return-void

    #@22
    .line 186
    :catchall_0
    move-exception v2

    #@23
    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 186
    throw v2
.end method

.method public requery(Landroid/database/IContentObserver;)I
    .locals 7
    .param p1, "observer"    # Landroid/database/IContentObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 224
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 226
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.content.IBulkCursor"

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 227
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    #@11
    .line 229
    iget-object v4, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v5, 0x3

    #@14
    const/4 v6, 0x0

    #@15
    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    move-result v3

    #@19
    .line 230
    .local v3, "result":Z
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 233
    if-nez v3, :cond_0

    #@1e
    .line 234
    const/4 v0, -0x1

    #@1f
    .line 241
    .local v0, "count":I
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 242
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 239
    return v0

    #@26
    .line 236
    .end local v0    # "count":I
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    .line 237
    .restart local v0    # "count":I
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@2d
    move-result-object v4

    #@2e
    iput-object v4, p0, Landroid/database/BulkCursorProxy;->mExtras:Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    goto :goto_0

    #@31
    .line 240
    .end local v0    # "count":I
    .end local v3    # "result":Z
    :catchall_0
    move-exception v4

    #@32
    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 242
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 240
    throw v4
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 267
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 269
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.IBulkCursor"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@11
    .line 272
    iget-object v3, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x6

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 273
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    #@1b
    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 278
    .local v2, "returnExtras":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 276
    return-object v2

    #@26
    .line 277
    .end local v2    # "returnExtras":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    #@27
    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 277
    throw v3
.end method
