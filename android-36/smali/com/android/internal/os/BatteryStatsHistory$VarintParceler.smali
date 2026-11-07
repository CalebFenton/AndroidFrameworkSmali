.class public final Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VarintParceler"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist readLongArray(Landroid/os/Parcel;[J)V
    .registers 13
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "values"    # [J

    .line 2423
    array-length v0, p2

    if-nez v0, :cond_4

    .line 2424
    return-void

    .line 2426
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2427
    .local v0, "in":I
    const/4 v1, 0x4

    .line 2428
    .local v1, "available":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, p2

    if-ge v2, v3, :cond_3c

    .line 2429
    const-wide/16 v3, 0x0

    .line 2431
    .local v3, "result":J
    const/4 v5, 0x0

    .local v5, "shift":I
    :goto_10
    const/16 v6, 0x40

    if-ge v5, v6, :cond_2f

    .line 2432
    if-nez v1, :cond_1b

    .line 2433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2434
    const/4 v1, 0x4

    .line 2436
    :cond_1b
    int-to-byte v7, v0

    .line 2437
    .local v7, "b":B
    shr-int/lit8 v0, v0, 0x8

    .line 2438
    add-int/lit8 v1, v1, -0x1

    .line 2440
    and-int/lit8 v8, v7, 0x7f

    int-to-long v8, v8

    shl-long/2addr v8, v5

    or-long/2addr v3, v8

    .line 2441
    and-int/lit16 v8, v7, 0x80

    if-nez v8, :cond_2c

    .line 2442
    aput-wide v3, p2, v2

    .line 2443
    goto :goto_2f

    .line 2431
    .end local v7    # "b":B
    :cond_2c
    add-int/lit8 v5, v5, 0x7

    goto :goto_10

    .line 2446
    :cond_2f
    :goto_2f
    if-ge v5, v6, :cond_34

    .line 2428
    .end local v3    # "result":J
    .end local v5    # "shift":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2447
    .restart local v3    # "result":J
    .restart local v5    # "shift":I
    :cond_34
    new-instance v6, Landroid/os/ParcelFormatException;

    const-string v7, "Invalid varint format"

    invoke-direct {v6, v7}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2450
    .end local v2    # "i":I
    .end local v3    # "result":J
    .end local v5    # "shift":I
    :cond_3c
    return-void
.end method

.method public blacklist writeLongArray(Landroid/os/Parcel;[J)V
    .registers 14
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "values"    # [J

    .line 2389
    array-length v0, p2

    if-nez v0, :cond_4

    .line 2390
    return-void

    .line 2392
    :cond_4
    const/4 v0, 0x0

    .line 2393
    .local v0, "out":I
    const/4 v1, 0x0

    .line 2394
    .local v1, "shift":I
    array-length v2, p2

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_38

    aget-wide v4, p2, v3

    .line 2395
    .local v4, "value":J
    const/4 v6, 0x0

    .line 2396
    .local v6, "done":Z
    :goto_d
    if-nez v6, :cond_35

    .line 2398
    const-wide/16 v7, -0x80

    and-long/2addr v7, v4

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_1c

    .line 2399
    long-to-int v7, v4

    int-to-byte v7, v7

    .line 2400
    .local v7, "b":B
    const/4 v6, 0x1

    goto :goto_24

    .line 2402
    .end local v7    # "b":B
    :cond_1c
    long-to-int v7, v4

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 2403
    .restart local v7    # "b":B
    const/4 v8, 0x7

    ushr-long/2addr v4, v8

    .line 2405
    :goto_24
    const/16 v8, 0x20

    if-ne v1, v8, :cond_2d

    .line 2406
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2407
    const/4 v1, 0x0

    .line 2408
    const/4 v0, 0x0

    .line 2410
    :cond_2d
    and-int/lit16 v8, v7, 0xff

    shl-int/2addr v8, v1

    or-int/2addr v0, v8

    .line 2411
    nop

    .end local v7    # "b":B
    add-int/lit8 v1, v1, 0x8

    .line 2412
    goto :goto_d

    .line 2394
    .end local v4    # "value":J
    .end local v6    # "done":Z
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2414
    :cond_38
    if-eqz v1, :cond_3d

    .line 2415
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2417
    :cond_3d
    return-void
.end method
