.class public final Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;
.super Ljava/lang/Object;
.source "GlonassSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GlonassSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlonassSatelliteClockModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClockBias:D

.field private final blacklist mFrequencyBias:D

.field private final blacklist mFrequencyChannelNumber:I

.field private final blacklist mGroupDelayDiffSeconds:D

.field private final blacklist mGroupDelayDiffSecondsAvailable:Z

.field private final blacklist mTimeOfClockSeconds:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 418
    new-instance v0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$1;

    invoke-direct {v0}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$1;-><init>()V

    sput-object v0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)V
    .registers 18
    .param p1, "builder"    # Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;

    .line 349
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 350
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->-$$Nest$fgetmTimeOfClockSeconds(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 351
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->-$$Nest$fgetmClockBias(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)D

    move-result-wide v2

    const-wide v6, 0x3f60624de0000000L    # 0.0020000000949949026

    const-string v8, "ClockBias"

    const-wide v4, -0x409f9db220000000L    # -0.0020000000949949026

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 352
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->-$$Nest$fgetmFrequencyBias(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)D

    move-result-wide v9

    const-wide v13, 0x3e1002fac0000000L    # 9.320000327051048E-10

    const-string v15, "FrequencyBias"

    const-wide v11, -0x41effd0540000000L    # -9.320000327051048E-10

    invoke-static/range {v9 .. v15}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 354
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->-$$Nest$fgetmFrequencyChannelNumber(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)I

    move-result v1

    const/4 v2, 0x6

    const-string v3, "FrequencyChannelNumber"

    const/4 v4, -0x7

    invoke-static {v1, v4, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 356
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->-$$Nest$fgetmGroupDelayDiffSecondsAvailable(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 357
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->-$$Nest$fgetmGroupDelayDiffSeconds(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)D

    move-result-wide v2

    const-wide v6, 0x3e4e1094e0000000L    # 1.4000000270186774E-8

    const-string v8, "GroupDelayDiffSeconds"

    const-wide v4, -0x41b1ef6b20000000L    # -1.4000000270186774E-8

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 360
    :cond_5f
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->-$$Nest$fgetmTimeOfClockSeconds(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mTimeOfClockSeconds:J

    .line 361
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->-$$Nest$fgetmClockBias(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mClockBias:D

    .line 362
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->-$$Nest$fgetmFrequencyBias(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mFrequencyBias:D

    .line 363
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->-$$Nest$fgetmFrequencyChannelNumber(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)I

    move-result v1

    iput v1, v0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mFrequencyChannelNumber:I

    .line 364
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->-$$Nest$fgetmGroupDelayDiffSeconds(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mGroupDelayDiffSeconds:D

    .line 365
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->-$$Nest$fgetmGroupDelayDiffSecondsAvailable(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mGroupDelayDiffSecondsAvailable:Z

    .line 366
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;Landroid/location/GlonassSatelliteEphemeris-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;-><init>(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getClockBias()D
    .registers 3

    .line 377
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mClockBias:D

    return-wide v0
.end method

.method public blacklist getFrequencyBias()D
    .registers 3

    .line 383
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mFrequencyBias:D

    return-wide v0
.end method

.method public blacklist getFrequencyChannelNumber()I
    .registers 2

    .line 389
    iget v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mFrequencyChannelNumber:I

    return v0
.end method

.method public blacklist getGroupDelayDiffSeconds()D
    .registers 3

    .line 395
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mGroupDelayDiffSeconds:D

    return-wide v0
.end method

.method public blacklist getTimeOfClockSeconds()J
    .registers 3

    .line 371
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mTimeOfClockSeconds:J

    return-wide v0
.end method

.method public blacklist isGroupDelayDiffSecondsAvailable()Z
    .registers 2

    .line 400
    iget-boolean v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mGroupDelayDiffSecondsAvailable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GlonassSatelliteClockModel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "timeOfClockSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mTimeOfClockSeconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 443
    const-string v1, ", clockBias = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mClockBias:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 444
    const-string v1, ", frequencyBias = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mFrequencyBias:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 445
    const-string v1, ", frequencyChannelNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mFrequencyChannelNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    iget-boolean v1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mGroupDelayDiffSecondsAvailable:Z

    if-eqz v1, :cond_42

    .line 447
    const-string v1, ", groupDelayDiffSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mGroupDelayDiffSeconds:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 449
    :cond_42
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 410
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mTimeOfClockSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 411
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mClockBias:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 412
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mFrequencyBias:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 413
    iget v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mFrequencyChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mGroupDelayDiffSeconds:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 415
    iget-boolean v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->mGroupDelayDiffSecondsAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 416
    return-void
.end method
