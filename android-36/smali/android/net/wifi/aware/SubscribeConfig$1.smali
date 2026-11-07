.class Landroid/net/wifi/aware/SubscribeConfig$1;
.super Ljava/lang/Object;
.source "SubscribeConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/SubscribeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/SubscribeConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/SubscribeConfig;
    .registers 26
    .param p1, "in"    # Landroid/os/Parcel;

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 348
    .local v1, "serviceName":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 349
    .local v2, "ssi":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 350
    .local v3, "matchFilter":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 351
    .local v4, "subscribeType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 352
    .local v5, "ttlSec":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_1e

    move v0, v6

    goto :goto_1f

    :cond_1e
    move v0, v7

    .line 353
    .local v0, "enableTerminateNotification":Z
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 354
    .local v8, "minDistanceMm":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2b

    move v9, v6

    goto :goto_2c

    :cond_2b
    move v9, v7

    .line 355
    .local v9, "minDistanceMmSet":Z
    :goto_2c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 356
    .local v10, "maxDistanceMm":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_37

    goto :goto_38

    :cond_37
    move v6, v7

    .line 357
    .local v6, "maxDistanceMmSet":Z
    :goto_38
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 358
    .local v11, "enableInstantMode":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 359
    .local v12, "band":I
    const-class v7, Landroid/net/wifi/aware/AwarePairingConfig;

    .line 360
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 359
    move-object/from16 v13, p1

    invoke-virtual {v13, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/aware/AwarePairingConfig;

    .line 361
    .local v7, "pairingConfig":Landroid/net/wifi/aware/AwarePairingConfig;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 362
    .local v14, "isSuspendable":Z
    invoke-static {v13}, Landroid/net/wifi/ParcelUtil;->readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v15

    .line 363
    .local v15, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 364
    .local v16, "rangingInterval":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 365
    .local v17, "enablePeriodicRanging":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 366
    .local v18, "burstSize":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 367
    .local v19, "frequencyMhz":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 368
    .local v20, "centerFrequency0Mhz":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 369
    .local v21, "centerFrequency1Mhz":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 370
    .local v22, "preamble":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 372
    .local v23, "channelWidth":I
    move-object v13, v7

    move v7, v9

    move v9, v6

    move v6, v0

    .end local v0    # "enableTerminateNotification":Z
    .local v6, "enableTerminateNotification":Z
    .local v7, "minDistanceMmSet":Z
    .local v9, "maxDistanceMmSet":Z
    .local v13, "pairingConfig":Landroid/net/wifi/aware/AwarePairingConfig;
    new-instance v0, Landroid/net/wifi/aware/SubscribeConfig;

    invoke-direct/range {v0 .. v23}, Landroid/net/wifi/aware/SubscribeConfig;-><init>([B[B[BIIZZIZIZILandroid/net/wifi/aware/AwarePairingConfig;ZLjava/util/List;IZIIIIII)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 339
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/SubscribeConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/SubscribeConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/aware/SubscribeConfig;
    .registers 3
    .param p1, "size"    # I

    .line 342
    new-array v0, p1, [Landroid/net/wifi/aware/SubscribeConfig;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 339
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/SubscribeConfig$1;->newArray(I)[Landroid/net/wifi/aware/SubscribeConfig;

    move-result-object p1

    return-object p1
.end method
