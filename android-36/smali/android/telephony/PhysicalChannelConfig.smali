.class public final Landroid/telephony/PhysicalChannelConfig;
.super Ljava/lang/Object;
.source "PhysicalChannelConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhysicalChannelConfig$Builder;,
        Landroid/telephony/PhysicalChannelConfig$ConnectionStatus;
    }
.end annotation


# static fields
.field public static final whitelist BAND_UNKNOWN:I = 0x0

.field public static final whitelist CELL_BANDWIDTH_UNKNOWN:I = 0x0

.field public static final whitelist CHANNEL_NUMBER_UNKNOWN:I = 0x7fffffff

.field public static final whitelist CONNECTION_PRIMARY_SERVING:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONNECTION_SECONDARY_SERVING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONNECTION_UNKNOWN:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FREQUENCY_UNKNOWN:I = -0x1

.field public static final whitelist PHYSICAL_CELL_ID_MAXIMUM_VALUE:I = 0x3ef

.field public static final whitelist PHYSICAL_CELL_ID_UNKNOWN:I = -0x1


# instance fields
.field private blacklist mBand:I

.field private greylist-max-o mCellBandwidthDownlinkKhz:I

.field private blacklist mCellBandwidthUplinkKhz:I

.field private greylist-max-o mCellConnectionStatus:I

