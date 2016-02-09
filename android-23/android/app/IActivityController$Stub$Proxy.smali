.class Landroid/app/IActivityController$Stub$Proxy;
.super Ljava/lang/Object;
.source "IActivityController.java"

# interfaces
.implements Landroid/app/IActivityController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityController$Stub;
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
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 143
    iput-object p1, p0, Landroid/app/IActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 141
    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 192
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IActivityController"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 193
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 194
    iget-object v3, p0, Landroid/app/IActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 195
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 196
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
    .line 199
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 202
    return v2

    #@29
    .line 196
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 198
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 198
    throw v3
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 160
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 163
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IActivityController"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 164
    if-eqz p1, :cond_0

    #@10
    .line 165
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 166
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 171
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 172
    iget-object v3, p0, Landroid/app/IActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x1

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
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    const/4 v2, 0x1

    #@2c
    .line 177
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 180
    return v2

    #@33
    .line 169
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 176
    :catchall_0
    move-exception v3

    #@39
    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 176
    throw v3

    #@40
    .line 174
    :cond_1
    const/4 v2, 0x0

    #@41
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 7
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "timeMillis"    # J
    .param p7, "stackTrace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 212
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 215
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IActivityController"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 217
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 218
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 219
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 220
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    #@1d
    .line 221
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 222
    iget-object v3, p0, Landroid/app/IActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@22
    const/4 v4, 0x3

    #@23
    const/4 v5, 0x0

    #@24
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2a
    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_0

    #@30
    const/4 v2, 0x1

    #@31
    .line 227
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 230
    return v2

    #@38
    .line 224
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@39
    .restart local v2    # "_result":Z
    goto :goto_0

    #@3a
    .line 226
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@3b
    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 226
    throw v3
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "annotation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 238
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 241
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IActivityController"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 242
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 243
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 244
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 245
    iget-object v3, p0, Landroid/app/IActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x4

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v2

    #@25
    .line 250
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 253
    return v2

    #@2c
    .line 249
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2d
    .line 250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 249
    throw v3
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processStats"    # Ljava/lang/String;
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
    .line 266
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IActivityController"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 268
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 269
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 270
    iget-object v3, p0, Landroid/app/IActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x5

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v2

    #@25
    .line 275
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 278
    return v2

    #@2c
    .line 274
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2d
    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 274
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/app/IActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 151
    const-string/jumbo v0, "android.app.IActivityController"

    #@3
    return-object v0
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 288
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 291
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IActivityController"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 293
    iget-object v3, p0, Landroid/app/IActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x6

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 298
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 301
    return v2

    #@26
    .line 297
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 297
    throw v3
.end method
