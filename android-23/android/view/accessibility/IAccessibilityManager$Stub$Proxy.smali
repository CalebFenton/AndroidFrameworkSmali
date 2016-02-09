.class Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager$Stub;
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
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 195
    iput-object p1, p0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 193
    return-void
.end method


# virtual methods
.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I
    .locals 6
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .param p2, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 304
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 307
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.accessibility.IAccessibilityManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 308
    if-eqz p1, :cond_1

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v4

    #@15
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 309
    if-eqz p2, :cond_0

    #@1a
    invoke-interface {p2}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v3

    #@1e
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 310
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 311
    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/4 v4, 0x6

    #@27
    const/4 v5, 0x0

    #@28
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2e
    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    move-result v2

    #@32
    .line 316
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 319
    return v2

    #@39
    .end local v2    # "_result":I
    :cond_1
    move-object v4, v3

    #@3a
    .line 308
    goto :goto_0

    #@3b
    .line 315
    :catchall_0
    move-exception v3

    #@3c
    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 315
    throw v3
.end method

.method public addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I
    .locals 6
    .param p1, "client"    # Landroid/view/accessibility/IAccessibilityManagerClient;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 208
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 211
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.accessibility.IAccessibilityManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 212
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 213
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 214
    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x1

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v2

    #@29
    .line 219
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 222
    return v2

    #@30
    .line 218
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@31
    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 218
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .locals 6
    .param p1, "feedbackType"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
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
    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 273
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.accessibility.IAccessibilityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 274
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 275
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 276
    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x4

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 278
    sget-object v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 281
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 284
    return-object v2

    #@2b
    .line 280
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :catchall_0
    move-exception v3

    #@2c
    .line 281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 280
    throw v3
.end method

.method public getInstalledAccessibilityServiceList(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
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
    .line 255
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.accessibility.IAccessibilityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 256
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 257
    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x3

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 259
    sget-object v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v2

    #@21
    .line 262
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 265
    return-object v2

    #@28
    .line 261
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :catchall_0
    move-exception v3

    #@29
    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 261
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 203
    const-string/jumbo v0, "android.view.accessibility.IAccessibilityManager"

    #@3
    return-object v0
.end method

.method public getWindowToken(I)Landroid/os/IBinder;
    .locals 6
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 399
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 402
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.accessibility.IAccessibilityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 404
    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xb

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 409
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 412
    return-object v2

    #@27
    .line 408
    .end local v2    # "_result":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    #@28
    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 408
    throw v3
.end method

.method public interrupt(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 291
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.accessibility.IAccessibilityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 293
    iget-object v2, p0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x5

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 286
    return-void

    #@22
    .line 296
    :catchall_0
    move-exception v2

    #@23
    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 296
    throw v2
.end method

.method public registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 5
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 339
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 341
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.accessibility.IAccessibilityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 343
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v2

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 344
    if-eqz p3, :cond_1

    #@1d
    .line 345
    const/4 v2, 0x1

    #@1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 346
    const/4 v2, 0x0

    #@22
    invoke-virtual {p3, v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 351
    :goto_0
    iget-object v2, p0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v3, 0x8

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 352
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 336
    return-void

    #@37
    .line 349
    :cond_1
    const/4 v2, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 354
    :catchall_0
    move-exception v2

    #@3d
    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 354
    throw v2
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 5
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 324
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 326
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.accessibility.IAccessibilityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 327
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 328
    iget-object v2, p0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x7

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 321
    return-void

    #@29
    .line 331
    :catchall_0
    move-exception v2

    #@2a
    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 331
    throw v2
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z
    .locals 6
    .param p1, "uiEvent"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 227
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 230
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.accessibility.IAccessibilityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 231
    if-eqz p1, :cond_0

    #@10
    .line 232
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 233
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 238
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 239
    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x2

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 241
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
    .line 244
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 247
    return v2

    #@33
    .line 236
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
    .line 243
    :catchall_0
    move-exception v3

    #@39
    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 243
    throw v3

    #@40
    .line 241
    :cond_1
    const/4 v2, 0x0

    #@41
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "touchExplorationEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 379
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.accessibility.IAccessibilityManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 380
    if-eqz p1, :cond_0

    #@12
    .line 381
    const/4 v4, 0x1

    #@13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 382
    const/4 v4, 0x0

    #@17
    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 387
    :goto_0
    if-eqz p2, :cond_1

    #@1c
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 388
    iget-object v2, p0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/16 v3, 0xa

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    .line 389
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 374
    return-void

    #@31
    .line 385
    :cond_0
    const/4 v4, 0x0

    #@32
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 391
    :catchall_0
    move-exception v2

    #@37
    .line 392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 391
    throw v2

    #@3e
    :cond_1
    move v2, v3

    #@3f
    .line 387
    goto :goto_1
.end method

.method public unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 5
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 362
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 364
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.accessibility.IAccessibilityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 365
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 366
    iget-object v2, p0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x9

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 359
    return-void

    #@2a
    .line 369
    :catchall_0
    move-exception v2

    #@2b
    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 369
    throw v2
.end method
