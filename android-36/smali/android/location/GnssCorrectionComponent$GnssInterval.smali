.class public final Landroid/location/GnssCorrectionComponent$GnssInterval;
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
    name = "GnssInterval"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssCorrectionComponent$GnssInterval;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEndMillisSinceGpsEpoch:J

.field private final blacklist mStartMillisSinceGpsEpoch:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 171
    new-instance v0, Landroid/location/GnssCorrectionComponent$GnssInterval$1;

    invoke-direct {v0}, Landroid/location/GnssCorrectionComponent$GnssInterval$1;-><init>()V

    sput-object v0, Landroid/location/GnssCorrectionComponent$GnssInterval;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJ)V
    .registers 10
    .param p1, "startMillisSinceGpsEpoch"    # J
    .param p3, "endMillisSinceGpsEpoch"    # J

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_d

    move v2, v3

    goto :goto_e

    :cond_d
    move v2, v4

    :goto_e
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 154
    cmp-long v0, p3, v0

    if-ltz v0, :cond_16

    goto :goto_17

    :cond_16
    move v3, v4

    :goto_17
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 155
    iput-wide p1, p0, Landroid/location/GnssCorrectionComponent$GnssInterval;->mStartMillisSinceGpsEpoch:J

    .line 156
    iput-wide p3, p0, Landroid/location/GnssCorrectionComponent$GnssInterval;->mEndMillisSinceGpsEpoch:J

    .line 157
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEndMillisSinceGpsEpoch()J
    .registers 3

    .line 168
    iget-wide v0, p0, Landroid/location/GnssCorrectionComponent$GnssInterval;->mEndMillisSinceGpsEpoch:J

    return-wide v0
.end method

.method public blacklist getStartMillisSinceGpsEpoch()J
    .registers 3

    .line 162
    iget-wide v0, p0, Landroid/location/GnssCorrectionComponent$GnssInterval;->mStartMillisSinceGpsEpoch:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnssInterval["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "startMillisSinceGpsEpoch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssCorrectionComponent$GnssInterval;->mStartMillisSinceGpsEpoch:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, ", endMillisSinceGpsEpoch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssCorrectionComponent$GnssInterval;->mEndMillisSinceGpsEpoch:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 192
    iget-wide v0, p0, Landroid/location/GnssCorrectionComponent$GnssInterval;->mStartMillisSinceGpsEpoch:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 193
    iget-wide v0, p0, Landroid/location/GnssCorrectionComponent$GnssInterval;->mEndMillisSinceGpsEpoch:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 194
    return-void
.end method
