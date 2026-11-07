.class public Landroid/location/Criteria;
.super Ljava/lang/Object;
.source "Criteria.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Criteria$LocationAccuracyRequirement;,
        Landroid/location/Criteria$AccuracyRequirement;,
        Landroid/location/Criteria$PowerRequirement;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist ACCURACY_COARSE:I = 0x2

.field public static final whitelist ACCURACY_FINE:I = 0x1

.field public static final whitelist ACCURACY_HIGH:I = 0x3

.field public static final whitelist ACCURACY_LOW:I = 0x1

.field public static final whitelist ACCURACY_MEDIUM:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Criteria;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NO_REQUIREMENT:I = 0x0

.field public static final whitelist POWER_HIGH:I = 0x3

.field public static final whitelist POWER_LOW:I = 0x1

.field public static final whitelist POWER_MEDIUM:I = 0x2


# instance fields
.field private greylist-max-o mAltitudeRequired:Z

.field private greylist-max-o mBearingAccuracy:I

.field private greylist-max-o mBearingRequired:Z

.field private greylist-max-o mCostAllowed:Z

.field private greylist-max-o mHorizontalAccuracy:I

.field private greylist-max-o mPowerRequirement:I

.field private greylist-max-o mSpeedAccuracy:I

.field private greylist-max-o mSpeedRequired:Z

