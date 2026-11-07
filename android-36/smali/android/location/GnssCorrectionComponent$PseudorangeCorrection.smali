.class public final Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;
.super Ljava/lang/Object;
.source "GnssCorrectionComponent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssCorrectionComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PseudorangeCorrection"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCorrectionMeters:D

.field private final blacklist mCorrectionRateMetersPerSecond:D

.field private final blacklist mCorrectionUncertaintyMeters:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 261
    new-instance v0, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection$1;

    invoke-direct {v0}, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection$1;-><init>()V

    sput-object v0, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(DDD)V
    .registers 9
    .param p1, "correctionMeters"    # D
    .param p3, "correctionUncertaintyMeters"    # D
    .param p5, "correctionRateMetersPerSecond"    # D

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 240
    iput-wide p1, p0, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;->mCorrectionMeters:D

    .line 241
    iput-wide p3, p0, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;->mCorrectionUncertaintyMeters:D

    .line 242
    iput-wide p5, p0, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;->mCorrectionRateMetersPerSecond:D

    .line 243
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCorrectionMeters()D
    .registers 3

    .line 247
    iget-wide v0, p0, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;->mCorrectionMeters:D

    return-wide v0
.end method

.method public blacklist getCorrectionRateMetersPerSecond()D
    .registers 3

    .line 258
    iget-wide v0, p0, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;->mCorrectionRateMetersPerSecond:D

    return-wide v0
.end method

.method public blacklist getCorrectionUncertaintyMeters()D
    .registers 3

    .line 253
    iget-wide v0, p0, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;->mCorrectionUncertaintyMeters:D

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PseudorangeCorrection["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "correctionMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;->mCorrectionMeters:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, ", correctionUncertaintyMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;->mCorrectionUncertaintyMeters:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, ", correctionRateMetersPerSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;->mCorrectionRateMetersPerSecond:D

    .line 295
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 283
    iget-wide v0, p0, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;->mCorrectionMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 284
    iget-wide v0, p0, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;->mCorrectionUncertaintyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 285
    iget-wide v0, p0, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;->mCorrectionRateMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 286
    return-void
.end method
