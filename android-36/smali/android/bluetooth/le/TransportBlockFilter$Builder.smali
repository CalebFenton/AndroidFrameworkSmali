.class public final Landroid/bluetooth/le/TransportBlockFilter$Builder;
.super Ljava/lang/Object;
.source "TransportBlockFilter.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/TransportBlockFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mOrgId:I

.field private blacklist mTdsFlags:I

.field private blacklist mTdsFlagsMask:I

.field private blacklist mTransportData:[B

.field private blacklist mTransportDataMask:[B

.field private blacklist mWifiNanHash:[B


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 5
    .param p1, "orgId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mTdsFlags:I

    .line 356
    iput v0, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mTdsFlagsMask:I

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mTransportData:[B

    .line 358
    iput-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mTransportDataMask:[B

    .line 359
    iput-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mWifiNanHash:[B

    .line 374
    const/4 v0, 0x1

    if-lt p1, v0, :cond_15

    .line 377
    iput p1, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mOrgId:I

    .line 378
    return-void

    .line 375
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid organization id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/le/TransportBlockFilter;
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 499
    new-instance v0, Landroid/bluetooth/le/TransportBlockFilter;

    iget v1, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mOrgId:I

    iget v2, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mTdsFlags:I

    iget v3, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mTdsFlagsMask:I

    iget-object v4, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mTransportData:[B

    iget-object v5, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mTransportDataMask:[B

    iget-object v6, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mWifiNanHash:[B

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/le/TransportBlockFilter;-><init>(III[B[B[BLandroid/bluetooth/le/TransportBlockFilter-IA;)V

    return-object v0
.end method

.method public whitelist setTdsFlags(II)Landroid/bluetooth/le/TransportBlockFilter$Builder;
    .registers 5
    .param p1, "tdsFlags"    # I
    .param p2, "tdsFlagsMask"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 397
    if-ltz p1, :cond_11

    .line 400
    if-ltz p2, :cond_9

    .line 403
    iput p1, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mTdsFlags:I

    .line 404
    iput p2, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mTdsFlagsMask:I

    .line 405
    return-object p0

    .line 401
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tdsFlagsMask is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tdsFlag is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTransportData([B[B)Landroid/bluetooth/le/TransportBlockFilter$Builder;
    .registers 5
    .param p1, "transportData"    # [B
    .param p2, "transportDataMask"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 433
    iget v0, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mOrgId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    .line 438
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    array-length v0, p1

    if-eqz v0, :cond_2a

    .line 443
    array-length v0, p2

    if-eqz v0, :cond_22

    .line 446
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1a

    .line 450
    iput-object p1, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mTransportData:[B

    .line 451
    iput-object p2, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mTransportDataMask:[B

    .line 452
    return-object p0

    .line 447
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of transportData and transportDataMask do not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transportDataMask is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transportData is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setWifiNanHash() should be used instead of setTransportData() when orgId is WIFI_ALLIANCE_NEIGHBOR_AWARENESS_NETWORKING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setWifiNanHash([B)Landroid/bluetooth/le/TransportBlockFilter$Builder;
    .registers 4
    .param p1, "wifiNanHash"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 476
    iget v0, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mOrgId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 481
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    .line 485
    iput-object p1, p0, Landroid/bluetooth/le/TransportBlockFilter$Builder;->mWifiNanHash:[B

    .line 486
    return-object p0

    .line 483
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wi-Fi NAN hash must be 8 octets long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setWifiNanHash() can only be used when orgId is WIFI_ALLIANCE_NEIGHBOR_AWARENESS_NETWORKING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