.field private greylist-max-o mVerticalAccuracy:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAltitudeRequired(Landroid/location/Criteria;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBearingAccuracy(Landroid/location/Criteria;I)V
    .registers 2

    iput p1, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBearingRequired(Landroid/location/Criteria;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/location/Criteria;->mBearingRequired:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCostAllowed(Landroid/location/Criteria;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/location/Criteria;->mCostAllowed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHorizontalAccuracy(Landroid/location/Criteria;I)V
    .registers 2

    iput p1, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPowerRequirement(Landroid/location/Criteria;I)V
    .registers 2

    iput p1, p0, Landroid/location/Criteria;->mPowerRequirement:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSpeedAccuracy(Landroid/location/Criteria;I)V
    .registers 2

    iput p1, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSpeedRequired(Landroid/location/Criteria;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVerticalAccuracy(Landroid/location/Criteria;I)V
    .registers 2

    iput p1, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 358
    new-instance v0, Landroid/location/Criteria$1;

    invoke-direct {v0}, Landroid/location/Criteria$1;-><init>()V

    sput-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    .line 116
    iput v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    .line 117
    iput v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    .line 118
    iput v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    .line 119
    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    .line 120
    iput-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    .line 121
    iput-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    .line 122
    iput-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    .line 123
    iput-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    .line 132
    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/Criteria;)V
    .registers 3
    .param p1, "criteria"    # Landroid/location/Criteria;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    .line 116
    iput v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    .line 117
    iput v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    .line 118
    iput v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    .line 119
    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    .line 120
    iput-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    .line 121
    iput-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    .line 122
    iput-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    .line 123
    iput-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    .line 138
    iget v0, p1, Landroid/location/Criteria;->mHorizontalAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    .line 139
    iget v0, p1, Landroid/location/Criteria;->mVerticalAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    .line 140
    iget v0, p1, Landroid/location/Criteria;->mSpeedAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    .line 141
    iget v0, p1, Landroid/location/Criteria;->mBearingAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    .line 142
    iget v0, p1, Landroid/location/Criteria;->mPowerRequirement:I

    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    .line 143
    iget-boolean v0, p1, Landroid/location/Criteria;->mAltitudeRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    .line 144
    iget-boolean v0, p1, Landroid/location/Criteria;->mBearingRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    .line 145
    iget-boolean v0, p1, Landroid/location/Criteria;->mSpeedRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    .line 146
    iget-boolean v0, p1, Landroid/location/Criteria;->mCostAllowed:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    .line 147
    return-void
.end method

.method private static blacklist requirementToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "power"    # I

    .line 436
    packed-switch p0, :pswitch_data_12

    .line 449
    const-string v0, "???"

    return-object v0

    .line 447
    :pswitch_6
    const-string v0, "High"

    return-object v0

    .line 444
    :pswitch_9
    const-string v0, "Medium"

    return-object v0

    .line 441
    :pswitch_c
    const-string v0, "Low"

    return-object v0

    .line 438
    :pswitch_f
    const-string v0, "None"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAccuracy()I
    .registers 3

    .line 266
    iget v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    .line 267
    const/4 v0, 0x1

    return v0

    .line 269
    :cond_7
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist getBearingAccuracy()I
    .registers 2

    .line 234
    iget v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    return v0
.end method

.method public whitelist getHorizontalAccuracy()I
    .registers 2

    .line 168
    iget v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    return v0
.end method

.method public whitelist getPowerRequirement()I
    .registers 2

    .line 289
    iget v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    return v0
.end method

.method public whitelist getSpeedAccuracy()I
    .registers 2

    .line 212
    iget v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    return v0
.end method

.method public whitelist getVerticalAccuracy()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    return v0
.end method

.method public whitelist isAltitudeRequired()Z
    .registers 2

    .line 320
    iget-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    return v0
.end method

.method public whitelist isBearingRequired()Z
    .registers 2

    .line 354
    iget-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    return v0
.end method

.method public whitelist isCostAllowed()Z
    .registers 2

    .line 303
    iget-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    return v0
.end method

.method public whitelist isSpeedRequired()Z
    .registers 2

    .line 337
    iget-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    return v0
.end method

.method public whitelist setAccuracy(I)V
    .registers 5
    .param p1, "accuracy"    # I

    .line 245
    const/4 v0, 0x2

    const-string v1, "accuracy"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 246
    packed-switch p1, :pswitch_data_1a

    goto :goto_19

    .line 254
    :pswitch_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/location/Criteria;->setHorizontalAccuracy(I)V

    goto :goto_19

    .line 251
    :pswitch_10
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/location/Criteria;->setHorizontalAccuracy(I)V

    .line 252
    goto :goto_19

    .line 248
    :pswitch_15
    invoke-virtual {p0, v2}, Landroid/location/Criteria;->setHorizontalAccuracy(I)V

    .line 249
    nop

    .line 257
    :goto_19
    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method public whitelist setAltitudeRequired(Z)V
    .registers 2
    .param p1, "altitudeRequired"    # Z

    .line 311
    iput-boolean p1, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    .line 312
    return-void
.end method

.method public whitelist setBearingAccuracy(I)V
    .registers 5
    .param p1, "accuracy"    # I

    .line 223
    const/4 v0, 0x3

    const-string v1, "accuracy"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    .line 225
    return-void
.end method

.method public whitelist setBearingRequired(Z)V
    .registers 2
    .param p1, "bearingRequired"    # Z

    .line 345
    iput-boolean p1, p0, Landroid/location/Criteria;->mBearingRequired:Z

    .line 346
    return-void
.end method

.method public whitelist setCostAllowed(Z)V
    .registers 2
    .param p1, "costAllowed"    # Z

    .line 296
    iput-boolean p1, p0, Landroid/location/Criteria;->mCostAllowed:Z

    .line 297
    return-void
.end method

.method public whitelist setHorizontalAccuracy(I)V
    .registers 5
    .param p1, "accuracy"    # I

    .line 157
    const/4 v0, 0x3

    const-string v1, "accuracy"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    .line 159
    return-void
.end method

.method public whitelist setPowerRequirement(I)V
    .registers 5
    .param p1, "powerRequirement"    # I

    .line 278
    const/4 v0, 0x3

    const-string v1, "powerRequirement"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    .line 280
    return-void
.end method

.method public whitelist setSpeedAccuracy(I)V
    .registers 5
    .param p1, "accuracy"    # I

    .line 201
    const/4 v0, 0x3

    const-string v1, "accuracy"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    .line 203
    return-void
.end method

.method public whitelist setSpeedRequired(Z)V
    .registers 2
    .param p1, "speedRequired"    # Z

    .line 328
    iput-boolean p1, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    .line 329
    return-void
.end method

.method public whitelist setVerticalAccuracy(I)V
    .registers 5
    .param p1, "accuracy"    # I

    .line 179
    const/4 v0, 0x3

    const-string v1, "accuracy"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    .line 181
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "Criteria["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v1, "power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Criteria;->mPowerRequirement:I

    invoke-static {v2}, Landroid/location/Criteria;->requirementToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v1, "accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    invoke-static {v2}, Landroid/location/Criteria;->requirementToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget v1, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    if-eqz v1, :cond_41

    .line 406
    const-string v1, ", verticalAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    invoke-static {v2}, Landroid/location/Criteria;->requirementToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_41
    iget v1, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    if-eqz v1, :cond_54

    .line 409
    const-string v1, ", speedAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    invoke-static {v2}, Landroid/location/Criteria;->requirementToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_54
    iget v1, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    if-eqz v1, :cond_67

    .line 412
    const-string v1, ", bearingAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    invoke-static {v2}, Landroid/location/Criteria;->requirementToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_67
    iget-boolean v1, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    if-nez v1, :cond_73

    iget-boolean v1, p0, Landroid/location/Criteria;->mBearingRequired:Z

    if-nez v1, :cond_73

    iget-boolean v1, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    if-eqz v1, :cond_a1

    .line 415
    :cond_73
    const-string v1, ", required=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget-boolean v1, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    if-eqz v1, :cond_81

    .line 417
    const-string v1, "altitude, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_81
    iget-boolean v1, p0, Landroid/location/Criteria;->mBearingRequired:Z

    if-eqz v1, :cond_8a

    .line 420
    const-string v1, "bearing, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_8a
    iget-boolean v1, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    if-eqz v1, :cond_93

    .line 423
    const-string v1, "speed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 426
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_a1
    iget-boolean v1, p0, Landroid/location/Criteria;->mCostAllowed:Z

    if-eqz v1, :cond_aa

    .line 429
    const-string v1, ", costAllowed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_aa
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 388
    iget v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    iget v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    return-void
.end method
