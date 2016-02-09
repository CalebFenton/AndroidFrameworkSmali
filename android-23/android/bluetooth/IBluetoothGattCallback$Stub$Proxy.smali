.class Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothGattCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattCallback$Stub;
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
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 474
    iput-object p1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 472
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 478
    iget-object v0, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 482
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    #@3
    return-object v0
.end method

.method public onBatchScanResults(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 532
    .local p1, "batchResults":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 534
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 535
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d
    .line 536
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x4

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 530
    return-void

    #@19
    .line 538
    :catchall_0
    move-exception v1

    #@1a
    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 538
    throw v1
.end method

.method public onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 677
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 679
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 680
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 681
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 682
    if-eqz p5, :cond_0

    #@18
    .line 683
    const/4 v1, 0x1

    #@19
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 684
    const/4 v1, 0x0

    #@1d
    invoke-virtual {p5, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@20
    .line 689
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 690
    if-eqz p7, :cond_1

    #@25
    .line 691
    const/4 v1, 0x1

    #@26
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 692
    const/4 v1, 0x0

    #@2a
    invoke-virtual {p7, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@2d
    .line 697
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeByteArray([B)V

    #@30
    .line 698
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@32
    const/16 v2, 0xa

    #@34
    const/4 v3, 0x0

    #@35
    const/4 v4, 0x1

    #@36
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 673
    return-void

    #@3d
    .line 687
    :cond_0
    const/4 v1, 0x0

    #@3e
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 700
    :catchall_0
    move-exception v1

    #@43
    .line 701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 700
    throw v1

    #@47
    .line 695
    :cond_1
    const/4 v1, 0x0

    #@48
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    goto :goto_1
.end method

.method public onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 708
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 709
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 710
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 711
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 712
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 713
    if-eqz p5, :cond_0

    #@18
    .line 714
    const/4 v1, 0x1

    #@19
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 715
    const/4 v1, 0x0

    #@1d
    invoke-virtual {p5, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@20
    .line 720
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 721
    if-eqz p7, :cond_1

    #@25
    .line 722
    const/4 v1, 0x1

    #@26
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 723
    const/4 v1, 0x0

    #@2a
    invoke-virtual {p7, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@2d
    .line 728
    :goto_1
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2f
    const/16 v2, 0xb

    #@31
    const/4 v3, 0x0

    #@32
    const/4 v4, 0x1

    #@33
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 704
    return-void

    #@3a
    .line 718
    :cond_0
    const/4 v1, 0x0

    #@3b
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 730
    :catchall_0
    move-exception v1

    #@40
    .line 731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 730
    throw v1

    #@44
    .line 726
    :cond_1
    const/4 v1, 0x0

    #@45
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    goto :goto_1
.end method

.method public onClientConnectionState(IIZLjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "connected"    # Z
    .param p4, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 499
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 501
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothGattCallback"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 503
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 504
    if-eqz p3, :cond_0

    #@13
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 505
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 506
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1b
    const/4 v2, 0x2

    #@1c
    const/4 v3, 0x0

    #@1d
    const/4 v4, 0x1

    #@1e
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 497
    return-void

    #@25
    .line 504
    :cond_0
    const/4 v1, 0x0

    #@26
    goto :goto_0

    #@27
    .line 508
    :catchall_0
    move-exception v1

    #@28
    .line 509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 508
    throw v1
.end method

.method public onClientRegistered(II)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 488
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 489
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 490
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 491
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 484
    return-void

    #@1c
    .line 493
    :catchall_0
    move-exception v1

    #@1d
    .line 494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 493
    throw v1
.end method

.method public onConfigureMTU(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mtu"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 904
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 906
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 907
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 908
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/16 v2, 0x13

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 900
    return-void

    #@20
    .line 910
    :catchall_0
    move-exception v1

    #@21
    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 910
    throw v1
.end method

.method public onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;
    .param p10, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 751
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 752
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 753
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 754
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 755
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 756
    if-eqz p5, :cond_0

    #@18
    .line 757
    const/4 v1, 0x1

    #@19
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 758
    const/4 v1, 0x0

    #@1d
    invoke-virtual {p5, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@20
    .line 763
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 764
    if-eqz p7, :cond_1

    #@25
    .line 765
    const/4 v1, 0x1

    #@26
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 766
    const/4 v1, 0x0

    #@2a
    invoke-virtual {p7, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@2d
    .line 771
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 772
    if-eqz p9, :cond_2

    #@32
    .line 773
    const/4 v1, 0x1

    #@33
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 774
    const/4 v1, 0x0

    #@37
    invoke-virtual {p9, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@3a
    .line 779
    :goto_2
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeByteArray([B)V

    #@3d
    .line 780
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@3f
    const/16 v2, 0xd

    #@41
    const/4 v3, 0x0

    #@42
    const/4 v4, 0x1

    #@43
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 747
    return-void

    #@4a
    .line 761
    :cond_0
    const/4 v1, 0x0

    #@4b
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 782
    :catchall_0
    move-exception v1

    #@50
    .line 783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@53
    .line 782
    throw v1

    #@54
    .line 769
    :cond_1
    const/4 v1, 0x0

    #@55
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    goto :goto_1

    #@59
    .line 777
    :cond_2
    const/4 v1, 0x0

    #@5a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5d
    goto :goto_2
.end method

.method public onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 790
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 791
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 792
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 793
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 794
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 795
    if-eqz p5, :cond_0

    #@18
    .line 796
    const/4 v1, 0x1

    #@19
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 797
    const/4 v1, 0x0

    #@1d
    invoke-virtual {p5, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@20
    .line 802
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 803
    if-eqz p7, :cond_1

    #@25
    .line 804
    const/4 v1, 0x1

    #@26
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 805
    const/4 v1, 0x0

    #@2a
    invoke-virtual {p7, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@2d
    .line 810
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 811
    if-eqz p9, :cond_2

    #@32
    .line 812
    const/4 v1, 0x1

    #@33
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 813
    const/4 v1, 0x0

    #@37
    invoke-virtual {p9, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@3a
    .line 818
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@3c
    const/16 v2, 0xe

    #@3e
    const/4 v3, 0x0

    #@3f
    const/4 v4, 0x1

    #@40
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 786
    return-void

    #@47
    .line 800
    :cond_0
    const/4 v1, 0x0

    #@48
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    goto :goto_0

    #@4c
    .line 820
    :catchall_0
    move-exception v1

    #@4d
    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@50
    .line 820
    throw v1

    #@51
    .line 808
    :cond_1
    const/4 v1, 0x0

    #@52
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    goto :goto_1

    #@56
    .line 816
    :cond_2
    const/4 v1, 0x0

    #@57
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5a
    goto :goto_2
.end method

.method public onExecuteWrite(Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 738
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 739
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 740
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 741
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0xc

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 734
    return-void

    #@1d
    .line 743
    :catchall_0
    move-exception v1

    #@1e
    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 743
    throw v1
.end method

.method public onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V
    .locals 5
    .param p1, "onFound"    # Z
    .param p2, "scanResult"    # Landroid/bluetooth/le/ScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 918
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothGattCallback"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 919
    if-eqz p1, :cond_0

    #@e
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 920
    if-eqz p2, :cond_1

    #@13
    .line 921
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 922
    const/4 v1, 0x0

    #@18
    invoke-virtual {p2, v0, v1}, Landroid/bluetooth/le/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 927
    :goto_1
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v2, 0x14

    #@1f
    const/4 v3, 0x0

    #@20
    const/4 v4, 0x1

    #@21
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 914
    return-void

    #@28
    :cond_0
    move v1, v2

    #@29
    .line 919
    goto :goto_0

    #@2a
    .line 925
    :cond_1
    const/4 v1, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_1

    #@2f
    .line 929
    :catchall_0
    move-exception v1

    #@30
    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 929
    throw v1
.end method

.method public onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "charProps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 597
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 598
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 599
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 600
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 601
    if-eqz p4, :cond_0

    #@15
    .line 602
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 603
    const/4 v1, 0x0

    #@1a
    invoke-virtual {p4, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    .line 608
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 609
    if-eqz p6, :cond_1

    #@22
    .line 610
    const/4 v1, 0x1

    #@23
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 611
    const/4 v1, 0x0

    #@27
    invoke-virtual {p6, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@2a
    .line 616
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 617
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2f
    const/4 v2, 0x7

    #@30
    const/4 v3, 0x0

    #@31
    const/4 v4, 0x1

    #@32
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 593
    return-void

    #@39
    .line 606
    :cond_0
    const/4 v1, 0x0

    #@3a
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 619
    :catchall_0
    move-exception v1

    #@3f
    .line 620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 619
    throw v1

    #@43
    .line 614
    :cond_1
    const/4 v1, 0x0

    #@44
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    goto :goto_1
.end method

.method public onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "descrInstId"    # I
    .param p8, "descrUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 627
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 628
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 629
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 630
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 631
    if-eqz p4, :cond_0

    #@15
    .line 632
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 633
    const/4 v1, 0x0

    #@1a
    invoke-virtual {p4, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    .line 638
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 639
    if-eqz p6, :cond_1

    #@22
    .line 640
    const/4 v1, 0x1

    #@23
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 641
    const/4 v1, 0x0

    #@27
    invoke-virtual {p6, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@2a
    .line 646
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 647
    if-eqz p8, :cond_2

    #@2f
    .line 648
    const/4 v1, 0x1

    #@30
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 649
    const/4 v1, 0x0

    #@34
    invoke-virtual {p8, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@37
    .line 654
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@39
    const/16 v2, 0x8

    #@3b
    const/4 v3, 0x0

    #@3c
    const/4 v4, 0x1

    #@3d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 623
    return-void

    #@44
    .line 636
    :cond_0
    const/4 v1, 0x0

    #@45
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 656
    :catchall_0
    move-exception v1

    #@4a
    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 656
    throw v1

    #@4e
    .line 644
    :cond_1
    const/4 v1, 0x0

    #@4f
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@52
    goto :goto_1

    #@53
    .line 652
    :cond_2
    const/4 v1, 0x0

    #@54
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@57
    goto :goto_2
.end method

.method public onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "inclSrvcType"    # I
    .param p6, "inclSrvcInstId"    # I
    .param p7, "inclSrvcUuid"    # Landroid/os/ParcelUuid;
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
    .line 567
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 568
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 569
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 570
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 571
    if-eqz p4, :cond_0

    #@15
    .line 572
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 573
    const/4 v1, 0x0

    #@1a
    invoke-virtual {p4, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    .line 578
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 579
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 580
    if-eqz p7, :cond_1

    #@25
    .line 581
    const/4 v1, 0x1

    #@26
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 582
    const/4 v1, 0x0

    #@2a
    invoke-virtual {p7, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@2d
    .line 587
    :goto_1
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2f
    const/4 v2, 0x6

    #@30
    const/4 v3, 0x0

    #@31
    const/4 v4, 0x1

    #@32
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 563
    return-void

    #@39
    .line 576
    :cond_0
    const/4 v1, 0x0

    #@3a
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 589
    :catchall_0
    move-exception v1

    #@3f
    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 589
    throw v1

    #@43
    .line 585
    :cond_1
    const/4 v1, 0x0

    #@44
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    goto :goto_1
.end method

.method public onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 546
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 547
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 548
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 549
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 550
    if-eqz p4, :cond_0

    #@15
    .line 551
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 552
    const/4 v1, 0x0

    #@1a
    invoke-virtual {p4, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    .line 557
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/4 v2, 0x5

    #@20
    const/4 v3, 0x0

    #@21
    const/4 v4, 0x1

    #@22
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 542
    return-void

    #@29
    .line 555
    :cond_0
    const/4 v1, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 559
    :catchall_0
    move-exception v1

    #@2f
    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 559
    throw v1
.end method

.method public onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "isStart"    # Z
    .param p3, "advertiseSettings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 872
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.bluetooth.IBluetoothGattCallback"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 873
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 874
    if-eqz p2, :cond_0

    #@11
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 875
    if-eqz p3, :cond_1

    #@16
    .line 876
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 877
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p3, v0, v1}, Landroid/bluetooth/le/AdvertiseSettings;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 882
    :goto_1
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v2, 0x11

    #@22
    const/4 v3, 0x0

    #@23
    const/4 v4, 0x1

    #@24
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 868
    return-void

    #@2b
    :cond_0
    move v1, v2

    #@2c
    .line 874
    goto :goto_0

    #@2d
    .line 880
    :cond_1
    const/4 v1, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_1

    #@32
    .line 884
    :catchall_0
    move-exception v1

    #@33
    .line 885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 884
    throw v1
.end method

.method public onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 828
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 829
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 830
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 831
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 832
    if-eqz p4, :cond_0

    #@15
    .line 833
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 834
    const/4 v1, 0x0

    #@1a
    invoke-virtual {p4, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    .line 839
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 840
    if-eqz p6, :cond_1

    #@22
    .line 841
    const/4 v1, 0x1

    #@23
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 842
    const/4 v1, 0x0

    #@27
    invoke-virtual {p6, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@2a
    .line 847
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeByteArray([B)V

    #@2d
    .line 848
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2f
    const/16 v2, 0xf

    #@31
    const/4 v3, 0x0

    #@32
    const/4 v4, 0x1

    #@33
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 824
    return-void

    #@3a
    .line 837
    :cond_0
    const/4 v1, 0x0

    #@3b
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 850
    :catchall_0
    move-exception v1

    #@40
    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 850
    throw v1

    #@44
    .line 845
    :cond_1
    const/4 v1, 0x0

    #@45
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    goto :goto_1
.end method

.method public onReadRemoteRssi(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 856
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 858
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 859
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 860
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 861
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 862
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/16 v2, 0x10

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 854
    return-void

    #@20
    .line 864
    :catchall_0
    move-exception v1

    #@21
    .line 865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 864
    throw v1
.end method

.method public onScanManagerErrorCallback(I)V
    .locals 5
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 892
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 893
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 894
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x12

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 888
    return-void

    #@1a
    .line 896
    :catchall_0
    move-exception v1

    #@1b
    .line 897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 896
    throw v1
.end method

.method public onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 5
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 516
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 517
    if-eqz p1, :cond_0

    #@c
    .line 518
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 519
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/le/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 524
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x3

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 512
    return-void

    #@20
    .line 522
    :cond_0
    const/4 v1, 0x0

    #@21
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 526
    :catchall_0
    move-exception v1

    #@26
    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 526
    throw v1
.end method

.method public onSearchComplete(Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 664
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 666
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 667
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0x9

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 660
    return-void

    #@1d
    .line 669
    :catchall_0
    move-exception v1

    #@1e
    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 669
    throw v1
.end method
