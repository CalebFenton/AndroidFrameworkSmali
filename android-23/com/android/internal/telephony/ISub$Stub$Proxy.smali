.class Lcom/android/internal/telephony/ISub$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISub.java"

# interfaces
.implements Lcom/android/internal/telephony/ISub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISub$Stub;
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
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 388
    iput-object p1, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 386
    return-void
.end method


# virtual methods
.method public addSubInfoRecord(Ljava/lang/String;I)I
    .locals 6
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 624
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 627
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 628
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 629
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 630
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x9

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 631
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 635
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 638
    return v2

    #@2a
    .line 634
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 635
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 634
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 958
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 960
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 961
    iget-object v2, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x1a

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 962
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 965
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 955
    return-void

    #@20
    .line 964
    :catchall_0
    move-exception v2

    #@21
    .line 965
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 964
    throw v2
.end method

.method public clearSubInfo()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 823
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 826
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 827
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x12

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 829
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 832
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 835
    return v2

    #@24
    .line 831
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 831
    throw v3
.end method

.method public getActiveSubIdList()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 972
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 975
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 976
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1b

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 977
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 981
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 984
    return-object v2

    #@24
    .line 980
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@25
    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 980
    throw v3
.end method

.method public getActiveSubInfoCount(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 580
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 583
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 584
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 585
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x7

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 586
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 587
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 590
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 593
    return v2

    #@26
    .line 589
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 589
    throw v3
.end method

.method public getActiveSubInfoCountMax()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 601
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 604
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 605
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 606
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 607
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 610
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 613
    return v2

    #@24
    .line 609
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 609
    throw v3
.end method

.method public getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 453
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 456
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 457
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 458
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 459
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x3

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 462
    sget-object v3, Landroid/telephony/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 469
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 472
    return-object v2

    #@33
    .line 465
    :cond_0
    const/4 v2, 0x0

    #@34
    .local v2, "_result":Landroid/telephony/SubscriptionInfo;
    goto :goto_0

    #@35
    .line 468
    .end local v2    # "_result":Landroid/telephony/SubscriptionInfo;
    :catchall_0
    move-exception v3

    #@36
    .line 469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 468
    throw v3
.end method

.method public getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 6
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 483
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 486
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 487
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 488
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 489
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x4

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 492
    sget-object v3, Landroid/telephony/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 499
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 502
    return-object v2

    #@33
    .line 495
    :cond_0
    const/4 v2, 0x0

    #@34
    .local v2, "_result":Landroid/telephony/SubscriptionInfo;
    goto :goto_0

    #@35
    .line 498
    .end local v2    # "_result":Landroid/telephony/SubscriptionInfo;
    :catchall_0
    move-exception v3

    #@36
    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 498
    throw v3
.end method

.method public getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 6
    .param p1, "slotIdx"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 513
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 516
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 517
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 518
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 519
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x5

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 520
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 521
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 522
    sget-object v3, Landroid/telephony/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 529
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 532
    return-object v2

    #@33
    .line 525
    :cond_0
    const/4 v2, 0x0

    #@34
    .local v2, "_result":Landroid/telephony/SubscriptionInfo;
    goto :goto_0

    #@35
    .line 528
    .end local v2    # "_result":Landroid/telephony/SubscriptionInfo;
    :catchall_0
    move-exception v3

    #@36
    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 528
    throw v3
.end method

.method public getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
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
    .line 557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 558
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 561
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 562
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 563
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x6

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 564
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 565
    sget-object v3, Landroid/telephony/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v2

    #@21
    .line 568
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 571
    return-object v2

    #@28
    .line 567
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    #@29
    .line 568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 567
    throw v3
.end method

.method public getAllSubInfoCount(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 429
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 432
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 433
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 434
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 435
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 436
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 439
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 442
    return v2

    #@26
    .line 438
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 438
    throw v3
.end method

.method public getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
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
    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 406
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 409
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 410
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 411
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 413
    sget-object v3, Landroid/telephony/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v2

    #@21
    .line 416
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 419
    return-object v2

    #@28
    .line 415
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    #@29
    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 415
    throw v3
.end method

.method public getDefaultDataSubId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 862
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 865
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 866
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x14

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 867
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 868
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 871
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 874
    return v2

    #@24
    .line 870
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 870
    throw v3
.end method

.method public getDefaultSmsSubId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 926
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 929
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 930
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x18

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 931
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 932
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 935
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 938
    return v2

    #@24
    .line 934
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 934
    throw v3
.end method

.method public getDefaultSubId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 806
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 809
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 810
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x11

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 811
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 812
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 815
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 818
    return v2

    #@24
    .line 814
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 814
    throw v3
.end method

.method public getDefaultVoiceSubId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 894
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 897
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 898
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x16

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 899
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 900
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 903
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 906
    return v2

    #@24
    .line 902
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 902
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 396
    const-string/jumbo v0, "com.android.internal.telephony.ISub"

    #@3
    return-object v0
.end method

.method public getPhoneId(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 840
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 843
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 844
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 845
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x13

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 846
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 847
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 850
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 853
    return v2

    #@27
    .line 849
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 850
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 849
    throw v3
.end method

.method public getSimStateForSlotIdx(I)I
    .locals 6
    .param p1, "slotIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1030
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1033
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1034
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1035
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x1e

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1036
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1037
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 1040
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1043
    return v2

    #@27
    .line 1039
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 1040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1039
    throw v3
.end method

.method public getSlotId(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 770
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 774
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 775
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xf

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 776
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 780
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 783
    return v2

    #@27
    .line 779
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 779
    throw v3
.end method

.method public getSubId(I)[I
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 788
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 791
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 793
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x10

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 794
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 795
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 798
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 801
    return-object v2

    #@27
    .line 797
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@28
    .line 798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 797
    throw v3
.end method

.method public getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1006
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1009
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1010
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1011
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1012
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 1013
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0x1d

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 1014
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 1015
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result-object v2

    #@26
    .line 1018
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1021
    return-object v2

    #@2d
    .line 1017
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@2e
    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1017
    throw v3
.end method

.method public isActiveSubId(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1048
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1051
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1052
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1053
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x1f

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 1058
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1061
    return v2

    #@2a
    .line 1055
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 1057
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1057
    throw v3
.end method

.method public setDataRoaming(II)I
    .locals 6
    .param p1, "roaming"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 751
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 754
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 755
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 756
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 757
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xe

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 759
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 762
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 765
    return v2

    #@2a
    .line 761
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 761
    throw v3
.end method

.method public setDefaultDataSubId(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 879
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 881
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 882
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 883
    iget-object v2, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x15

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 884
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 876
    return-void

    #@23
    .line 886
    :catchall_0
    move-exception v2

    #@24
    .line 887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 886
    throw v2
.end method

.method public setDefaultSmsSubId(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 943
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 945
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 946
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 947
    iget-object v2, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x19

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 948
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 940
    return-void

    #@23
    .line 950
    :catchall_0
    move-exception v2

    #@24
    .line 951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 950
    throw v2
.end method

.method public setDefaultVoiceSubId(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 911
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 913
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 914
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 915
    iget-object v2, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x17

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 916
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 908
    return-void

    #@23
    .line 918
    :catchall_0
    move-exception v2

    #@24
    .line 919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 918
    throw v2
.end method

.method public setDisplayName(Ljava/lang/String;I)I
    .locals 6
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 674
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 677
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 679
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 680
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xb

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 681
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 685
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 688
    return v2

    #@2a
    .line 684
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 684
    throw v3
.end method

.method public setDisplayNameUsingSrc(Ljava/lang/String;IJ)I
    .locals 7
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 700
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 703
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 704
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 705
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 706
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    #@17
    .line 707
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0xc

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 708
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v2

    #@26
    .line 712
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 715
    return v2

    #@2d
    .line 711
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2e
    .line 712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 711
    throw v3
.end method

.method public setDisplayNumber(Ljava/lang/String;I)I
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 726
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 729
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 730
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 731
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 732
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xd

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 733
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 734
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 737
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 740
    return v2

    #@2a
    .line 736
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 737
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 736
    throw v3
.end method

.method public setIconTint(II)I
    .locals 6
    .param p1, "tint"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 649
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 652
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 653
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 654
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 655
    iget-object v3, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xa

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 656
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 657
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 660
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 663
    return v2

    #@2a
    .line 659
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 659
    throw v3
.end method

.method public setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 988
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 989
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 991
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ISub"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 992
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 993
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 994
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 995
    iget-object v2, p0, Lcom/android/internal/telephony/ISub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x1c

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 996
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 986
    return-void

    #@29
    .line 998
    :catchall_0
    move-exception v2

    #@2a
    .line 999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 998
    throw v2
.end method
