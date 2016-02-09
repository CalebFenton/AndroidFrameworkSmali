.class Lcom/android/internal/telephony/ISms$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms$Stub;
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
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 497
    iput-object p1, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 495
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "smsc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 578
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 581
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 583
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 584
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 585
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    #@1a
    .line 586
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    #@1d
    .line 587
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/4 v4, 0x3

    #@20
    const/4 v5, 0x0

    #@21
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@24
    .line 588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@27
    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_0

    #@2d
    const/4 v2, 0x1

    #@2e
    .line 592
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 595
    return v2

    #@35
    .line 589
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@36
    .restart local v2    # "_result":Z
    goto :goto_0

    #@37
    .line 591
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@38
    .line 592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 591
    throw v3
.end method

.method public disableCellBroadcastForSubscriber(III)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "messageIdentifier"    # I
    .param p3, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 974
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 977
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 978
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 979
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 980
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 981
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0xb

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 982
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 983
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    const/4 v2, 0x1

    #@29
    .line 986
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 989
    return v2

    #@30
    .line 983
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@31
    .restart local v2    # "_result":Z
    goto :goto_0

    #@32
    .line 985
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@33
    .line 986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 985
    throw v3
.end method

.method public disableCellBroadcastRangeForSubscriber(IIII)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "startMessageId"    # I
    .param p3, "endMessageId"    # I
    .param p4, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1053
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1056
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1057
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1058
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1059
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1060
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1061
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v4, 0xd

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 1062
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 1063
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_0

    #@2b
    const/4 v2, 0x1

    #@2c
    .line 1066
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1069
    return v2

    #@33
    .line 1063
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@34
    .restart local v2    # "_result":Z
    goto :goto_0

    #@35
    .line 1065
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@36
    .line 1066
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1065
    throw v3
.end method

.method public enableCellBroadcastForSubscriber(III)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "messageIdentifier"    # I
    .param p3, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 937
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 940
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 941
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 942
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 943
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 944
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0xa

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 945
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 946
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    const/4 v2, 0x1

    #@29
    .line 949
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 952
    return v2

    #@30
    .line 946
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@31
    .restart local v2    # "_result":Z
    goto :goto_0

    #@32
    .line 948
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@33
    .line 949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 948
    throw v3
.end method

.method public enableCellBroadcastRangeForSubscriber(IIII)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "startMessageId"    # I
    .param p3, "endMessageId"    # I
    .param p4, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1013
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1016
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1017
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1018
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1019
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1020
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1021
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v4, 0xc

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 1022
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 1023
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_0

    #@2b
    const/4 v2, 0x1

    #@2c
    .line 1026
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1029
    return v2

    #@33
    .line 1023
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@34
    .restart local v2    # "_result":Z
    goto :goto_0

    #@35
    .line 1025
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@36
    .line 1026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1025
    throw v3
.end method

.method public getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
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
    .line 514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 515
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 518
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 519
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 520
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 521
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x1

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 522
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 523
    sget-object v3, Lcom/android/internal/telephony/SmsRawData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 526
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 529
    return-object v2

    #@2b
    .line 525
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :catchall_0
    move-exception v3

    #@2c
    .line 526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 525
    throw v3
.end method

