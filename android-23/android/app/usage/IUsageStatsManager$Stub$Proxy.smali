.class Landroid/app/usage/IUsageStatsManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUsageStatsManager.java"

# interfaces
.implements Landroid/app/usage/IUsageStatsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/IUsageStatsManager$Stub;
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
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 160
    iput-object p1, p0, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 158
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 168
    const-string/jumbo v0, "android.app.usage.IUsageStatsManager"

    #@3
    return-object v0
.end method

.method public isAppInactive(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
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
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 270
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.usage.IUsageStatsManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 272
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 273
    iget-object v3, p0, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x5

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    const/4 v2, 0x1

    #@25
    .line 278
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 281
    return v2

    #@2c
    .line 275
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2d
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2e
    .line 277
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2f
    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 277
    throw v3
.end method

.method public queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 202
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.usage.IUsageStatsManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 204
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 205
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    #@17
    .line 206
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 207
    iget-object v3, p0, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v4, 0x2

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@24
    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_0

    #@2a
    .line 210
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@2c
    invoke-interface {v3, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 217
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 220
    return-object v2

    #@39
    .line 213
    :cond_0
    const/4 v2, 0x0

    #@3a
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    goto :goto_0

    #@3b
    .line 216
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v3

    #@3c
    .line 217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 216
    throw v3
.end method

.method public queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 7
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 225
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 228
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.usage.IUsageStatsManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 229
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 230
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 231
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 232
    iget-object v3, p0, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x3

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 234
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 235
    sget-object v3, Landroid/app/usage/UsageEvents;->CREATOR:Landroid/os/Parcelable$Creator;

    #@29
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Landroid/app/usage/UsageEvents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 242
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 245
    return-object v2

    #@36
    .line 238
    :cond_0
    const/4 v2, 0x0

    #@37
    .local v2, "_result":Landroid/app/usage/UsageEvents;
    goto :goto_0

    #@38
    .line 241
    .end local v2    # "_result":Landroid/app/usage/UsageEvents;
    :catchall_0
    move-exception v3

    #@39
    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 241
    throw v3
.end method

.method public queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 173
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.usage.IUsageStatsManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 178
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 179
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    #@17
    .line 180
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 181
    iget-object v3, p0, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v4, 0x1

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@24
    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_0

    #@2a
    .line 184
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@2c
    invoke-interface {v3, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 191
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 194
    return-object v2

    #@39
    .line 187
    :cond_0
    const/4 v2, 0x0

    #@3a
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    goto :goto_0

    #@3b
    .line 190
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v3

    #@3c
    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 190
    throw v3
.end method

.method public setAppInactive(Ljava/lang/String;ZI)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "inactive"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 250
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 252
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.usage.IUsageStatsManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 253
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 254
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 255
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 256
    iget-object v2, p0, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x4

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 247
    return-void

    #@2c
    .line 259
    :catchall_0
    move-exception v2

    #@2d
    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 259
    throw v2
.end method

.method public whitelistAppTemporarily(Ljava/lang/String;JI)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 286
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 288
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.usage.IUsageStatsManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 290
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 291
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 292
    iget-object v2, p0, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x6

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 283
    return-void

    #@28
    .line 295
    :catchall_0
    move-exception v2

    #@29
    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 295
    throw v2
.end method
