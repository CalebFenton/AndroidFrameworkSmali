.class public final Landroid/location/SatellitePvt$VelocityEcef;
.super Ljava/lang/Object;
.source "SatellitePvt.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/SatellitePvt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VelocityEcef"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/SatellitePvt$VelocityEcef;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mUreRateMetersPerSecond:D

.field private final blacklist mXMetersPerSecond:D

.field private final blacklist mYMetersPerSecond:D

.field private final blacklist mZMetersPerSecond:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 274
    new-instance v0, Landroid/location/SatellitePvt$VelocityEcef$1;

    invoke-direct {v0}, Landroid/location/SatellitePvt$VelocityEcef$1;-><init>()V

    sput-object v0, Landroid/location/SatellitePvt$VelocityEcef;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(DDDD)V
    .registers 9
    .param p1, "xMetersPerSecond"    # D
    .param p3, "yMetersPerSecond"    # D
    .param p5, "zMetersPerSecond"    # D
    .param p7, "ureRateMetersPerSecond"    # D

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-wide p1, p0, Landroid/location/SatellitePvt$VelocityEcef;->mXMetersPerSecond:D

    .line 269
    iput-wide p3, p0, Landroid/location/SatellitePvt$VelocityEcef;->mYMetersPerSecond:D

    .line 270
    iput-wide p5, p0, Landroid/location/SatellitePvt$VelocityEcef;->mZMetersPerSecond:D

    .line 271
    iput-wide p7, p0, Landroid/location/SatellitePvt$VelocityEcef;->mUreRateMetersPerSecond:D

    .line 272
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getUreRateMetersPerSecond()D
    .registers 3

    .line 324
    iget-wide v0, p0, Landroid/location/SatellitePvt$VelocityEcef;->mUreRateMetersPerSecond:D

    return-wide v0
.end method

.method public whitelist getXMetersPerSecond()D
    .registers 3

    .line 297
    iget-wide v0, p0, Landroid/location/SatellitePvt$VelocityEcef;->mXMetersPerSecond:D

    return-wide v0
.end method

.method public whitelist getYMetersPerSecond()D
    .registers 3

    .line 305
    iget-wide v0, p0, Landroid/location/SatellitePvt$VelocityEcef;->mYMetersPerSecond:D

    return-wide v0
.end method

.method public whitelist getZMetersPerSecond()D
    .registers 3

    .line 313
    iget-wide v0, p0, Landroid/location/SatellitePvt$VelocityEcef;->mZMetersPerSecond:D

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VelocityEcef{xMetersPerSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt$VelocityEcef;->mXMetersPerSecond:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yMetersPerSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt$VelocityEcef;->mYMetersPerSecond:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zMetersPerSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt$VelocityEcef;->mZMetersPerSecond:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ureRateMetersPerSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt$VelocityEcef;->mUreRateMetersPerSecond:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 334
    iget-wide v0, p0, Landroid/location/SatellitePvt$VelocityEcef;->mXMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 335
    iget-wide v0, p0, Landroid/location/SatellitePvt$VelocityEcef;->mYMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 336
    iget-wide v0, p0, Landroid/location/SatellitePvt$VelocityEcef;->mZMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 337
    iget-wide v0, p0, Landroid/location/SatellitePvt$VelocityEcef;->mUreRateMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 338
    return-void
.end method
