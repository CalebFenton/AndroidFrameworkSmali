.class public final Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;
.super Ljava/lang/Object;
.source "GalileoSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GalileoSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GalileoSatelliteClockModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;,
        Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$SatelliteClockType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_FNAV:I = 0x1

.field public static final blacklist TYPE_INAV:I = 0x2

.field public static final blacklist TYPE_UNDEFINED:I


# instance fields
.field private blacklist mAf0:D

.field private blacklist mAf1:D

.field private blacklist mAf2:D

.field private blacklist mBgdSeconds:D

.field private final blacklist mSatelliteClockType:I

.field private blacklist mSisaMeters:D

.field private final blacklist mTimeOfClockSeconds:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 604
    new-instance v0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$1;

    invoke-direct {v0}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$1;-><init>()V

    sput-object v0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)V
    .registers 20
    .param p1, "builder"    # Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;

    .line 544
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 545
    invoke-static/range {p1 .. p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->-$$Nest$fgetmTimeOfClockSeconds(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 546
    invoke-static/range {p1 .. p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->-$$Nest$fgetmAf0(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)D

    move-result-wide v4

    const-wide/high16 v8, 0x3fb0000000000000L    # 0.0625

    const-string v10, "AF0"

    const-wide/high16 v6, -0x4050000000000000L    # -0.0625

    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 547
    invoke-static/range {p1 .. p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->-$$Nest$fgetmAf1(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)D

    move-result-wide v11

    const-wide v15, 0x3e501b2b20000000L    # 1.4999999464748726E-8

    const-string v17, "AF1"

    const-wide v13, -0x41afe4d4e0000000L    # -1.4999999464748726E-8

    invoke-static/range {v11 .. v17}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 548
    invoke-static/range {p1 .. p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->-$$Nest$fgetmAf2(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)D

    move-result-wide v4

    const-wide v8, 0x3c90068e40000000L    # 5.559999704649092E-17

    const-string v10, "AF2"

    const-wide v6, -0x436ff971c0000000L    # -5.559999704649092E-17

    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 549
    invoke-static/range {p1 .. p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->-$$Nest$fgetmBgdSeconds(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)D

    move-result-wide v11

    const-wide v15, 0x3e801b2b20000000L    # 1.199999957179898E-7

    const-string v17, "BgdSeconds"

    const-wide v13, -0x417fe4d4e0000000L    # -1.199999957179898E-7

    invoke-static/range {v11 .. v17}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 551
    invoke-static/range {p1 .. p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->-$$Nest$fgetmSisaMeters(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_68

    goto :goto_69

    :cond_68
    move v2, v3

    :goto_69
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 552
    invoke-static/range {p1 .. p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->-$$Nest$fgetmSatelliteClockType(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)I

    move-result v1

    const/4 v2, 0x2

    const-string v4, "SatelliteClockType"

    invoke-static {v1, v3, v2, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 554
    invoke-static/range {p1 .. p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->-$$Nest$fgetmTimeOfClockSeconds(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mTimeOfClockSeconds:J

    .line 555
    invoke-static/range {p1 .. p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->-$$Nest$fgetmAf0(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mAf0:D

    .line 556
    invoke-static/range {p1 .. p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->-$$Nest$fgetmAf1(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mAf1:D

    .line 557
    invoke-static/range {p1 .. p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->-$$Nest$fgetmAf2(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mAf2:D

    .line 558
    invoke-static/range {p1 .. p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->-$$Nest$fgetmBgdSeconds(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mBgdSeconds:D

    .line 559
    invoke-static/range {p1 .. p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->-$$Nest$fgetmSisaMeters(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mSisaMeters:D

    .line 560
    invoke-static/range {p1 .. p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->-$$Nest$fgetmSatelliteClockType(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)I

    move-result v1

    iput v1, v0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mSatelliteClockType:I

    .line 561
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;Landroid/location/GalileoSatelliteEphemeris-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;-><init>(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAf0()D
    .registers 3

    .line 572
    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mAf0:D

    return-wide v0
.end method

.method public blacklist getAf1()D
    .registers 3

    .line 578
    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mAf1:D

    return-wide v0
.end method

.method public blacklist getAf2()D
    .registers 3

    .line 584
    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mAf2:D

    return-wide v0
.end method

.method public blacklist getBgdSeconds()D
    .registers 3

    .line 590
    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mBgdSeconds:D

    return-wide v0
.end method

.method public blacklist getSatelliteClockType()I
    .registers 2

    .line 601
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mSatelliteClockType:I

    return v0
.end method

.method public blacklist getSisaMeters()D
    .registers 3

    .line 596
    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mSisaMeters:D

    return-wide v0
.end method

.method public blacklist getTimeOfClockSeconds()J
    .registers 3

    .line 566
    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mTimeOfClockSeconds:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GalileoSatelliteClockModel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "timeOfClockSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mTimeOfClockSeconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 648
    const-string v1, ", af0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mAf0:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 649
    const-string v1, ", af1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mAf1:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 650
    const-string v1, ", af2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mAf2:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 651
    const-string v1, ", bgdSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mBgdSeconds:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 652
    const-string v1, ", sisaMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mSisaMeters:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 653
    const-string v1, ", satelliteClockType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mSatelliteClockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 654
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 634
    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mTimeOfClockSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 635
    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mAf0:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 636
    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mAf1:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 637
    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mAf2:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 638
    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mBgdSeconds:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 639
    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mSisaMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 640
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->mSatelliteClockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    return-void
.end method
