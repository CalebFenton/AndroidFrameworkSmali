.class public final Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;
.super Ljava/lang/Object;
.source "GlonassAlmanac.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GlonassAlmanac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlonassSatelliteAlmanac"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCalendarDayNumber:I

.field private final blacklist mDeltaI:D

.field private final blacklist mDeltaT:D

.field private final blacklist mDeltaTDot:D

.field private final blacklist mEccentricity:D

.field private final blacklist mFrequencyChannelNumber:I

.field private final blacklist mGlonassM:Z

.field private final blacklist mHealthState:I

.field private final blacklist mLambda:D

.field private final blacklist mOmega:D

.field private final blacklist mSlotNumber:I

.field private final blacklist mTLambda:D

.field private final blacklist mTau:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 297
    new-instance v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$1;

    invoke-direct {v0}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$1;-><init>()V

    sput-object v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)V
    .registers 21
    .param p1, "builder"    # Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;

    .line 161
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmSlotNumber(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 165
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmHealthState(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)I

    move-result v1

    if-ltz v1, :cond_1b

    move v1, v3

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 166
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmFrequencyChannelNumber(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)I

    move-result v1

    const/16 v4, 0x1f

    const-string v5, "FrequencyChannelNumber"

    invoke-static {v1, v2, v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 168
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmCalendarDayNumber(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)I

    move-result v1

    const/16 v2, 0x5b5

    const-string v4, "CalendarDayNumber"

    invoke-static {v1, v3, v2, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 170
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmTau(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v5

    const-wide v9, 0x3f5f212d80000000L    # 0.0019000000320374966

    const-string v11, "Tau"

    const-wide v7, -0x40a0ded280000000L    # -0.0019000000320374966

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 171
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmTLambda(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v12

    const-wide v16, 0x40e5888000000000L    # 44100.0

    const-string v18, "TLambda"

    const-wide/16 v14, 0x0

    invoke-static/range {v12 .. v18}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 172
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmLambda(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-string v7, "Lambda"

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 173
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmDeltaI(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v8

    const-wide v12, 0x3fb126e980000000L    # 0.06700000166893005

    const-string v14, "DeltaI"

    const-wide v10, -0x404ed91680000000L    # -0.06700000166893005

    invoke-static/range {v8 .. v14}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 174
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmDeltaT(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v1

    const-wide v5, 0x40ac200000000000L    # 3600.0

    const-string v7, "DeltaT"

    const-wide v3, -0x3f53e00000000000L    # -3600.0

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 175
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmDeltaTDot(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v8

    const-wide v12, 0x3f70624de0000000L    # 0.004000000189989805

    const-string v14, "DeltaTDot"

    const-wide v10, -0x408f9db220000000L    # -0.004000000189989805

    invoke-static/range {v8 .. v14}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 176
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmEccentricity(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v1

    const-wide v5, 0x3f9eb851e0000000L    # 0.029999999329447746

    const-string v7, "Eccentricity"

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 177
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmOmega(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v8

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-string v14, "Omega"

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-static/range {v8 .. v14}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 178
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmSlotNumber(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)I

    move-result v1

    iput v1, v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mSlotNumber:I

    .line 179
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmHealthState(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)I

    move-result v1

    iput v1, v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mHealthState:I

    .line 180
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmFrequencyChannelNumber(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)I

    move-result v1

    iput v1, v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mFrequencyChannelNumber:I

    .line 181
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmCalendarDayNumber(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)I

    move-result v1

    iput v1, v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mCalendarDayNumber:I

    .line 182
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmGlonassM(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mGlonassM:Z

    .line 183
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmTau(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mTau:D

    .line 184
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmTLambda(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mTLambda:D

    .line 185
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmLambda(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mLambda:D

    .line 186
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmDeltaI(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mDeltaI:D

    .line 187
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmDeltaT(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mDeltaT:D

    .line 188
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmDeltaTDot(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mDeltaTDot:D

    .line 189
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmEccentricity(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mEccentricity:D

    .line 190
    invoke-static/range {p1 .. p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->-$$Nest$fgetmOmega(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mOmega:D

    .line 191
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;Landroid/location/GlonassAlmanac-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;-><init>(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCalendarDayNumber()I
    .registers 2

    .line 216
    iget v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mCalendarDayNumber:I

    return v0
.end method

.method public blacklist getDeltaI()D
    .registers 3

    .line 245
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mDeltaI:D

    return-wide v0
.end method

.method public blacklist getDeltaT()D
    .registers 3

    .line 254
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mDeltaT:D

    return-wide v0
.end method

.method public blacklist getDeltaTDot()D
    .registers 3

    .line 260
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mDeltaTDot:D

    return-wide v0
.end method

.method public blacklist getEccentricity()D
    .registers 3

    .line 266
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mEccentricity:D

    return-wide v0
.end method

.method public blacklist getFrequencyChannelNumber()I
    .registers 2

    .line 207
    iget v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mFrequencyChannelNumber:I

    return v0
.end method

.method public blacklist getHealthState()I
    .registers 2

    .line 201
    iget v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mHealthState:I

    return v0
.end method

.method public blacklist getLambda()D
    .registers 3

    .line 239
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mLambda:D

    return-wide v0
.end method

.method public blacklist getOmega()D
    .registers 3

    .line 272
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mOmega:D

    return-wide v0
.end method

.method public blacklist getSlotNumber()I
    .registers 2

    .line 196
    iget v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mSlotNumber:I

    return v0
.end method

.method public blacklist getTLambda()D
    .registers 3

    .line 233
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mTLambda:D

    return-wide v0
.end method

.method public blacklist getTau()D
    .registers 3

    .line 227
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mTau:D

    return-wide v0
.end method

.method public blacklist isGlonassM()Z
    .registers 2

    .line 221
    iget-boolean v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mGlonassM:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GlonassSatelliteAlmanac["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "slotNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mSlotNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    const-string v1, ", healthState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mHealthState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, ", frequencyChannelNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mFrequencyChannelNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    const-string v1, ", calendarDayNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mCalendarDayNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, ", glonassM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mGlonassM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 333
    const-string v1, ", tau = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mTau:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, ", tLambda = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mTLambda:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 335
    const-string v1, ", lambda = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mLambda:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 336
    const-string v1, ", deltaI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mDeltaI:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 337
    const-string v1, ", deltaT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mDeltaT:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 338
    const-string v1, ", deltaTDot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mDeltaTDot:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 339
    const-string v1, ", eccentricity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mEccentricity:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 340
    const-string v1, ", omega = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mOmega:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 341
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 282
    iget v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mSlotNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mHealthState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mFrequencyChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mCalendarDayNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-boolean v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mGlonassM:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 287
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mTau:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 288
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mTLambda:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 289
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mLambda:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 290
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mDeltaI:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 291
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mDeltaT:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 292
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mDeltaTDot:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 293
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mEccentricity:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 294
    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->mOmega:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 295
    return-void
.end method
