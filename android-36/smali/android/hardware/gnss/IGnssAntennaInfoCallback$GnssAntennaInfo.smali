.class public Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;
.super Ljava/lang/Object;
.source "IGnssAntennaInfoCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssAntennaInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssAntennaInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist carrierFrequencyHz:J

.field public blacklist phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;

.field public blacklist phaseCenterVariationCorrectionMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

.field public blacklist phaseCenterVariationCorrectionUncertaintyMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

.field public blacklist signalGainCorrectionDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

.field public blacklist signalGainCorrectionUncertaintyDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 345
    new-instance v0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyHz:J

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 408
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 409
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 410
    const/4 v1, 0x0

    .line 411
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 412
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 411
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 414
    :cond_19
    return v1

    .line 416
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 417
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 419
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 401
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 402
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 403
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 404
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 405
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 375
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 377
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_de

    .line 378
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_dc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 391
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 394
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 378
    return-void

    .line 392
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 379
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyHz:J

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_dc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 391
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 394
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 380
    return-void

    .line 392
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    :cond_42
    :try_start_42
    sget-object v2, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;

    iput-object v2, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_dc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 391
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 394
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 382
    return-void

    .line 392
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 383
    :cond_62
    :try_start_62
    sget-object v2, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    iput-object v2, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_dc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    .line 391
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    .line 394
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 384
    return-void

    .line 392
    :cond_7c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 385
    :cond_82
    :try_start_82
    sget-object v2, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    iput-object v2, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_dc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a2

    .line 391
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_9c

    .line 394
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 386
    return-void

    .line 392
    :cond_9c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 387
    :cond_a2
    :try_start_a2
    sget-object v2, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    iput-object v2, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b0
    .catchall {:try_start_a2 .. :try_end_b0} :catchall_dc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c2

    .line 391
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_bc

    .line 394
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 388
    return-void

    .line 392
    :cond_bc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 389
    :cond_c2
    :try_start_c2
    sget-object v2, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    iput-object v2, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;
    :try_end_cc
    .catchall {:try_start_c2 .. :try_end_cc} :catchall_dc

    .line 391
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d6

    .line 394
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 395
    nop

    .line 396
    return-void

    .line 392
    :cond_d6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    :catchall_dc
    move-exception v2

    goto :goto_e6

    .line 377
    :cond_de
    :try_start_de
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_e6
    .catchall {:try_start_de .. :try_end_e6} :catchall_dc

    .line 391
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_e6
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_ef

    .line 392
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    :cond_ef
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 395
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 360
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyHz:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 362
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 363
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 364
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 365
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 366
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 368
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 369
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 371
    return-void
.end method
