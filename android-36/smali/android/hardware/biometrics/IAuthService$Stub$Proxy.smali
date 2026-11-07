.class Landroid/hardware/biometrics/IAuthService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAuthService.java"

# interfaces
.implements Landroid/hardware/biometrics/IAuthService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IAuthService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p1, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 513
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 516
    iget-object v0, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sessionId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 586
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 589
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 591
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 592
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 594
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    const/4 v2, 0x0

    invoke-virtual {v0, p7, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 596
    iget-object v3, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 597
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 598
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_3a

    .line 601
    .end local v2    # "_status":Z
    .local v3, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 603
    nop

    .line 604
    return-wide v3

    .line 601
    .end local v3    # "_result":J
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 603
    throw v2
.end method

.method public blacklist canAuthenticate(Ljava/lang/String;II)I
    .registers 9
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "authenticators"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 629
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 632
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 637
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 638
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 641
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 643
    nop

    .line 644
    return v3

    .line 641
    .end local v3    # "_result":I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 643
    throw v2
.end method

.method public blacklist cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 609
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 610
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 612
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 614
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 616
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 617
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 620
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 622
    nop

    .line 623
    return-void

    .line 620
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 622
    throw v2
.end method

.method public blacklist createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 9
    .param p1, "sensorId"    # I
    .param p2, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 526
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 529
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 532
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 533
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 534
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/ITestSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v3
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 538
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    nop

    .line 541
    return-object v3

    .line 538
    .end local v3    # "_result":Landroid/hardware/biometrics/ITestSession;
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    throw v2
.end method

.method public blacklist getAuthenticatorIds(I)[J
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 761
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 762
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 765
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 768
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 772
    .end local v2    # "_status":Z
    .local v3, "_result":[J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 774
    nop

    .line 775
    return-object v3

    .line 772
    .end local v3    # "_result":[J
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 774
    throw v2
.end method

.method public blacklist getButtonLabel(ILjava/lang/String;I)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "authenticators"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 818
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 819
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 822
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 827
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 828
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 831
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 833
    nop

    .line 834
    return-object v3

    .line 831
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 833
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 520
    const-string v0, "android.hardware.biometrics.IAuthService"

    return-object v0
.end method

.method public blacklist getLastAuthenticationTime(II)J
    .registers 8
    .param p1, "userId"    # I
    .param p2, "authenticators"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 650
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 653
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 657
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 658
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 661
    .end local v2    # "_status":Z
    .local v3, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 663
    nop

    .line 664
    return-wide v3

    .line 661
    .end local v3    # "_result":J
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 663
    throw v2
.end method

.method public blacklist getPromptMessage(ILjava/lang/String;I)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "authenticators"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 840
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 841
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 844
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 849
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 850
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 853
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 855
    nop

    .line 856
    return-object v3

    .line 853
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 855
    throw v2
.end method

.method public blacklist getSensorProperties(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 547
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 550
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 553
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 554
    sget-object v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 557
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 559
    nop

    .line 560
    return-object v3

    .line 557
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 559
    throw v2
.end method

.method public blacklist getSettingName(ILjava/lang/String;I)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "authenticators"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 862
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 863
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 866
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 871
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 872
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 875
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 877
    nop

    .line 878
    return-object v3

    .line 875
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 877
    throw v2
.end method

.method public blacklist getUiPackage()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 566
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 569
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 570
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 571
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 575
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    nop

    .line 578
    return-object v3

    .line 575
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    throw v2
.end method

.method public blacklist hasEnrolledBiometrics(ILjava/lang/String;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 670
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 673
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 676
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 677
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 681
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 683
    nop

    .line 684
    return v3

    .line 681
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 683
    throw v2
.end method

.method public blacklist invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "fromSensorId"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/IInvalidationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 740
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 742
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 746
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 747
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 750
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 752
    nop

    .line 753
    return-void

    .line 750
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 752
    throw v2
.end method

.method public blacklist registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/biometrics/AuthenticationStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 705
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 706
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 708
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 710
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 711
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 714
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 716
    nop

    .line 717
    return-void

    .line 714
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 716
    throw v2
.end method

.method public blacklist registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 689
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 690
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 692
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 693
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 694
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 695
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 698
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 700
    nop

    .line 701
    return-void

    .line 698
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 700
    throw v2
.end method

.method public blacklist resetLockout(I[B)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "hardwareAuthToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 800
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 801
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 803
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 806
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 807
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 810
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 812
    nop

    .line 813
    return-void

    .line 810
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 812
    throw v2
.end method

.method public blacklist resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "fromSensorId"    # I
    .param p4, "userId"    # I
    .param p5, "hardwareAuthToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 780
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 781
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 783
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 785
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 789
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 790
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 793
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 795
    nop

    .line 796
    return-void

    .line 793
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 795
    throw v2
.end method

.method public blacklist unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/biometrics/AuthenticationStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 721
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 722
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 724
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.hardware.biometrics.IAuthService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 726
    iget-object v2, p0, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 727
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 730
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 732
    nop

    .line 733
    return-void

    .line 730
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 732
    throw v2
.end method
