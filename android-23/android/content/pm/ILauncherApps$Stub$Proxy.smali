.class Landroid/content/pm/ILauncherApps$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILauncherApps.java"

# interfaces
.implements Landroid/content/pm/ILauncherApps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ILauncherApps$Stub;
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
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 228
    iput-object p1, p0, Landroid/content/pm/ILauncherApps$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 226
    return-void
.end method


# virtual methods
.method public addOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 241
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 243
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.ILauncherApps"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 244
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/content/pm/IOnAppsChangedListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 245
    iget-object v2, p0, Landroid/content/pm/ILauncherApps$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 238
    return-void

    #@29
    .line 248
    :catchall_0
    move-exception v2

    #@2a
    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 248
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Landroid/content/pm/ILauncherApps$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 236
    const-string/jumbo v0, "android.content.pm.ILauncherApps"

    #@3
    return-object v0
.end method

.method public getLauncherActivities(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 271
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 274
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.ILauncherApps"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 276
    if-eqz p2, :cond_0

    #@13
    .line 277
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 278
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 283
    :goto_0
    iget-object v3, p0, Landroid/content/pm/ILauncherApps$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x3

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 285
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@27
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result-object v2

    #@2b
    .line 288
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 291
    return-object v2

    #@32
    .line 281
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    const/4 v3, 0x0

    #@33
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    goto :goto_0

    #@37
    .line 287
    :catchall_0
    move-exception v3

    #@38
    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 287
    throw v3
.end method

.method public isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 441
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 444
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.ILauncherApps"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 445
    if-eqz p1, :cond_0

    #@10
    .line 446
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 447
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 452
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 453
    const/4 v3, 0x1

    #@1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 454
    const/4 v3, 0x0

    #@1f
    invoke-virtual {p2, v0, v3}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 459
    :goto_1
    iget-object v3, p0, Landroid/content/pm/ILauncherApps$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v4, 0x8

    #@26
    const/4 v5, 0x0

    #@27
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2d
    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_2

    #@33
    const/4 v2, 0x1

    #@34
    .line 464
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 467
    return v2

    #@3b
    .line 450
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@3c
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .line 463
    :catchall_0
    move-exception v3

    #@41
    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 463
    throw v3

    #@48
    .line 457
    :cond_1
    const/4 v3, 0x0

    #@49
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    goto :goto_1

    #@4d
    .line 461
    :cond_2
    const/4 v2, 0x0

    #@4e
    .restart local v2    # "_result":Z
    goto :goto_2
.end method

.method public isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 416
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 419
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.ILauncherApps"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 421
    if-eqz p2, :cond_0

    #@13
    .line 422
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 423
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 428
    :goto_0
    iget-object v3, p0, Landroid/content/pm/ILauncherApps$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x7

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 430
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
    .line 433
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 436
    return v2

    #@33
    .line 426
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
    .line 432
    :catchall_0
    move-exception v3

    #@39
    .line 433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 432
    throw v3

    #@40
    .line 430
    :cond_1
    const/4 v2, 0x0

    #@41
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 256
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 258
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.ILauncherApps"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 259
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/content/pm/IOnAppsChangedListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 260
    iget-object v2, p0, Landroid/content/pm/ILauncherApps$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 253
    return-void

    #@29
    .line 263
    :catchall_0
    move-exception v2

    #@2a
    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 263
    throw v2
.end method

.method public resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 299
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.ILauncherApps"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 300
    if-eqz p1, :cond_0

    #@10
    .line 301
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 302
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 307
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 308
    const/4 v3, 0x1

    #@1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 309
    const/4 v3, 0x0

    #@1f
    invoke-virtual {p2, v0, v3}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 314
    :goto_1
    iget-object v3, p0, Landroid/content/pm/ILauncherApps$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/4 v4, 0x4

    #@25
    const/4 v5, 0x0

    #@26
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2c
    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_2

    #@32
    .line 317
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@34
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 324
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 327
    return-object v2

    #@41
    .line 305
    :cond_0
    const/4 v3, 0x0

    #@42
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 323
    :catchall_0
    move-exception v3

    #@47
    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 323
    throw v3

    #@4e
    .line 312
    :cond_1
    const/4 v3, 0x0

    #@4f
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    goto :goto_1

    #@53
    .line 320
    :cond_2
    const/4 v2, 0x0

    #@54
    .local v2, "_result":Landroid/content/pm/ResolveInfo;
    goto :goto_2
.end method

.method public showAppDetailsAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 374
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 376
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.ILauncherApps"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 377
    if-eqz p1, :cond_0

    #@10
    .line 378
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 379
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 384
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 385
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 386
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 391
    :goto_1
    if-eqz p3, :cond_2

    #@24
    .line 392
    const/4 v2, 0x1

    #@25
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 393
    const/4 v2, 0x0

    #@29
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c
    .line 398
    :goto_2
    if-eqz p4, :cond_3

    #@2e
    .line 399
    const/4 v2, 0x1

    #@2f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 400
    const/4 v2, 0x0

    #@33
    invoke-virtual {p4, v0, v2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@36
    .line 405
    :goto_3
    iget-object v2, p0, Landroid/content/pm/ILauncherApps$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@38
    const/4 v3, 0x6

    #@39
    const/4 v4, 0x0

    #@3a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3d
    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 371
    return-void

    #@47
    .line 382
    :cond_0
    const/4 v2, 0x0

    #@48
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    goto :goto_0

    #@4c
    .line 408
    :catchall_0
    move-exception v2

    #@4d
    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@50
    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@53
    .line 408
    throw v2

    #@54
    .line 389
    :cond_1
    const/4 v2, 0x0

    #@55
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    goto :goto_1

    #@59
    .line 396
    :cond_2
    const/4 v2, 0x0

    #@5a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    goto :goto_2

    #@5e
    .line 403
    :cond_3
    const/4 v2, 0x0

    #@5f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@62
    goto :goto_3
.end method

.method public startActivityAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 332
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.ILauncherApps"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 335
    if-eqz p1, :cond_0

    #@10
    .line 336
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 337
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 342
    :goto_0
    if-eqz p2, :cond_1

    #@1a
    .line 343
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 344
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 349
    :goto_1
    if-eqz p3, :cond_2

    #@24
    .line 350
    const/4 v2, 0x1

    #@25
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 351
    const/4 v2, 0x0

    #@29
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c
    .line 356
    :goto_2
    if-eqz p4, :cond_3

    #@2e
    .line 357
    const/4 v2, 0x1

    #@2f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 358
    const/4 v2, 0x0

    #@33
    invoke-virtual {p4, v0, v2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@36
    .line 363
    :goto_3
    iget-object v2, p0, Landroid/content/pm/ILauncherApps$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@38
    const/4 v3, 0x5

    #@39
    const/4 v4, 0x0

    #@3a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3d
    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 329
    return-void

    #@47
    .line 340
    :cond_0
    const/4 v2, 0x0

    #@48
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    goto :goto_0

    #@4c
    .line 366
    :catchall_0
    move-exception v2

    #@4d
    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@50
    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@53
    .line 366
    throw v2

    #@54
    .line 347
    :cond_1
    const/4 v2, 0x0

    #@55
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    goto :goto_1

    #@59
    .line 354
    :cond_2
    const/4 v2, 0x0

    #@5a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    goto :goto_2

    #@5e
    .line 361
    :cond_3
    const/4 v2, 0x0

    #@5f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@62
    goto :goto_3
.end method
