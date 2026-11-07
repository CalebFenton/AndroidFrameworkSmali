.class public final Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;
.super Ljava/lang/Object;
.source "BeidouSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/BeidouSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BeidouSatelliteClockModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAf0:D

.field private final blacklist mAf1:D

.field private final blacklist mAf2:D

.field private final blacklist mAodc:I

.field private final blacklist mTgd1:D

.field private final blacklist mTgd2:D

.field private final blacklist mTimeOfClockSeconds:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 300
    new-instance v0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$1;

    invoke-direct {v0}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$1;-><init>()V

    sput-object v0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)V
    .registers 19
    .param p1, "builder"    # Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;

    .line 241
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-static/range {p1 .. p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->-$$Nest$fgetmTimeOfClockSeconds(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)J

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

    .line 243
    invoke-static/range {p1 .. p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->-$$Nest$fgetmAf0(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)D

    move-result-wide v3

    const-wide v7, 0x3f84024b40000000L    # 0.009770000353455544

    const-string v9, "Af0"

    const-wide v5, -0x407bfdb4c0000000L    # -0.009770000353455544

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 244
    invoke-static/range {p1 .. p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->-$$Nest$fgetmAf1(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)D

    move-result-wide v10

    const-wide v14, 0x3e20102c60000000L    # 1.869999932679889E-9

    const-string v16, "Af1"

    const-wide v12, -0x41dfefd3a0000000L    # -1.869999932679889E-9

    invoke-static/range {v10 .. v16}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 245
    invoke-static/range {p1 .. p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->-$$Nest$fgetmAf2(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)D

    move-result-wide v3

    const-wide v7, 0x3c70068e40000000L    # 1.389999926162273E-17

    const-string v9, "Af2"

    const-wide v5, -0x438ff971c0000000L    # -1.389999926162273E-17

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 246
    invoke-static/range {p1 .. p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->-$$Nest$fgetmTgd1(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)D

    move-result-wide v10

    const-wide v14, 0x3e6b7cdfe0000000L    # 5.1200000683593316E-8

    const-string v16, "Tgd1"

    const-wide v12, -0x4194832020000000L    # -5.1200000683593316E-8

    invoke-static/range {v10 .. v16}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 247
    invoke-static/range {p1 .. p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->-$$Nest$fgetmTgd2(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)D

    move-result-wide v3

    const-wide v7, 0x3e6b7cdfe0000000L    # 5.1200000683593316E-8

    const-string v9, "Tgd2"

    const-wide v5, -0x4194832020000000L    # -5.1200000683593316E-8

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 248
    invoke-static/range {p1 .. p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->-$$Nest$fgetmAodc(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)I

    move-result v1

    const/16 v3, 0x1f

    const-string v4, "Aodc"

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 249
    invoke-static/range {p1 .. p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->-$$Nest$fgetmTimeOfClockSeconds(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mTimeOfClockSeconds:J

    .line 250
    invoke-static/range {p1 .. p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->-$$Nest$fgetmAf0(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAf0:D

    .line 251
    invoke-static/range {p1 .. p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->-$$Nest$fgetmAf1(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAf1:D

    .line 252
    invoke-static/range {p1 .. p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->-$$Nest$fgetmAf2(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAf2:D

    .line 253
    invoke-static/range {p1 .. p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->-$$Nest$fgetmTgd1(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mTgd1:D

    .line 254
    invoke-static/range {p1 .. p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->-$$Nest$fgetmTgd2(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mTgd2:D

    .line 255
    invoke-static/range {p1 .. p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->-$$Nest$fgetmAodc(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)I

    move-result v1

    iput v1, v0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAodc:I

    .line 256
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;Landroid/location/BeidouSatelliteEphemeris-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;-><init>(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAf0()D
    .registers 3

    .line 267
    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAf0:D

    return-wide v0
.end method

.method public blacklist getAf1()D
    .registers 3

    .line 273
    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAf1:D

    return-wide v0
.end method

.method public blacklist getAf2()D
    .registers 3

    .line 279
    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAf2:D

    return-wide v0
.end method

.method public blacklist getAodc()I
    .registers 2

    .line 297
    iget v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAodc:I

    return v0
.end method

.method public blacklist getTgd1()D
    .registers 3

    .line 285
    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mTgd1:D

    return-wide v0
.end method

.method public blacklist getTgd2()D
    .registers 3

    .line 291
    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mTgd2:D

    return-wide v0
.end method

.method public blacklist getTimeOfClockSeconds()J
    .registers 3

    .line 261
    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mTimeOfClockSeconds:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BeidouSatelliteClockModel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "timeOfClockSeonds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mTimeOfClockSeconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 344
    const-string v1, ", af0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAf0:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 345
    const-string v1, ", af1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAf1:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 346
    const-string v1, ", af2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAf2:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 347
    const-string v1, ", tgd1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mTgd1:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 348
    const-string v1, ", tgd2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mTgd2:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 349
    const-string v1, ", aodc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAodc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 330
    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mTimeOfClockSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 331
    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAf0:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 332
    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAf1:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 333
    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAf2:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 334
    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mTgd1:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 335
    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mTgd2:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 336
    iget v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->mAodc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    return-void
.end method
