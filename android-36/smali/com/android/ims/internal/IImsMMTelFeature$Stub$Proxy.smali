.class Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsMMTelFeature.java"

# interfaces
.implements Lcom/android/ims/internal/IImsMMTelFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsMMTelFeature$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 377
    return-void
.end method


# virtual methods
.method public greylist-max-o addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 476
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 478
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 480
    iget-object v2, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 481
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 484
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 486
    nop

    .line 487
    return-void

    .line 484
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 486
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .registers 9
    .param p1, "sessionId"    # I
    .param p2, "callSessionType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 506
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 509
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget-object v2, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 514
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 515
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 518
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 520
    nop

    .line 521
    return-object v3

    .line 518
    .end local v3    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 520
    throw v2
.end method

.method public greylist-max-o createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

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
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 532
    iget-object v3, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 533
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 537
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 539
    nop

    .line 540
    return-object v3

    .line 537
    .end local v3    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 539
    throw v2
.end method

.method public greylist-max-o endSession(I)V
    .registers 7
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget-object v2, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 413
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 416
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    nop

    .line 419
    return-void

    .line 416
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    throw v2
.end method

.method public greylist-max-o getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 581
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 584
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 585
    iget-object v2, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 586
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 587
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsConfig$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsConfig;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 590
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/ims/internal/IImsConfig;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 592
    nop

    .line 593
    return-object v3

    .line 590
    .end local v3    # "_result":Lcom/android/ims/internal/IImsConfig;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 592
    throw v2
.end method

.method public greylist-max-o getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 625
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 626
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 629
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 630
    iget-object v2, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 631
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsEcbm$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsEcbm;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 635
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 637
    nop

    .line 638
    return-object v3

    .line 635
    .end local v3    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 637
    throw v2
.end method

.method public greylist-max-o getFeatureStatus()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 459
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 462
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 464
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 465
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 468
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 470
    nop

    .line 471
    return v3

    .line 468
    .end local v3    # "_result":I
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 470
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 384
    const-string v0, "com.android.ims.internal.IImsMMTelFeature"

    return-object v0
.end method

.method public greylist-max-o getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 659
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 662
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 663
    iget-object v2, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 664
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 665
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsMultiEndpoint$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 668
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    nop

    .line 671
    return-object v3

    .line 668
    .end local v3    # "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    throw v2
.end method

.method public greylist-max-o getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 544
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 545
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 548
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    iget-object v2, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 552
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 553
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 556
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 558
    nop

    .line 559
    return-object v3

    .line 556
    .end local v3    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 558
    throw v2
.end method

.method public greylist-max-o getUtInterface()Lcom/android/ims/internal/IImsUt;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 564
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 567
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 568
    iget-object v2, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 569
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 570
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 573
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 575
    nop

    .line 576
    return-object v3

    .line 573
    .end local v3    # "_result":Lcom/android/ims/internal/IImsUt;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 575
    throw v2
.end method

.method public greylist-max-o isConnected(II)Z
    .registers 8
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 423
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 426
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget-object v2, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 430
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 431
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 434
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 436
    nop

    .line 437
    return v3

    .line 434
    .end local v3    # "_result":Z
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 436
    throw v2
.end method

.method public greylist-max-o isOpened()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 442
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 445
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 447
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 451
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    nop

    .line 454
    return v3

    .line 451
    .end local v3    # "_result":Z
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    throw v2
.end method

.method public greylist-max-o removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 491
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 493
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 495
    iget-object v2, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 496
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 499
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    nop

    .line 502
    return-void

    .line 499
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    throw v2
.end method

.method public greylist-max-o setUiTTYMode(ILandroid/os/Message;)V
    .registers 8
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 642
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 643
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 645
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 648
    iget-object v3, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 649
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 652
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 654
    nop

    .line 655
    return-void

    .line 652
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 654
    throw v2
.end method

.method public greylist-max-o startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .registers 8
    .param p1, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 389
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 392
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 393
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 394
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 395
    iget-object v3, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 396
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 400
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 402
    nop

    .line 403
    return v3

    .line 400
    .end local v3    # "_result":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 402
    throw v2
.end method

.method public greylist-max-o turnOffIms()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 612
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 615
    iget-object v2, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 616
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 619
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 621
    nop

    .line 622
    return-void

    .line 619
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 621
    throw v2
.end method

.method public greylist-max-o turnOnIms()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 598
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 600
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 601
    iget-object v2, p0, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 602
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_25

    .line 605
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 607
    nop

    .line 608
    return-void

    .line 605
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 607
    throw v2
.end method
