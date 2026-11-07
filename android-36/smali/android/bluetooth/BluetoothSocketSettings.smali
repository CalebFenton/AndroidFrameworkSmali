.class public final Landroid/bluetooth/BluetoothSocketSettings;
.super Ljava/lang/Object;
.source "BluetoothSocketSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothSocketSettings$Builder;,
        Landroid/bluetooth/BluetoothSocketSettings$SocketDataPath;
    }
.end annotation


# static fields
.field public static final whitelist DATA_PATH_HARDWARE_OFFLOAD:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATA_PATH_NO_OFFLOAD:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist HARDWARE_OFFLOAD_PACKET_MAX_SIZE:I = 0xffff
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist HARDWARE_OFFLOAD_SOCKET_NAME_MAX_LENGTH:I = 0x7f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist INVALID_ENDPOINT_ID:J = 0x0L

.field private static final blacklist INVALID_HUB_ID:J = 0x0L

.field private static final blacklist L2CAP_PSM_UNSPECIFIED:I = -0x1


# instance fields
.field private final blacklist mAuthenticationRequired:Z

.field private final blacklist mDataPath:I

.field private final blacklist mEncryptionRequired:Z

.field private final blacklist mEndpointId:J

.field private final blacklist mHubId:J

.field private final blacklist mL2capPsm:I

.field private final blacklist mMaximumPacketSize:I

.field private final blacklist mRfcommServiceName:Ljava/lang/String;

.field private final blacklist mRfcommUuid:Ljava/util/UUID;

.field private final blacklist mSocketName:Ljava/lang/String;

.field private final blacklist mSocketType:I


# direct methods
.method private constructor blacklist <init>(IIZZLjava/lang/String;Ljava/util/UUID;ILjava/lang/String;JJI)V
    .registers 14
    .param p1, "socketType"    # I
    .param p2, "l2capPsm"    # I
    .param p3, "encryptionRequired"    # Z
    .param p4, "authenticationRequired"    # Z
    .param p5, "rfcommServiceName"    # Ljava/lang/String;
    .param p6, "rfcommUuid"    # Ljava/util/UUID;
    .param p7, "dataPath"    # I
    .param p8, "socketName"    # Ljava/lang/String;
    .param p9, "hubId"    # J
    .param p11, "endpointId"    # J
    .param p13, "maximumPacketSize"    # I

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput p1, p0, Landroid/bluetooth/BluetoothSocketSettings;->mSocketType:I

    .line 378
    iput p2, p0, Landroid/bluetooth/BluetoothSocketSettings;->mL2capPsm:I

    .line 379
    iput-boolean p3, p0, Landroid/bluetooth/BluetoothSocketSettings;->mEncryptionRequired:Z

    .line 380
    iput-boolean p4, p0, Landroid/bluetooth/BluetoothSocketSettings;->mAuthenticationRequired:Z

    .line 381
    iput-object p6, p0, Landroid/bluetooth/BluetoothSocketSettings;->mRfcommUuid:Ljava/util/UUID;

    .line 382
    iput-object p5, p0, Landroid/bluetooth/BluetoothSocketSettings;->mRfcommServiceName:Ljava/lang/String;

    .line 383
    iput p7, p0, Landroid/bluetooth/BluetoothSocketSettings;->mDataPath:I

    .line 384
    iput-object p8, p0, Landroid/bluetooth/BluetoothSocketSettings;->mSocketName:Ljava/lang/String;

    .line 385
    iput-wide p9, p0, Landroid/bluetooth/BluetoothSocketSettings;->mHubId:J

    .line 386
    iput-wide p11, p0, Landroid/bluetooth/BluetoothSocketSettings;->mEndpointId:J

    .line 387
    iput p13, p0, Landroid/bluetooth/BluetoothSocketSettings;->mMaximumPacketSize:I

    .line 388
    return-void
.end method

