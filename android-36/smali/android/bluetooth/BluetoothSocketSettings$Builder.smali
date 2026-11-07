.class public final Landroid/bluetooth/BluetoothSocketSettings$Builder;
.super Ljava/lang/Object;
.source "BluetoothSocketSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSocketSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAuthenticationRequired:Z

.field private blacklist mDataPath:I

.field private blacklist mEncryptionRequired:Z

.field private blacklist mEndpointId:J

.field private blacklist mHubId:J

.field private blacklist mL2capPsm:I

.field private blacklist mMaximumPacketSize:I

.field private blacklist mRfcommServiceName:Ljava/lang/String;

.field private blacklist mRfcommUuid:Ljava/util/UUID;

.field private blacklist mSocketName:Ljava/lang/String;

.field private blacklist mSocketType:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mSocketType:I

    .line 394
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mL2capPsm:I

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mEncryptionRequired:Z

    .line 396
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mAuthenticationRequired:Z

    .line 397
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mRfcommServiceName:Ljava/lang/String;

    .line 398
    iput-object v1, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mRfcommUuid:Ljava/util/UUID;

    .line 399
    iput v0, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mDataPath:I

    .line 400
    const-string v0, "default_name"

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mSocketName:Ljava/lang/String;

    .line 401
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mHubId:J

    .line 402
    iput-wide v0, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mEndpointId:J

    .line 403
    const v0, 0xffff

    iput v0, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mMaximumPacketSize:I

    .line 405
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/BluetoothSocketSettings;
    .registers 18

    .line 660
    move-object/from16 v0, p0

    iget v1, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mSocketType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 661
    iget-object v1, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mRfcommUuid:Ljava/util/UUID;

    if-eqz v1, :cond_38

    .line 664
    iget v1, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mL2capPsm:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_11

    goto :goto_40

    .line 665
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Socket config:  Socket type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mSocketType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " L2cap PSM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mL2capPsm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 662
    :cond_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "RFCOMM socket with missing uuid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 673
    :cond_40
    :goto_40
    iget v1, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mSocketType:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7d

    .line 674
    iget-object v1, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mRfcommUuid:Ljava/util/UUID;

    if-nez v1, :cond_4a

    goto :goto_7d

    .line 675
    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Socket config: Socket type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mSocketType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Rfcomm Service Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mRfcommServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Rfcomm Uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mRfcommUuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 685
    :cond_7d
    :goto_7d
    iget v1, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mDataPath:I

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_b7

    .line 686
    iget-wide v1, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mHubId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_af

    iget-wide v1, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mEndpointId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_af

    .line 690
    iget v1, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mMaximumPacketSize:I

    if-ltz v1, :cond_94

    goto :goto_c3

    .line 691
    :cond_94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid packet size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mMaximumPacketSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 687
    :cond_af
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Hub ID and endpoint ID must be set for hardware data path"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 694
    :cond_b7
    iget-wide v1, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mHubId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_e1

    iget-wide v1, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mEndpointId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_e1

    .line 699
    :goto_c3
    new-instance v2, Landroid/bluetooth/BluetoothSocketSettings;

    iget v3, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mSocketType:I

    iget v4, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mL2capPsm:I

    iget-boolean v5, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mEncryptionRequired:Z

    iget-boolean v6, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mAuthenticationRequired:Z

    iget-object v7, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mRfcommServiceName:Ljava/lang/String;

    iget-object v8, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mRfcommUuid:Ljava/util/UUID;

    iget v9, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mDataPath:I

    iget-object v10, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mSocketName:Ljava/lang/String;

    iget-wide v11, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mHubId:J

    iget-wide v13, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mEndpointId:J

    iget v15, v0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mMaximumPacketSize:I

    const/16 v16, 0x0

    invoke-direct/range {v2 .. v16}, Landroid/bluetooth/BluetoothSocketSettings;-><init>(IIZZLjava/lang/String;Ljava/util/UUID;ILjava/lang/String;JJILandroid/bluetooth/BluetoothSocketSettings-IA;)V

    return-object v2

    .line 695
    :cond_e1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Hub ID and endpoint ID may not be set for software data path"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setAuthenticationRequired(Z)Landroid/bluetooth/BluetoothSocketSettings$Builder;
    .registers 2
    .param p1, "authenticationRequired"    # Z

    .line 487
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mAuthenticationRequired:Z

    .line 488
    return-object p0
