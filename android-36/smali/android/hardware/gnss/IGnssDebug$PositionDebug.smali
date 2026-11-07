.class public Landroid/hardware/gnss/IGnssDebug$PositionDebug;
.super Ljava/lang/Object;
.source "IGnssDebug.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionDebug"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssDebug$PositionDebug;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist ageSeconds:F

.field public blacklist altitudeMeters:F

.field public blacklist bearingAccuracyDegrees:D

.field public blacklist bearingDegrees:F

.field public blacklist horizontalAccuracyMeters:D

.field public blacklist latitudeDegrees:D

.field public blacklist longitudeDegrees:D

.field public blacklist speedAccuracyMetersPerSecond:D

.field public blacklist speedMetersPerSec:F

.field public blacklist valid:Z

.field public blacklist verticalAccuracyMeters:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 301
    new-instance v0, Landroid/hardware/gnss/IGnssDebug$PositionDebug$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssDebug$PositionDebug$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->valid:Z

    .line 289
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->latitudeDegrees:D

    .line 290
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->longitudeDegrees:D

    .line 291
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->altitudeMeters:F

    .line 292
    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    .line 293
    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingDegrees:F

    .line 294
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    .line 295
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    .line 296
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    .line 297
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    .line 298
    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->ageSeconds:F

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 336
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_156

    .line 339
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 365
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 339
    return-void

    .line 363
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->valid:Z

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 365
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 341
    return-void

    .line 363
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 342
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->latitudeDegrees:D

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 365
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 343
    return-void

    .line 363
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 344
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->longitudeDegrees:D

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 365
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 345
    return-void

    .line 363
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 346
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->altitudeMeters:F

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 365
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 347
    return-void

    .line 363
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 348
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 365
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 349
    return-void

    .line 363
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingDegrees:F

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 365
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 351
    return-void

    .line 363
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 365
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 353
    return-void

    .line 363
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 354
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 365
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 355
    return-void

    .line 363
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 356
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 365
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 357
    return-void

    .line 363
    :cond_11c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 358
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12c
    .catchall {:try_start_122 .. :try_end_12c} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13e

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_138

    .line 365
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 359
    return-void

    .line 363
    :cond_138
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 360
    :cond_13e
    :try_start_13e
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->ageSeconds:F
    :try_end_144
    .catchall {:try_start_13e .. :try_end_144} :catchall_154

    .line 362
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14e

    .line 365
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 366
    nop

    .line 367
    return-void

    .line 363
    :cond_14e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    :catchall_154
    move-exception v2

    goto :goto_15e

    .line 338
    :cond_156
    :try_start_156
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IGnssDebug$PositionDebug;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_15e
    .catchall {:try_start_156 .. :try_end_15e} :catchall_154

    .line 362
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssDebug$PositionDebug;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_15e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_167

    .line 363
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 365
    :cond_167
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 366
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 316
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-boolean v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->valid:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 318
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->latitudeDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 319
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->longitudeDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 320
    iget v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->altitudeMeters:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 321
    iget v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 322
    iget v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingDegrees:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 323
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 324
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 325
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 326
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 327
    iget v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->ageSeconds:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 329
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 330
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 332
    return-void
.end method