.method synthetic constructor blacklist <init>(IIZZLjava/lang/String;Ljava/util/UUID;ILjava/lang/String;JJILandroid/bluetooth/BluetoothSocketSettings-IA;)V
    .registers 15

    invoke-direct/range {p0 .. p13}, Landroid/bluetooth/BluetoothSocketSettings;-><init>(IIZZLjava/lang/String;Ljava/util/UUID;ILjava/lang/String;JJI)V

    return-void
.end method


# virtual methods
.method public whitelist getDataPath()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 245
    iget v0, p0, Landroid/bluetooth/BluetoothSocketSettings;->mDataPath:I

    return v0
.end method

.method public whitelist getEndpointId()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 306
    iget v0, p0, Landroid/bluetooth/BluetoothSocketSettings;->mDataPath:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 307
    const-wide/16 v0, 0x0

    return-wide v0

    .line 309
    :cond_8
    iget-wide v0, p0, Landroid/bluetooth/BluetoothSocketSettings;->mEndpointId:J

    return-wide v0
.end method

.method public whitelist getHubId()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 284
    iget v0, p0, Landroid/bluetooth/BluetoothSocketSettings;->mDataPath:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 285
    const-wide/16 v0, 0x0

    return-wide v0

    .line 287
    :cond_8
    iget-wide v0, p0, Landroid/bluetooth/BluetoothSocketSettings;->mHubId:J

    return-wide v0
.end method

.method public whitelist getL2capPsm()I
    .registers 2

    .line 186
    iget v0, p0, Landroid/bluetooth/BluetoothSocketSettings;->mL2capPsm:I

    return v0
.end method

.method public whitelist getRequestedMaximumPacketSize()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 326
    iget v0, p0, Landroid/bluetooth/BluetoothSocketSettings;->mMaximumPacketSize:I

    return v0
.end method

.method public whitelist getRfcommServiceName()Ljava/lang/String;
    .registers 2

    .line 197
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocketSettings;->mRfcommServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRfcommUuid()Ljava/util/UUID;
    .registers 2

    .line 208
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocketSettings;->mRfcommUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getSocketName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 266
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocketSettings;->mSocketName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSocketType()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/bluetooth/BluetoothSocketSettings;->mSocketType:I

    return v0
.end method

.method public whitelist isAuthenticationRequired()Z
    .registers 2

    .line 228
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothSocketSettings;->mAuthenticationRequired:Z

    return v0
.end method

.method public whitelist isEncryptionRequired()Z
    .registers 2

    .line 218
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothSocketSettings;->mEncryptionRequired:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BluetoothSocketSettings{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "mSocketType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothSocketSettings;->mSocketType:I

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    const-string v2, ", mEncryptionRequired="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/bluetooth/BluetoothSocketSettings;->mEncryptionRequired:Z

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 339
    const-string v2, ", mAuthenticationRequired="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/bluetooth/BluetoothSocketSettings;->mAuthenticationRequired:Z

    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 341
    iget v1, p0, Landroid/bluetooth/BluetoothSocketSettings;->mSocketType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_47

    .line 342
    const-string v1, ", mRfcommServiceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocketSettings;->mRfcommServiceName:Ljava/lang/String;

    .line 343
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 344
    const-string v3, ", mRfcommUuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocketSettings;->mRfcommUuid:Ljava/util/UUID;

    .line 345
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 347
    :cond_47
    const-string v1, ", mL2capPsm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/bluetooth/BluetoothSocketSettings;->mL2capPsm:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    :goto_52
    iget v1, p0, Landroid/bluetooth/BluetoothSocketSettings;->mDataPath:I

    if-ne v1, v2, :cond_91

    .line 350
    const-string v1, ", mDataPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothSocketSettings;->mDataPath:I

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 352
    const-string v2, ", mSocketName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocketSettings;->mSocketName:Ljava/lang/String;

    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 354
    const-string v2, ", mHubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/bluetooth/BluetoothSocketSettings;->mHubId:J

    .line 355
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 356
    const-string v2, ", mEndpointId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/bluetooth/BluetoothSocketSettings;->mEndpointId:J

    .line 357
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 358
    const-string v2, ", mMaximumPacketSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothSocketSettings;->mMaximumPacketSize:I

    .line 359
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    :cond_91
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