.end method

.method public whitelist setDataPath(I)Landroid/bluetooth/BluetoothSocketSettings$Builder;
    .registers 5
    .param p1, "dataPath"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 547
    if-ltz p1, :cond_8

    const/4 v0, 0x1

    if-gt p1, v0, :cond_8

    .line 550
    iput p1, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mDataPath:I

    .line 551
    return-object p0

    .line 548
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dataPath - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEncryptionRequired(Z)Landroid/bluetooth/BluetoothSocketSettings$Builder;
    .registers 2
    .param p1, "encryptionRequired"    # Z

    .line 471
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mEncryptionRequired:Z

    .line 472
    return-object p0
.end method

.method public whitelist setEndpointId(J)Landroid/bluetooth/BluetoothSocketSettings$Builder;
    .registers 3
    .param p1, "endpointId"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 623
    iput-wide p1, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mEndpointId:J

    .line 624
    return-object p0
.end method

.method public whitelist setHubId(J)Landroid/bluetooth/BluetoothSocketSettings$Builder;
    .registers 3
    .param p1, "hubId"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 603
    iput-wide p1, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mHubId:J

    .line 604
    return-object p0
.end method

.method public whitelist setL2capPsm(I)Landroid/bluetooth/BluetoothSocketSettings$Builder;
    .registers 5
    .param p1, "l2capPsm"    # I

    .line 452
    const/16 v0, 0x80

    if-lt p1, v0, :cond_b

    const/16 v0, 0xff

    if-gt p1, v0, :cond_b

    .line 455
    iput p1, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mL2capPsm:I

    .line 456
    return-object p0

    .line 453
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid L2cap PSM - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRequestedMaximumPacketSize(I)Landroid/bluetooth/BluetoothSocketSettings$Builder;
    .registers 2
    .param p1, "maximumPacketSize"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 647
    iput p1, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mMaximumPacketSize:I

    .line 648
    return-object p0
.end method

.method public whitelist setRfcommServiceName(Ljava/lang/String;)Landroid/bluetooth/BluetoothSocketSettings$Builder;
    .registers 2
    .param p1, "rfcommServiceName"    # Ljava/lang/String;

    .line 507
    iput-object p1, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mRfcommServiceName:Ljava/lang/String;

    .line 508
    return-object p0
.end method

.method public whitelist setRfcommUuid(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocketSettings$Builder;
    .registers 2
    .param p1, "rfcommUuid"    # Ljava/util/UUID;

    .line 527
    iput-object p1, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mRfcommUuid:Ljava/util/UUID;

    .line 528
    return-object p0
.end method

.method public whitelist setSocketName(Ljava/lang/String;)Landroid/bluetooth/BluetoothSocketSettings$Builder;
    .registers 5
    .param p1, "socketName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 577
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 578
    .local v0, "socketNameBytes":[B
    array-length v1, v0

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_1a

    .line 584
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mSocketName:Ljava/lang/String;

    .line 585
    return-object p0

    .line 579
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Socket name cannot exceed 127 bytes in length when encoded in UTF-8."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setSocketType(I)Landroid/bluetooth/BluetoothSocketSettings$Builder;
    .registers 5
    .param p1, "socketType"    # I

    .line 426
    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    goto :goto_20

    .line 428
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid socketType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_20
    :goto_20
    iput p1, p0, Landroid/bluetooth/BluetoothSocketSettings$Builder;->mSocketType:I

    .line 431
    return-object p0
.end method