.field private blacklist mContextIds:[I

.field private blacklist mDownlinkChannelNumber:I

.field private blacklist mDownlinkFrequency:I

.field private blacklist mFrequencyRange:I

.field private blacklist mNetworkType:I

.field private blacklist mPhysicalCellId:I

.field private blacklist mUplinkChannelNumber:I

.field private blacklist mUplinkFrequency:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 452
    new-instance v0, Landroid/telephony/PhysicalChannelConfig$1;

    invoke-direct {v0}, Landroid/telephony/PhysicalChannelConfig$1;-><init>()V

    sput-object v0, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    .line 505
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    if-lez v0, :cond_4c

    .line 506
    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setDownlinkFrequency()V

    .line 507
    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setUplinkFrequency()V

    .line 508
    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setFrequencyRange()V

    .line 510
    :cond_4c
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/PhysicalChannelConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/PhysicalChannelConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/PhysicalChannelConfig$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/telephony/PhysicalChannelConfig$Builder;

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmCellConnectionStatus(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    .line 514
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmCellBandwidthDownlinkKhz(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    .line 515
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmCellBandwidthUplinkKhz(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    .line 516
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmNetworkType(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    .line 517
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmDownlinkChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    .line 518
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmUplinkChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    .line 519
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmFrequencyRange(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 520
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmContextIds(Landroid/telephony/PhysicalChannelConfig$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    .line 521
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmPhysicalCellId(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    .line 522
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmBand(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    .line 523
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    if-lez v0, :cond_4c

    .line 524
    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setDownlinkFrequency()V

    .line 525
    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setUplinkFrequency()V

    .line 526
    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setFrequencyRange()V

    .line 528
    :cond_4c
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/PhysicalChannelConfig$Builder;Landroid/telephony/PhysicalChannelConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/PhysicalChannelConfig;-><init>(Landroid/telephony/PhysicalChannelConfig$Builder;)V

    return-void
.end method

.method private greylist-max-o getConnectionStatusString()Ljava/lang/String;
    .registers 3

    .line 313
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    packed-switch v0, :pswitch_data_2a

    .line 321
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 317
    :pswitch_21
    const-string v0, "SecondaryServing"

    return-object v0

    .line 315
    :pswitch_24
    const-string v0, "PrimaryServing"

    return-object v0

    .line 319
    :pswitch_27
    const-string v0, "Unknown"

    return-object v0

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_27
        :pswitch_5
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method private blacklist setDownlinkFrequency()V
    .registers 4

    .line 326
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_32

    :pswitch_6
    goto :goto_30

    .line 328
    :pswitch_7
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromNrArfcn(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    .line 330
    goto :goto_30

    .line 332
    :pswitch_10
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromEarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    .line 334
    goto :goto_30

    .line 341
    :pswitch_1b
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromUarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    .line 343
    goto :goto_30

    .line 347
    :pswitch_26
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromArfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    .line 351
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_26
        :pswitch_26
        :pswitch_1b
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_6
        :pswitch_6
        :pswitch_10
        :pswitch_6
        :pswitch_1b
        :pswitch_26
        :pswitch_1b
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist setFrequencyRange()V
    .registers 2

    .line 382
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    if-eqz v0, :cond_5

    .line 383
    return-void

    .line 386
    :cond_5
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    packed-switch v0, :pswitch_data_40

    .line 407
    :pswitch_a
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    goto :goto_32

    .line 388
    :pswitch_e
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromNrBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 389
    goto :goto_32

    .line 391
    :pswitch_17
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromEutranBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 392
    goto :goto_32

    .line 399
    :pswitch_20
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromUtranBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 400
    goto :goto_32

    .line 404
    :pswitch_29
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromGeranBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 405
    nop

    .line 411
    :goto_32
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    if-nez v0, :cond_3e

    .line 412
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeFromArfcn(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 415
    :cond_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_20
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_a
        :pswitch_a
        :pswitch_17
        :pswitch_a
        :pswitch_20
        :pswitch_29
        :pswitch_20
        :pswitch_a
        :pswitch_a
        :pswitch_e
    .end packed-switch
.end method

.method private blacklist setUplinkFrequency()V
    .registers 4

    .line 354
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_32

    :pswitch_6
    goto :goto_30

    .line 356
    :pswitch_7
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromNrArfcn(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    .line 358
    goto :goto_30

    .line 360
    :pswitch_10
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromEarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    .line 362
    goto :goto_30

    .line 369
    :pswitch_1b
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromUarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    .line 371
    goto :goto_30

    .line 375
    :pswitch_26
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromArfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    .line 379
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_26
        :pswitch_26
        :pswitch_1b
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_6
        :pswitch_6
        :pswitch_10
        :pswitch_6
        :pswitch_1b
        :pswitch_26
        :pswitch_1b
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public blacklist createLocationInfoSanitizedCopy()Landroid/telephony/PhysicalChannelConfig;
    .registers 3

    .line 305
    new-instance v0, Landroid/telephony/PhysicalChannelConfig$Builder;

    invoke-direct {v0, p0}, Landroid/telephony/PhysicalChannelConfig$Builder;-><init>(Landroid/telephony/PhysicalChannelConfig;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->setPhysicalCellId(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/PhysicalChannelConfig$Builder;->build()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 419
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 420
    return v0

    .line 423
    :cond_4
    instance-of v1, p1, Landroid/telephony/PhysicalChannelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 424
    return v2

    .line 427
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/PhysicalChannelConfig;

    .line 428
    .local v1, "config":Landroid/telephony/PhysicalChannelConfig;
    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    if-ne v3, v4, :cond_5a

    iget-object v3, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    iget-object v4, v1, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    .line 436
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    if-ne v3, v4, :cond_5a

    goto :goto_5b

    :cond_5a
    move v0, v2

    .line 428
    :goto_5b
    return v0
.end method

.method public whitelist getBand()I
    .registers 2

    .line 235
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    return v0
.end method

.method public whitelist getCellBandwidthDownlinkKhz()I
    .registers 2

    .line 171
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    return v0
.end method

.method public whitelist getCellBandwidthUplinkKhz()I
    .registers 2

    .line 179
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    return v0
.end method

.method public whitelist getConnectionStatus()I
    .registers 2

    .line 297
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    return v0
.end method

.method public blacklist getContextIds()[I
    .registers 2

    .line 192
    iget-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    return-object v0
.end method

.method public whitelist getDownlinkChannelNumber()I
    .registers 2

    .line 215
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    return v0
.end method

.method public whitelist getDownlinkFrequencyKhz()I
    .registers 2

    .line 243
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    return v0
.end method

.method public blacklist getFrequencyRange()I
    .registers 2

    .line 206
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    return v0
.end method

.method public whitelist getNetworkType()I
    .registers 2

    .line 283
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    return v0
.end method

.method public whitelist getPhysicalCellId()I
    .registers 2

    .line 274
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    return v0
.end method

.method public whitelist getUplinkChannelNumber()I
    .registers 2

    .line 224
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    return v0
.end method

.method public whitelist getUplinkFrequencyKhz()I
    .registers 2

    .line 251
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 14

    .line 444
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    .line 445
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    .line 446
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    .line 447
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    .line 448
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    .line 444
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    const-string/jumbo v1, "{mConnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 467
    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 468
    const-string v1, ",mCellBandwidthDownlinkKhz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 470
    const-string v1, ",mCellBandwidthUplinkKhz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 472
    const-string v1, ",mNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    .line 473
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 474
    const-string v1, ",mFrequencyRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 475
    invoke-static {v1}, Landroid/telephony/ServiceState;->frequencyRangeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 476
    const-string v1, ",mDownlinkChannelNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 478
    const-string v1, ",mUplinkChannelNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 480
    const-string v1, ",mContextIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    .line 481
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 482
    const-string v1, ",mPhysicalCellId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 484
    const-string v1, ",mBand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 486
    const-string v1, ",mDownlinkFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 488
    const-string v1, ",mUplinkFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 490
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 154
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 162
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    return-void
.end method
