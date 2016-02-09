.class public final Landroid/bluetooth/le/ScanFilter;
.super Ljava/lang/Object;
.source "ScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ScanFilter$Builder;,
        Landroid/bluetooth/le/ScanFilter$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:Landroid/bluetooth/le/ScanFilter;


# instance fields
.field private final mDeviceAddress:Ljava/lang/String;

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerData:[B

.field private final mManufacturerDataMask:[B

.field private final mManufacturerId:I

.field private final mServiceData:[B

.field private final mServiceDataMask:[B

.field private final mServiceDataUuid:Landroid/os/ParcelUuid;

.field private final mServiceUuid:Landroid/os/ParcelUuid;

.field private final mServiceUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 70
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    #@5
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroid/bluetooth/le/ScanFilter;->EMPTY:Landroid/bluetooth/le/ScanFilter;

    #@b
    .line 145
    new-instance v0, Landroid/bluetooth/le/ScanFilter$1;

    #@d
    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$1;-><init>()V

    #@10
    sput-object v0, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12
    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "uuidMask"    # Landroid/os/ParcelUuid;
    .param p5, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p6, "serviceData"    # [B
    .param p7, "serviceDataMask"    # [B
    .param p8, "manufacturerId"    # I
    .param p9, "manufacturerData"    # [B
    .param p10, "manufacturerDataMask"    # [B

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    #@5
    .line 78
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    #@7
    .line 79
    iput-object p4, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    #@9
    .line 80
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    #@b
    .line 81
    iput-object p5, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    #@d
    .line 82
    iput-object p6, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    #@f
    .line 83
    iput-object p7, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    #@11
    .line 84
    iput p8, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    #@13
    .line 85
    iput-object p9, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    #@15
    .line 86
    iput-object p10, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    #@17
    .line 76
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BLandroid/bluetooth/le/ScanFilter;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "uuidMask"    # Landroid/os/ParcelUuid;
    .param p5, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p6, "serviceData"    # [B
    .param p7, "serviceDataMask"    # [B
    .param p8, "manufacturerId"    # I
    .param p9, "manufacturerData"    # [B
    .param p10, "manufacturerDataMask"    # [B

    #@0
    .prologue
    invoke-direct/range {p0 .. p10}, Landroid/bluetooth/le/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[B)V

    #@3
    return-void
.end method

.method private matchesPartialData([B[B[B)Z
    .locals 6
    .param p1, "data"    # [B
    .param p2, "dataMask"    # [B
    .param p3, "parsedData"    # [B

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 355
    if-eqz p3, :cond_0

    #@4
    array-length v1, p3

    #@5
    array-length v2, p1

    #@6
    if-ge v1, v2, :cond_1

    #@8
    .line 356
    :cond_0
    return v4

    #@9
    .line 358
    :cond_1
    if-nez p2, :cond_4

    #@b
    .line 359
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@d
    if-ge v0, v1, :cond_3

    #@f
    .line 360
    aget-byte v1, p3, v0

    #@11
    aget-byte v2, p1, v0

    #@13
    if-eq v1, v2, :cond_2

    #@15
    .line 361
    return v4

    #@16
    .line 359
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 364
    :cond_3
    return v5

    #@1a
    .line 366
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@1b
    .restart local v0    # "i":I
    :goto_1
    array-length v1, p1

    #@1c
    if-ge v0, v1, :cond_6

    #@1e
    .line 367
    aget-byte v1, p2, v0

    #@20
    aget-byte v2, p3, v0

    #@22
    and-int/2addr v1, v2

    #@23
    aget-byte v2, p2, v0

    #@25
    aget-byte v3, p1, v0

    #@27
    and-int/2addr v2, v3

    #@28
    if-eq v1, v2, :cond_5

    #@2a
    .line 368
    return v4

    #@2b
    .line 366
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 371
    :cond_6
    return v5
.end method

.method private matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 8
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "mask"    # Ljava/util/UUID;
    .param p3, "data"    # Ljava/util/UUID;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 342
    if-nez p2, :cond_0

    #@3
    .line 343
    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 345
    :cond_0
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    #@f
    move-result-wide v4

    #@10
    and-long/2addr v2, v4

    #@11
    .line 346
    invoke-virtual {p3}, Ljava/util/UUID;->getLeastSignificantBits()J

    #@14
    move-result-wide v4

    #@15
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    #@18
    move-result-wide v6

    #@19
    and-long/2addr v4, v6

    #@1a
    .line 345
    cmp-long v1, v2, v4

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 347
    return v0

    #@1f
    .line 349
    :cond_1
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    #@22
    move-result-wide v2

    #@23
    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    #@26
    move-result-wide v4

    #@27
    and-long/2addr v2, v4

    #@28
    .line 350
    invoke-virtual {p3}, Ljava/util/UUID;->getMostSignificantBits()J

    #@2b
    move-result-wide v4

    #@2c
    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    #@2f
    move-result-wide v6

    #@30
    and-long/2addr v4, v6

    #@31
    .line 349
    cmp-long v1, v2, v4

    #@33
    if-nez v1, :cond_2

    #@35
    const/4 v0, 0x1

    #@36
    :cond_2
    return v0
.end method

.method private matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z
    .locals 7
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .param p2, "parcelUuidMask"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 324
    if-nez p1, :cond_0

    #@4
    .line 325
    return v6

    #@5
    .line 327
    :cond_0
    if-nez p3, :cond_1

    #@7
    .line 328
    return v5

    #@8
    .line 331
    :cond_1
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "parcelUuid$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_4

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/os/ParcelUuid;

    #@18
    .line 332
    .local v0, "parcelUuid":Landroid/os/ParcelUuid;
    if-nez p2, :cond_3

    #@1a
    const/4 v2, 0x0

    #@1b
    .line 333
    :goto_0
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@22
    move-result-object v4

    #@23
    invoke-direct {p0, v3, v2, v4}, Landroid/bluetooth/le/ScanFilter;->matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_2

    #@29
    .line 334
    return v6

    #@2a
    .line 332
    :cond_3
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@2d
    move-result-object v2

    #@2e
    .local v2, "uuidMask":Ljava/util/UUID;
    goto :goto_0

    #@2f
    .line 337
    .end local v0    # "parcelUuid":Landroid/os/ParcelUuid;
    .end local v2    # "uuidMask":Ljava/util/UUID;
    :cond_4
    return v5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 91
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 395
    if-ne p0, p1, :cond_0

    #@3
    .line 396
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 398
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    .line 399
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 401
    check-cast v0, Landroid/bluetooth/le/ScanFilter;

    #@15
    .line 402
    .local v0, "other":Landroid/bluetooth/le/ScanFilter;
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    #@17
    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    #@19
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_3

    #@1f
    .line 403
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    #@21
    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    #@23
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    .line 402
    if-eqz v2, :cond_3

    #@29
    .line 404
    iget v2, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    #@2b
    iget v3, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    #@2d
    if-ne v2, v3, :cond_3

    #@2f
    .line 405
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    #@31
    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    #@33
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    .line 402
    if-eqz v2, :cond_3

    #@39
    .line 406
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    #@3b
    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    #@3d
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    .line 402
    if-eqz v2, :cond_3

    #@43
    .line 407
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    #@45
    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    #@47
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4a
    move-result v2

    #@4b
    .line 402
    if-eqz v2, :cond_3

    #@4d
    .line 408
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    #@4f
    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    #@51
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@54
    move-result v2

    #@55
    .line 402
    if-eqz v2, :cond_3

    #@57
    .line 409
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    #@59
    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    #@5b
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5e
    move-result v2

    #@5f
    .line 402
    if-eqz v2, :cond_3

    #@61
    .line 410
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    #@63
    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    #@65
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@68
    move-result v2

    #@69
    .line 402
    if-eqz v2, :cond_3

    #@6b
    .line 411
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    #@6d
    iget-object v2, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    #@6f
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@72
    move-result v1

    #@73
    .line 402
    :cond_3
    return v1
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getManufacturerData()[B
    .locals 1

    #@0
    .prologue
    .line 259
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    #@2
    return-object v0
.end method

.method public getManufacturerDataMask()[B
    .locals 1

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    #@2
    return-object v0
.end method

.method public getManufacturerId()I
    .locals 1

    #@0
    .prologue
    .line 254
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    #@2
    return v0
.end method

.method public getServiceData()[B
    .locals 1

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    #@2
    return-object v0
.end method

.method public getServiceDataMask()[B
    .locals 1

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    #@2
    return-object v0
.end method

.method public getServiceDataUuid()Landroid/os/ParcelUuid;
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    #@2
    return-object v0
.end method

.method public getServiceUuid()Landroid/os/ParcelUuid;
    .locals 1

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    #@2
    return-object v0
.end method

.method public getServiceUuidMask()Landroid/os/ParcelUuid;
    .locals 1

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 388
    const/16 v0, 0xa

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    #@b
    const/4 v2, 0x1

    #@c
    aput-object v1, v0, v2

    #@e
    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x2

    #@15
    aput-object v1, v0, v2

    #@17
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 389
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    #@23
    const/4 v2, 0x5

    #@24
    aput-object v1, v0, v2

    #@26
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    #@28
    const/4 v2, 0x6

    #@29
    aput-object v1, v0, v2

    #@2b
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    #@2d
    const/4 v2, 0x7

    #@2e
    aput-object v1, v0, v2

    #@30
    .line 390
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    #@32
    const/16 v2, 0x8

    #@34
    aput-object v1, v0, v2

    #@36
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    #@38
    const/16 v2, 0x9

    #@3a
    aput-object v1, v0, v2

    #@3c
    .line 388
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@3f
    move-result v0

    #@40
    return v0
.end method

.method public isAllFieldsEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 419
    sget-object v0, Landroid/bluetooth/le/ScanFilter;->EMPTY:Landroid/bluetooth/le/ScanFilter;

    #@2
    invoke-virtual {v0, p0}, Landroid/bluetooth/le/ScanFilter;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public matches(Landroid/bluetooth/le/ScanResult;)Z
    .locals 6
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 272
    if-nez p1, :cond_0

    #@3
    .line 273
    return v5

    #@4
    .line 275
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@7
    move-result-object v0

    #@8
    .line 277
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 278
    if-eqz v0, :cond_3

    #@e
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    #@10
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_3

    #@1a
    .line 282
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    #@1d
    move-result-object v1

    #@1e
    .line 285
    .local v1, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    if-nez v1, :cond_5

    #@20
    .line 286
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    #@22
    if-nez v2, :cond_2

    #@24
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    #@26
    if-eqz v2, :cond_4

    #@28
    .line 288
    :cond_2
    return v5

    #@29
    .line 279
    .end local v1    # "scanRecord":Landroid/bluetooth/le/ScanRecord;
    :cond_3
    return v5

    #@2a
    .line 286
    .restart local v1    # "scanRecord":Landroid/bluetooth/le/ScanRecord;
    :cond_4
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    #@2c
    if-nez v2, :cond_2

    #@2e
    .line 287
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    #@30
    if-nez v2, :cond_2

    #@32
    .line 292
    :cond_5
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    #@34
    if-eqz v2, :cond_6

    #@36
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    #@38
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_8

    #@42
    .line 297
    :cond_6
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    #@44
    if-eqz v2, :cond_7

    #@46
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    #@48
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    #@4a
    .line 298
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    #@4d
    move-result-object v4

    #@4e
    .line 297
    invoke-direct {p0, v2, v3, v4}, Landroid/bluetooth/le/ScanFilter;->matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z

    #@51
    move-result v2

    #@52
    if-eqz v2, :cond_9

    #@54
    .line 303
    :cond_7
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    #@56
    if-eqz v2, :cond_a

    #@58
    .line 304
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    #@5a
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    #@5c
    .line 305
    iget-object v4, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    #@5e
    invoke-virtual {v1, v4}, Landroid/bluetooth/le/ScanRecord;->getServiceData(Landroid/os/ParcelUuid;)[B

    #@61
    move-result-object v4

    #@62
    .line 304
    invoke-direct {p0, v2, v3, v4}, Landroid/bluetooth/le/ScanFilter;->matchesPartialData([B[B[B)Z

    #@65
    move-result v2

    #@66
    if-nez v2, :cond_a

    #@68
    .line 306
    return v5

    #@69
    .line 293
    :cond_8
    return v5

    #@6a
    .line 299
    :cond_9
    return v5

    #@6b
    .line 311
    :cond_a
    iget v2, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    #@6d
    if-ltz v2, :cond_b

    #@6f
    .line 312
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    #@71
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    #@73
    .line 313
    iget v4, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    #@75
    invoke-virtual {v1, v4}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    #@78
    move-result-object v4

    #@79
    .line 312
    invoke-direct {p0, v2, v3, v4}, Landroid/bluetooth/le/ScanFilter;->matchesPartialData([B[B[B)Z

    #@7c
    move-result v2

    #@7d
    if-nez v2, :cond_b

    #@7f
    .line 314
    return v5

    #@80
    .line 318
    :cond_b
    const/4 v2, 0x1

    #@81
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "BluetoothLeScanFilter [mDeviceName="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", mDeviceAddress="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 377
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    #@1b
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 378
    const-string/jumbo v1, ", mUuid="

    #@22
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 378
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    #@28
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 378
    const-string/jumbo v1, ", mUuidMask="

    #@2f
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 378
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    #@35
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 379
    const-string/jumbo v1, ", mServiceDataUuid="

    #@3c
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 379
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    #@42
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 379
    const-string/jumbo v1, ", mServiceData="

    #@4d
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 380
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    #@53
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 380
    const-string/jumbo v1, ", mServiceDataMask="

    #@5e
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    .line 381
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    #@64
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    .line 381
    const-string/jumbo v1, ", mManufacturerId="

    #@6f
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    .line 381
    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    #@75
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    .line 382
    const-string/jumbo v1, ", mManufacturerData="

    #@7c
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    .line 382
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    #@82
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@85
    move-result-object v1

    #@86
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    .line 383
    const-string/jumbo v1, ", mManufacturerDataMask="

    #@8d
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    .line 383
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    #@93
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@96
    move-result-object v1

    #@97
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    .line 383
    const-string/jumbo v1, "]"

    #@9e
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v0

    #@a2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v0

    #@a6
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 96
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    #@4
    if-nez v0, :cond_5

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 97
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 98
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 100
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    #@15
    if-nez v0, :cond_6

    #@17
    move v0, v1

    #@18
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 101
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 102
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    .line 104
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    #@26
    if-nez v0, :cond_7

    #@28
    move v0, v1

    #@29
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 105
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    #@2e
    if-eqz v0, :cond_2

    #@30
    .line 106
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    #@32
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@35
    .line 107
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    #@37
    if-nez v0, :cond_8

    #@39
    move v0, v1

    #@3a
    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 108
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    #@3f
    if-eqz v0, :cond_2

    #@41
    .line 109
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    #@43
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@46
    .line 112
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    #@48
    if-nez v0, :cond_9

    #@4a
    move v0, v1

    #@4b
    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    .line 113
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    #@50
    if-eqz v0, :cond_3

    #@52
    .line 114
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    #@54
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@57
    .line 115
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    #@59
    if-nez v0, :cond_a

    #@5b
    move v0, v1

    #@5c
    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    .line 116
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    #@61
    if-eqz v0, :cond_3

    #@63
    .line 117
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    #@65
    array-length v0, v0

    #@66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@69
    .line 118
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    #@6b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@6e
    .line 120
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    #@70
    if-nez v0, :cond_b

    #@72
    move v0, v1

    #@73
    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@76
    .line 121
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    #@78
    if-eqz v0, :cond_3

    #@7a
    .line 122
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    #@7c
    array-length v0, v0

    #@7d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@80
    .line 123
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    #@82
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@85
    .line 127
    :cond_3
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    #@87
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8a
    .line 128
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    #@8c
    if-nez v0, :cond_c

    #@8e
    move v0, v1

    #@8f
    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@92
    .line 129
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    #@94
    if-eqz v0, :cond_4

    #@96
    .line 130
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    #@98
    array-length v0, v0

    #@99
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9c
    .line 131
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    #@9e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@a1
    .line 133
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    #@a3
    if-nez v0, :cond_d

    #@a5
    :goto_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a8
    .line 134
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    #@aa
    if-eqz v0, :cond_4

    #@ac
    .line 135
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    #@ae
    array-length v0, v0

    #@af
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b2
    .line 136
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    #@b4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@b7
    .line 95
    :cond_4
    return-void

    #@b8
    :cond_5
    move v0, v2

    #@b9
    .line 96
    goto/16 :goto_0

    #@bb
    :cond_6
    move v0, v2

    #@bc
    .line 100
    goto/16 :goto_1

    #@be
    :cond_7
    move v0, v2

    #@bf
    .line 104
    goto/16 :goto_2

    #@c1
    :cond_8
    move v0, v2

    #@c2
    .line 107
    goto/16 :goto_3

    #@c4
    :cond_9
    move v0, v2

    #@c5
    .line 112
    goto :goto_4

    #@c6
    :cond_a
    move v0, v2

    #@c7
    .line 115
    goto :goto_5

    #@c8
    :cond_b
    move v0, v2

    #@c9
    .line 120
    goto :goto_6

    #@ca
    :cond_c
    move v0, v2

    #@cb
    .line 128
    goto :goto_7

    #@cc
    :cond_d
    move v1, v2

    #@cd
    .line 133
    goto :goto_8
.end method
