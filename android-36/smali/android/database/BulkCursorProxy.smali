.class final Landroid/database/BulkCursorProxy;
.super Ljava/lang/Object;
.source "BulkCursorNative.java"

# interfaces
.implements Landroid/database/IBulkCursor;


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private greylist mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/BulkCursorProxy;->mExtras:Landroid/os/Bundle;

    .line 150
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 212
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 214
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IBulkCursor"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Landroid/database/sqlite/Flags;->onewayFinalizerCloseFixed()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_27

    const-string v2, "FinalizerDaemon"

    .line 219
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    move v2, v3

    goto :goto_28

    :cond_27
    move v2, v4

    .line 220
    .local v2, "fromFinalizer":Z
    :goto_28
    iget-object v5, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    .line 221
    if-eqz v2, :cond_2d

    goto :goto_2e

    :cond_2d
    move v3, v4

    .line 220
    :goto_2e
    const/4 v4, 0x7

    invoke-interface {v5, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 222
    if-nez v2, :cond_37

    .line 223
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_3f

    .line 226
    .end local v2    # "fromFinalizer":Z
    :cond_37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 228
    nop

    .line 229
    return-void

    .line 226
    :catchall_3f
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 228
    throw v2
.end method

.method public blacklist deactivate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 199
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IBulkCursor"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 202
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1f

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    nop

    .line 207
    return-void

    .line 204
    :catchall_1f
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    throw v2
.end method

.method public blacklist getExtras()Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Landroid/database/BulkCursorProxy;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_30

    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 258
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 260
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.IBulkCursor"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 263
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 265
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Landroid/database/BulkCursorProxy;->mExtras:Landroid/os/Bundle;
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_28

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    goto :goto_30

    .line 267
    :catchall_28
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    throw v2

    .line 271
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_30
    :goto_30
    iget-object v0, p0, Landroid/database/BulkCursorProxy;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getWindow(I)Landroid/database/CursorWindow;
    .registers 7
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 160
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 162
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IBulkCursor"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v2, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 166
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, "window":Landroid/database/CursorWindow;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_26

    .line 170
    invoke-static {v1}, Landroid/database/CursorWindow;->newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2e

    move-object v2, v3

    .line 172
    :cond_26
    nop

    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 172
    return-object v2

    .line 174
    .end local v2    # "window":Landroid/database/CursorWindow;
    :catchall_2e
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 176
    throw v2
.end method

.method public blacklist onMove(I)V
    .registers 7
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 181
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 183
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IBulkCursor"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v2, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 187
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    nop

    .line 192
    return-void

    .line 189
    :catchall_22
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    throw v2
.end method

.method public blacklist requery(Landroid/database/IContentObserver;)I
    .registers 7
    .param p1, "observer"    # Landroid/database/IContentObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 233
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 235
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IBulkCursor"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 238
    iget-object v2, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 239
    .local v2, "result":Z
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 242
    if-nez v2, :cond_1f

    .line 243
    const/4 v3, -0x1

    .local v3, "count":I
    goto :goto_29

    .line 245
    .end local v3    # "count":I
    :cond_1f
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 246
    .restart local v3    # "count":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Landroid/database/BulkCursorProxy;->mExtras:Landroid/os/Bundle;
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_31

    .line 248
    :goto_29
    nop

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 248
    return v3

    .line 250
    .end local v2    # "result":Z
    .end local v3    # "count":I
    :catchall_31
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    throw v2
.end method

.method public blacklist respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 276
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 278
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.IBulkCursor"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 281
    iget-object v2, p0, Landroid/database/BulkCursorProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 282
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    .line 285
    .local v2, "returnExtras":Landroid/os/Bundle;
    nop

    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    return-object v2

    .line 287
    .end local v2    # "returnExtras":Landroid/os/Bundle;
    :catchall_26
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 289
    throw v2
.end method
