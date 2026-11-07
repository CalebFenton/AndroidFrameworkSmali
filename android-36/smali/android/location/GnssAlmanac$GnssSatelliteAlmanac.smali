.class public final Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;
.super Ljava/lang/Object;
.source "GnssAlmanac.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAlmanac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssSatelliteAlmanac"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAf0:D

.field private final blacklist mAf1:D

.field private final blacklist mEccentricity:D

.field private final blacklist mInclination:D

.field private final blacklist mM0:D

.field private final blacklist mOmega:D

.field private final blacklist mOmega0:D

.field private final blacklist mOmegaDot:D

.field private final blacklist mRootA:D

.field private final blacklist mSvHealth:I

.field private final blacklist mSvid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 477
    new-instance v0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$1;

    invoke-direct {v0}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$1;-><init>()V

    sput-object v0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)V
    .registers 19
    .param p1, "builder"    # Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;

    .line 339
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 340
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmSvid(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 341
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmSvHealth(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)I

    move-result v1

    if-ltz v1, :cond_1b

    move v1, v2

    goto :goto_1c

    :cond_1b
    move v1, v3

    :goto_1c
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 342
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmEccentricity(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v3

    :goto_2b
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 343
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmInclination(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-string v9, "Inclination"

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 344
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmOmega(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-string v16, "Omega"

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-static/range {v10 .. v16}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 345
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmOmega0(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-string v7, "Omega0"

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 346
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmOmegaDot(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v8

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-string v14, "OmegaDot"

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-static/range {v8 .. v14}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 347
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmRootA(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v1

    const-wide/high16 v5, 0x40c0000000000000L    # 8192.0

    const-string v7, "RootA"

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 348
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmM0(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v8

    const-string v14, "M0"

    invoke-static/range {v8 .. v14}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 349
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmAf0(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v1

    const-wide/high16 v5, 0x3fb0000000000000L    # 0.0625

    const-string v7, "Af0"

    const-wide/high16 v3, -0x4050000000000000L    # -0.0625

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 350
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmAf1(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v8

    const-wide v12, 0x3e501b2b20000000L    # 1.4999999464748726E-8

    const-string v14, "Af1"

    const-wide v10, -0x41afe4d4e0000000L    # -1.4999999464748726E-8

    invoke-static/range {v8 .. v14}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 351
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmSvid(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)I

    move-result v1

    iput v1, v0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mSvid:I

    .line 352
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmSvHealth(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)I

    move-result v1

    iput v1, v0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mSvHealth:I

    .line 353
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmEccentricity(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mEccentricity:D

    .line 354
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmInclination(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mInclination:D

    .line 355
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmOmega(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mOmega:D

    .line 356
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmOmega0(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mOmega0:D

    .line 357
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmOmegaDot(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mOmegaDot:D

    .line 358
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmRootA(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mRootA:D

    .line 359
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmM0(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mM0:D

    .line 360
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmAf0(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mAf0:D

    .line 361
    invoke-static/range {p1 .. p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->-$$Nest$fgetmAf1(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mAf1:D

    .line 362
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;Landroid/location/GnssAlmanac-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;-><init>(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAf0()D
    .registers 3

    .line 448
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mAf0:D

    return-wide v0
.end method

.method public blacklist getAf1()D
    .registers 3

    .line 454
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mAf1:D

    return-wide v0
.end method

.method public blacklist getEccentricity()D
    .registers 3

    .line 392
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mEccentricity:D

    return-wide v0
.end method

.method public blacklist getInclination()D
    .registers 3

    .line 405
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mInclination:D

    return-wide v0
.end method

.method public blacklist getM0()D
    .registers 3

    .line 442
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mM0:D

    return-wide v0
.end method

.method public blacklist getOmega()D
    .registers 3

    .line 411
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mOmega:D

    return-wide v0
.end method

.method public blacklist getOmega0()D
    .registers 3

    .line 419
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mOmega0:D

    return-wide v0
.end method

.method public blacklist getOmegaDot()D
    .registers 3

    .line 425
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mOmegaDot:D

    return-wide v0
.end method

.method public blacklist getRootA()D
    .registers 3

    .line 436
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mRootA:D

    return-wide v0
.end method

.method public blacklist getSvHealth()I
    .registers 2

    .line 386
    iget v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mSvHealth:I

    return v0
.end method

.method public blacklist getSvid()I
    .registers 2

    .line 367
    iget v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mSvid:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnssSatelliteAlmanac["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "svid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mSvid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    const-string v1, ", svHealth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mSvHealth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 508
    const-string v1, ", eccentricity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mEccentricity:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 509
    const-string v1, ", inclination = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mInclination:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 510
    const-string v1, ", omega = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mOmega:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 511
    const-string v1, ", omega0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mOmega0:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 512
    const-string v1, ", omegaDot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mOmegaDot:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 513
    const-string v1, ", rootA = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mRootA:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 514
    const-string v1, ", m0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mM0:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 515
    const-string v1, ", af0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mAf0:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 516
    const-string v1, ", af1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mAf1:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 517
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 464
    iget v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    iget v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mSvHealth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mEccentricity:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 467
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mInclination:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 468
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mOmega:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 469
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mOmega0:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 470
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mOmegaDot:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 471
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mRootA:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 472
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mM0:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 473
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mAf0:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 474
    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;->mAf1:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 475
    return-void
.end method
