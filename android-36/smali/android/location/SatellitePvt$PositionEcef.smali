.class public final Landroid/location/SatellitePvt$PositionEcef;
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
    name = "PositionEcef"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/SatellitePvt$PositionEcef;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mUreMeters:D

.field private final blacklist mXMeters:D

.field private final blacklist mYMeters:D

.field private final blacklist mZMeters:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 177
    new-instance v0, Landroid/location/SatellitePvt$PositionEcef$1;

    invoke-direct {v0}, Landroid/location/SatellitePvt$PositionEcef$1;-><init>()V

    sput-object v0, Landroid/location/SatellitePvt$PositionEcef;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(DDDD)V
    .registers 9
    .param p1, "xMeters"    # D
    .param p3, "yMeters"    # D
    .param p5, "zMeters"    # D
    .param p7, "ureMeters"    # D

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-wide p1, p0, Landroid/location/SatellitePvt$PositionEcef;->mXMeters:D

    .line 172
    iput-wide p3, p0, Landroid/location/SatellitePvt$PositionEcef;->mYMeters:D

    .line 173
    iput-wide p5, p0, Landroid/location/SatellitePvt$PositionEcef;->mZMeters:D

    .line 174
    iput-wide p7, p0, Landroid/location/SatellitePvt$PositionEcef;->mUreMeters:D

    .line 175
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getUreMeters()D
    .registers 3

    .line 224
    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mUreMeters:D

    return-wide v0
.end method

.method public whitelist getXMeters()D
    .registers 3

    .line 200
    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mXMeters:D

    return-wide v0
.end method

.method public whitelist getYMeters()D
    .registers 3

    .line 208
    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mYMeters:D

    return-wide v0
.end method

.method public whitelist getZMeters()D
    .registers 3

    .line 216
    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mZMeters:D

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PositionEcef{xMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt$PositionEcef;->mXMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt$PositionEcef;->mYMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt$PositionEcef;->mZMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ureMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt$PositionEcef;->mUreMeters:D

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

    .line 234
    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mXMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 235
    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mYMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 236
    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mZMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 237
    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mUreMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 238
    return-void
.end method
