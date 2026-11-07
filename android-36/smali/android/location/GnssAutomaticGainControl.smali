.class public final Landroid/location/GnssAutomaticGainControl;
.super Ljava/lang/Object;
.source "GnssAutomaticGainControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssAutomaticGainControl$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssAutomaticGainControl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCarrierFrequencyHz:J

.field private final blacklist mConstellationType:I

.field private final blacklist mLevelDb:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Landroid/location/GnssAutomaticGainControl$1;

    invoke-direct {v0}, Landroid/location/GnssAutomaticGainControl$1;-><init>()V

    sput-object v0, Landroid/location/GnssAutomaticGainControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(DIJ)V
    .registers 6
    .param p1, "levelDb"    # D
    .param p3, "constellationType"    # I
    .param p4, "carrierFrequencyHz"    # J

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Landroid/location/GnssAutomaticGainControl;->mLevelDb:D

    .line 54
    iput p3, p0, Landroid/location/GnssAutomaticGainControl;->mConstellationType:I

    .line 55
    iput-wide p4, p0, Landroid/location/GnssAutomaticGainControl;->mCarrierFrequencyHz:J

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(DIJLandroid/location/GnssAutomaticGainControl-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/location/GnssAutomaticGainControl;-><init>(DIJ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 134
    return v0

    .line 136
    :cond_4
    instance-of v1, p1, Landroid/location/GnssAutomaticGainControl;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 137
    return v2

    .line 140
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/GnssAutomaticGainControl;

    .line 141
    .local v1, "other":Landroid/location/GnssAutomaticGainControl;
    iget-wide v3, p0, Landroid/location/GnssAutomaticGainControl;->mLevelDb:D

    iget-wide v5, v1, Landroid/location/GnssAutomaticGainControl;->mLevelDb:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_18

    .line 143
    return v2

    .line 145
    :cond_18
    iget v3, p0, Landroid/location/GnssAutomaticGainControl;->mConstellationType:I

    iget v4, v1, Landroid/location/GnssAutomaticGainControl;->mConstellationType:I

    if-eq v3, v4, :cond_1f

    .line 146
    return v2

    .line 148
    :cond_1f
    iget-wide v3, p0, Landroid/location/GnssAutomaticGainControl;->mCarrierFrequencyHz:J

    iget-wide v5, v1, Landroid/location/GnssAutomaticGainControl;->mCarrierFrequencyHz:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_28

    .line 149
    return v2

    .line 151
    :cond_28
    return v0
.end method

.method public whitelist getCarrierFrequencyHz()J
    .registers 3

    .line 87
    iget-wide v0, p0, Landroid/location/GnssAutomaticGainControl;->mCarrierFrequencyHz:J

    return-wide v0
.end method

.method public whitelist getConstellationType()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/location/GnssAutomaticGainControl;->mConstellationType:I

    return v0
.end method

.method public whitelist getLevelDb()D
    .registers 3

    .line 63
    iget-wide v0, p0, Landroid/location/GnssAutomaticGainControl;->mLevelDb:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 156
    iget-wide v0, p0, Landroid/location/GnssAutomaticGainControl;->mLevelDb:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssAutomaticGainControl;->mConstellationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAutomaticGainControl;->mCarrierFrequencyHz:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "GnssAutomaticGainControl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "Level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAutomaticGainControl;->mLevelDb:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, " Constellation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssAutomaticGainControl;->mConstellationType:I

    .line 125
    invoke-static {v2}, Landroid/location/GnssStatus;->constellationTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, " CarrierFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAutomaticGainControl;->mCarrierFrequencyHz:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 97
    iget-wide v0, p0, Landroid/location/GnssAutomaticGainControl;->mLevelDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 98
    iget v0, p0, Landroid/location/GnssAutomaticGainControl;->mConstellationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-wide v0, p0, Landroid/location/GnssAutomaticGainControl;->mCarrierFrequencyHz:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    return-void
.end method
