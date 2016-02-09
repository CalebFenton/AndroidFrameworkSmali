.class Landroid/hardware/input/IInputManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager$Stub;
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
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 300
    iput-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 298
    return-void
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 590
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 592
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 593
    if-eqz p1, :cond_0

    #@10
    .line 594
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 595
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/hardware/input/InputDeviceIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 600
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 601
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xd

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 602
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 587
    return-void

    #@2d
    .line 598
    :cond_0
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 604
    :catchall_0
    move-exception v2

    #@33
    .line 605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 604
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 671
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 673
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 674
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 675
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 676
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x11

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 677
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 668
    return-void

    #@26
    .line 679
    :catchall_0
    move-exception v2

    #@27
    .line 680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 679
    throw v2
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 6
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 520
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 523
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 524
    if-eqz p1, :cond_0

    #@10
    .line 525
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 526
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/hardware/input/InputDeviceIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 531
    :goto_0
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xa

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 532
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 533
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result-object v2

    #@27
    .line 536
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 539
    return-object v2

    #@2e
    .line 529
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@2f
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 535
    :catchall_0
    move-exception v3

    #@34
    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 535
    throw v3
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 6
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 318
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 320
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 321
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 323
    sget-object v3, Landroid/view/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 330
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 333
    return-object v2

    #@30
    .line 326
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/view/InputDevice;
    goto :goto_0

    #@32
    .line 329
    .end local v2    # "_result":Landroid/view/InputDevice;
    :catchall_0
    move-exception v3

    #@33
    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 329
    throw v3
.end method

.method public getInputDeviceIds()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 338
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 341
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 342
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 343
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 347
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 350
    return-object v2

    #@23
    .line 346
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@24
    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 346
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 308
    const-string/jumbo v0, "android.hardware.input.IInputManager"

    #@3
    return-object v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 6
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 497
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 500
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 501
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 502
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x9

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 503
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 504
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 505
    sget-object v3, Landroid/hardware/input/KeyboardLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/hardware/input/KeyboardLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 512
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 515
    return-object v2

    #@31
    .line 508
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Landroid/hardware/input/KeyboardLayout;
    goto :goto_0

    #@33
    .line 511
    .end local v2    # "_result":Landroid/hardware/input/KeyboardLayout;
    :catchall_0
    move-exception v3

    #@34
    .line 512
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 511
    throw v3
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 480
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 483
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 484
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 485
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 486
    sget-object v3, Landroid/hardware/input/KeyboardLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, [Landroid/hardware/input/KeyboardLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 489
    .local v2, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 492
    return-object v2

    #@28
    .line 488
    .end local v2    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :catchall_0
    move-exception v3

    #@29
    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 488
    throw v3
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 6
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 566
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 569
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 570
    if-eqz p1, :cond_0

    #@10
    .line 571
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 572
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/hardware/input/InputDeviceIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 577
    :goto_0
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xc

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 578
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 579
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result-object v2

    #@27
    .line 582
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 585
    return-object v2

    #@2e
    .line 575
    .end local v2    # "_result":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@2f
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 581
    :catchall_0
    move-exception v3

    #@34
    .line 582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 581
    throw v3
.end method

.method public getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 431
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 434
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 435
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 436
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 437
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x6

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 440
    sget-object v3, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/hardware/input/TouchCalibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 447
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 450
    return-object v2

    #@33
    .line 443
    :cond_0
    const/4 v2, 0x0

    #@34
    .local v2, "_result":Landroid/hardware/input/TouchCalibration;
    goto :goto_0

    #@35
    .line 446
    .end local v2    # "_result":Landroid/hardware/input/TouchCalibration;
    :catchall_0
    move-exception v3

    #@36
    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 446
    throw v3
.end method

.method public hasKeys(II[I[Z)Z
    .locals 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "keyExists"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 357
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 360
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 362
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 363
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    #@17
    .line 364
    if-nez p4, :cond_0

    #@19
    .line 365
    const/4 v3, -0x1

    #@1a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 370
    :goto_0
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/4 v4, 0x3

    #@20
    const/4 v5, 0x0

    #@21
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@24
    .line 371
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@27
    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_1

    #@2d
    const/4 v2, 0x1

    #@2e
    .line 373
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readBooleanArray([Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 379
    return v2

    #@38
    .line 368
    .end local v2    # "_result":Z
    :cond_0
    :try_start_1
    array-length v3, p4

    #@39
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 375
    :catchall_0
    move-exception v3

    #@3e
    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 375
    throw v3

    #@45
    .line 372
    :cond_1
    const/4 v2, 0x0

    #@46
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 404
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 407
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 408
    if-eqz p1, :cond_0

    #@10
    .line 409
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 410
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/view/InputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 415
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 416
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x5

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 418
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
    .line 421
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 424
    return v2

    #@33
    .line 413
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
    .line 420
    :catchall_0
    move-exception v3

    #@39
    .line 421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 420
    throw v3

    #@40
    .line 418
    :cond_1
    const/4 v2, 0x0

    #@41
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 636
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 638
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.input.IInputManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 639
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 640
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xf

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 641
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 633
    return-void

    #@2a
    .line 643
    :catchall_0
    move-exception v2

    #@2b
    .line 644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 643
    throw v2
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 612
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 615
    if-eqz p1, :cond_0

    #@10
    .line 616
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 617
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/hardware/input/InputDeviceIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 622
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 623
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xe

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 624
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 609
    return-void

    #@2d
    .line 620
    :cond_0
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 626
    :catchall_0
    move-exception v2

    #@33
    .line 627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 626
    throw v2
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 544
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 546
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 547
    if-eqz p1, :cond_0

    #@10
    .line 548
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 549
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/hardware/input/InputDeviceIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 554
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 555
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xb

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 541
    return-void

    #@2d
    .line 552
    :cond_0
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 558
    :catchall_0
    move-exception v2

    #@33
    .line 559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 558
    throw v2
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 5
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "rotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 455
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 457
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 459
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 460
    if-eqz p3, :cond_0

    #@16
    .line 461
    const/4 v2, 0x1

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 462
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p3, v0, v2}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 467
    :goto_0
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v3, 0x7

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 468
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 452
    return-void

    #@2f
    .line 465
    :cond_0
    const/4 v2, 0x0

    #@30
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 470
    :catchall_0
    move-exception v2

    #@35
    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 470
    throw v2
.end method

.method public tryPointerSpeed(I)V
    .locals 5
    .param p1, "speed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 386
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 390
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x4

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 383
    return-void

    #@22
    .line 393
    :catchall_0
    move-exception v2

    #@23
    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 393
    throw v2
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I
    .param p4, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 653
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 655
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.input.IInputManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 656
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 657
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    #@14
    .line 658
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 659
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 660
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x10

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 661
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 650
    return-void

    #@2c
    .line 663
    :catchall_0
    move-exception v2

    #@2d
    .line 664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 663
    throw v2
.end method