.method public getImsSmsFormatForSubscriber(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1241
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1244
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1245
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1246
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x15

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1247
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1248
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 1251
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1254
    return-object v2

    #@27
    .line 1250
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@28
    .line 1251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1250
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 505
    const-string/jumbo v0, "com.android.internal.telephony.ISms"

    #@3
    return-object v0
.end method

.method public getPreferredSmsSubscription()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1214
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1217
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1218
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x14

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1219
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1220
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 1223
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1226
    return v2

    #@24
    .line 1222
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 1223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1222
    throw v3
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1078
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1081
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1082
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1083
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xe

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1084
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1085
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 1088
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1091
    return v2

    #@27
    .line 1087
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 1088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1087
    throw v3
.end method

.method public getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1100
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1103
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1105
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1106
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xf

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1107
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 1108
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 1111
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1114
    return v2

    #@2a
    .line 1110
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 1111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1110
    throw v3
.end method

.method public injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "pdu"    # [B
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "receivedIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 847
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 849
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 850
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 851
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14
    .line 852
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 853
    if-eqz p4, :cond_0

    #@19
    .line 854
    const/4 v2, 0x1

    #@1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 855
    const/4 v2, 0x0

    #@1e
    invoke-virtual {p4, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 860
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v3, 0x8

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 861
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 844
    return-void

    #@33
    .line 858
    :cond_0
    const/4 v2, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 863
    :catchall_0
    move-exception v2

    #@39
    .line 864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 863
    throw v2
.end method

.method public isImsSmsSupportedForSubscriber(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1171
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1173
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x12

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1175
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
    .line 1178
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1181
    return v2

    #@2a
    .line 1175
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 1177
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 1178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1177
    throw v3
.end method

.method public isSMSPromptEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1266
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1267
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x16

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1268
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1269
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 1272
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1275
    return v2

    #@27
    .line 1269
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1271
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1271
    throw v3
.end method

.method public isSmsSimPickActivityNeeded(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1196
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1197
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x13

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1198
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1199
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
    .line 1202
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1205
    return v2

    #@2a
    .line 1199
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 1201
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1201
    throw v3
.end method

.method public sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "destPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
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
    .line 626
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 627
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 628
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 629
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 630
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 631
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 632
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    #@20
    .line 633
    if-eqz p7, :cond_0

    #@22
    .line 634
    const/4 v2, 0x1

    #@23
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 635
    const/4 v2, 0x0

    #@27
    invoke-virtual {p7, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@2a
    .line 640
    :goto_0
    if-eqz p8, :cond_1

    #@2c
    .line 641
    const/4 v2, 0x1

    #@2d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 642
    const/4 v2, 0x0

    #@31
    invoke-virtual {p8, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@34
    .line 647
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@36
    const/4 v3, 0x4

    #@37
    const/4 v4, 0x0

    #@38
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3b
    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 621
    return-void

    #@45
    .line 638
    :cond_0
    const/4 v2, 0x0

    #@46
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 650
    :catchall_0
    move-exception v2

    #@4b
    .line 651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 650
    throw v2

    #@52
    .line 645
    :cond_1
    const/4 v2, 0x0

    #@53
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    goto :goto_1
.end method

.method public sendDataForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "destPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 682
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 684
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 685
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 686
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 687
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 688
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 689
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 690
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    #@20
    .line 691
    if-eqz p7, :cond_0

    #@22
    .line 692
    const/4 v2, 0x1

    #@23
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 693
    const/4 v2, 0x0

    #@27
    invoke-virtual {p7, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@2a
    .line 698
    :goto_0
    if-eqz p8, :cond_1

    #@2c
    .line 699
    const/4 v2, 0x1

    #@2d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 700
    const/4 v2, 0x0

    #@31
    invoke-virtual {p8, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@34
    .line 705
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@36
    const/4 v3, 0x5

    #@37
    const/4 v4, 0x0

    #@38
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3b
    .line 706
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 679
    return-void

    #@45
    .line 696
    :cond_0
    const/4 v2, 0x0

    #@46
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 708
    :catchall_0
    move-exception v2

    #@4b
    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 708
    throw v2

    #@52
    .line 703
    :cond_1
    const/4 v2, 0x0

    #@53
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    goto :goto_1
.end method

.method public sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destinationAddress"    # Ljava/lang/String;
    .param p4, "scAddress"    # Ljava/lang/String;
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    const/4 v2, 0x0

    #@1
    .line 897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 898
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 900
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISms"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 901
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 902
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 903
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 904
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 905
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@1e
    .line 906
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@21
    .line 907
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@24
    .line 908
    if-eqz p8, :cond_0

    #@26
    const/4 v2, 0x1

    #@27
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 909
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2c
    const/16 v3, 0x9

    #@2e
    const/4 v4, 0x0

    #@2f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@32
    .line 910
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 895
    return-void

    #@3c
    .line 912
    :catchall_0
    move-exception v2

    #@3d
    .line 913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 912
    throw v2
.end method

.method public sendStoredMultipartText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "messageUri"    # Landroid/net/Uri;
    .param p4, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
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
    .line 1377
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1378
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1380
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1382
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1383
    if-eqz p3, :cond_0

    #@16
    .line 1384
    const/4 v2, 0x1

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1385
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p3, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 1390
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 1391
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@24
    .line 1392
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@27
    .line 1393
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/16 v3, 0x18

    #@2b
    const/4 v4, 0x0

    #@2c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2f
    .line 1394
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 1375
    return-void

    #@39
    .line 1388
    :cond_0
    const/4 v2, 0x0

    #@3a
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 1396
    :catchall_0
    move-exception v2

    #@3f
    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 1396
    throw v2
.end method

.method public sendStoredText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "messageUri"    # Landroid/net/Uri;
    .param p4, "scAddress"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1307
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1309
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1310
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1311
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1312
    if-eqz p3, :cond_0

    #@16
    .line 1313
    const/4 v2, 0x1

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1314
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p3, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 1319
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 1320
    if-eqz p5, :cond_1

    #@23
    .line 1321
    const/4 v2, 0x1

    #@24
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 1322
    const/4 v2, 0x0

    #@28
    invoke-virtual {p5, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    .line 1327
    :goto_1
    if-eqz p6, :cond_2

    #@2d
    .line 1328
    const/4 v2, 0x1

    #@2e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 1329
    const/4 v2, 0x0

    #@32
    invoke-virtual {p6, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@35
    .line 1334
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@37
    const/16 v3, 0x17

    #@39
    const/4 v4, 0x0

    #@3a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3d
    .line 1335
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 1338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 1339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 1304
    return-void

    #@47
    .line 1317
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
    .line 1337
    :catchall_0
    move-exception v2

    #@4d
    .line 1338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@50
    .line 1339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@53
    .line 1337
    throw v2

    #@54
    .line 1325
    :cond_1
    const/4 v2, 0x0

    #@55
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    goto :goto_1

    #@59
    .line 1332
    :cond_2
    const/4 v2, 0x0

    #@5a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5d
    goto :goto_2
.end method

.method public sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z
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
    .line 743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 744
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 746
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 747
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 748
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 749
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 750
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 751
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    .line 752
    if-eqz p6, :cond_0

    #@21
    .line 753
    const/4 v4, 0x1

    #@22
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 754
    const/4 v4, 0x0

    #@26
    invoke-virtual {p6, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@29
    .line 759
    :goto_0
    if-eqz p7, :cond_1

    #@2b
    .line 760
    const/4 v4, 0x1

    #@2c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 761
    const/4 v4, 0x0

    #@30
    invoke-virtual {p7, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@33
    .line 766
    :goto_1
    if-eqz p8, :cond_2

    #@35
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 767
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@3a
    const/4 v3, 0x6

    #@3b
    const/4 v4, 0x0

    #@3c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3f
    .line 768
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .line 771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 741
    return-void

    #@49
    .line 757
    :cond_0
    const/4 v4, 0x0

    #@4a
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    goto :goto_0

    #@4e
    .line 770
    :catchall_0
    move-exception v2

    #@4f
    .line 771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@55
    .line 770
    throw v2

    #@56
    .line 764
    :cond_1
    const/4 v4, 0x0

    #@57
    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5a
    goto :goto_1

    #@5b
    :cond_2
    move v2, v3

    #@5c
    .line 766
    goto :goto_2
.end method

.method public sendTextForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 802
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 804
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 805
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 806
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 807
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 808
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 809
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 810
    if-eqz p6, :cond_0

    #@1f
    .line 811
    const/4 v2, 0x1

    #@20
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 812
    const/4 v2, 0x0

    #@24
    invoke-virtual {p6, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@27
    .line 817
    :goto_0
    if-eqz p7, :cond_1

    #@29
    .line 818
    const/4 v2, 0x1

    #@2a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 819
    const/4 v2, 0x0

    #@2e
    invoke-virtual {p7, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@31
    .line 824
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@33
    const/4 v3, 0x7

    #@34
    const/4 v4, 0x0

    #@35
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@38
    .line 825
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 799
    return-void

    #@42
    .line 815
    :cond_0
    const/4 v2, 0x0

    #@43
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 827
    :catchall_0
    move-exception v2

    #@48
    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 827
    throw v2

    #@4f
    .line 822
    :cond_1
    const/4 v2, 0x0

    #@50
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    goto :goto_1
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1123
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1127
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1128
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x10

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1120
    return-void

    #@26
    .line 1131
    :catchall_0
    move-exception v2

    #@27
    .line 1132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1131
    throw v2
.end method

.method public setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1143
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1145
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1147
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1148
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1149
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x11

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 1150
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1140
    return-void

    #@29
    .line 1152
    :catchall_0
    move-exception v2

    #@2a
    .line 1153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1152
    throw v2
.end method

.method public updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "messageIndex"    # I
    .param p4, "newStatus"    # I
    .param p5, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 549
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ISms"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 550
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 551
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 552
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 553
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 554
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    #@1d
    .line 555
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/4 v4, 0x2

    #@20
    const/4 v5, 0x0

    #@21
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@24
    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@27
    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_0

    #@2d
    const/4 v2, 0x1

    #@2e
    .line 560
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 563
    return v2

    #@35
    .line 557
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@36
    .restart local v2    # "_result":Z
    goto :goto_0

    #@37
    .line 559
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@38
    .line 560
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 559
    throw v3
.end method
