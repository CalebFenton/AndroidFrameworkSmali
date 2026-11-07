.class public final Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;
.super Ljava/lang/Object;
.source "GpsSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GpsSatelliteClockModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAf0:D

.field private final blacklist mAf1:D

.field private final blacklist mAf2:D

.field private final blacklist mIodc:I

.field private final blacklist mTgd:D

.field private final blacklist mTimeOfClockSeconds:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 523
    new-instance v0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$1;

    invoke-direct {v0}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$1;-><init>()V

    sput-object v0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)V
    .registers 19
    .param p1, "builder"    # Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;

    .line 472
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 473
    invoke-static/range {p1 .. p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->-$$Nest$fgetmTimeOfClockSeconds(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-ltz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 474
    invoke-static/range {p1 .. p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->-$$Nest$fgetmAf0(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)D

    move-result-wide v3

    const-wide v7, 0x3f84024b40000000L    # 0.009770000353455544

    const-string v9, "Af0"

    const-wide v5, -0x407bfdb4c0000000L    # -0.009770000353455544

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 475
    invoke-static/range {p1 .. p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->-$$Nest$fgetmAf1(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)D

    move-result-wide v10

    const-wide v14, 0x3e30052da0000000L    # 3.729999864532374E-9

    const-string v16, "Af1"

    const-wide v12, -0x41cffad260000000L    # -3.729999864532374E-9

    invoke-static/range {v10 .. v16}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 476
    invoke-static/range {p1 .. p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->-$$Nest$fgetmAf2(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)D

    move-result-wide v3

    const-wide v7, 0x3cf0086680000000L    # 3.5599998562127824E-15

    const-string v9, "Af2"

    const-wide v5, -0x430ff79980000000L    # -3.5599998562127824E-15

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 477
    invoke-static/range {p1 .. p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->-$$Nest$fgetmTgd(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)D

    move-result-wide v10

    const-wide v14, 0x3e70068d80000000L    # 5.969999961052963E-8

    const-string v16, "Tgd"

    const-wide v12, -0x418ff97280000000L    # -5.969999961052963E-8

    invoke-static/range {v10 .. v16}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 478
    invoke-static/range {p1 .. p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->-$$Nest$fgetmIodc(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)I

    move-result v1

    const/16 v3, 0x3ff

    const-string v4, "Iodc"

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 479
    invoke-static/range {p1 .. p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->-$$Nest$fgetmTimeOfClockSeconds(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mTimeOfClockSeconds:J

    .line 480
    invoke-static/range {p1 .. p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->-$$Nest$fgetmAf0(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mAf0:D

    .line 481
    invoke-static/range {p1 .. p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->-$$Nest$fgetmAf1(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mAf1:D

    .line 482
    invoke-static/range {p1 .. p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->-$$Nest$fgetmAf2(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mAf2:D

    .line 483
    invoke-static/range {p1 .. p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->-$$Nest$fgetmTgd(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mTgd:D

    .line 484
    invoke-static/range {p1 .. p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->-$$Nest$fgetmIodc(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)I

    move-result v1

    iput v1, v0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mIodc:I

    .line 485
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;Landroid/location/GpsSatelliteEphemeris-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;-><init>(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAf0()D
    .registers 3

    .line 496
    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mAf0:D

    return-wide v0
.end method

.method public blacklist getAf1()D
    .registers 3

    .line 502
    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mAf1:D

    return-wide v0
.end method

.method public blacklist getAf2()D
    .registers 3

    .line 508
    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mAf2:D

    return-wide v0
.end method

.method public blacklist getIodc()I
    .registers 2

    .line 520
    iget v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mIodc:I

    return v0
.end method

.method public blacklist getTgd()D
    .registers 3

    .line 514
    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mTgd:D

    return-wide v0
.end method

.method public blacklist getTimeOfClockSeconds()J
    .registers 3

    .line 490
    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mTimeOfClockSeconds:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GpsSatelliteClockModel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "timeOfClockSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mTimeOfClockSeconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 565
    const-string v1, ", af0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mAf0:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 566
    const-string v1, ", af1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mAf1:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 567
    const-string v1, ", af2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mAf2:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 568
    const-string v1, ", tgd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mTgd:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 569
    const-string v1, ", iodc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mIodc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 547
    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mTimeOfClockSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 548
    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mAf0:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 549
    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mAf1:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 550
    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mAf2:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 551
    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mTgd:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 552
    iget v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->mIodc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    return-void
.end method
