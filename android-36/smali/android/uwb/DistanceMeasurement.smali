.class public final Landroid/uwb/DistanceMeasurement;
.super Ljava/lang/Object;
.source "DistanceMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/DistanceMeasurement$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/uwb/DistanceMeasurement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfidenceLevel:D

.field private final blacklist mErrorMeters:D

.field private final blacklist mMeters:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Landroid/uwb/DistanceMeasurement$1;

    invoke-direct {v0}, Landroid/uwb/DistanceMeasurement$1;-><init>()V

    sput-object v0, Landroid/uwb/DistanceMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(DDD)V
    .registers 7
    .param p1, "meters"    # D
    .param p3, "errorMeters"    # D
    .param p5, "confidenceLevel"    # D

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Landroid/uwb/DistanceMeasurement;->mMeters:D

    .line 44
    iput-wide p3, p0, Landroid/uwb/DistanceMeasurement;->mErrorMeters:D

    .line 45
    iput-wide p5, p0, Landroid/uwb/DistanceMeasurement;->mConfidenceLevel:D

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(DDDLandroid/uwb/DistanceMeasurement-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/uwb/DistanceMeasurement;-><init>(DDD)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 87
    return v0

    .line 90
    :cond_4
    instance-of v1, p1, Landroid/uwb/DistanceMeasurement;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 91
    move-object v1, p1

    check-cast v1, Landroid/uwb/DistanceMeasurement;

    .line 92
    .local v1, "other":Landroid/uwb/DistanceMeasurement;
    iget-wide v3, p0, Landroid/uwb/DistanceMeasurement;->mMeters:D

    invoke-virtual {v1}, Landroid/uwb/DistanceMeasurement;->getMeters()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2b

    iget-wide v3, p0, Landroid/uwb/DistanceMeasurement;->mErrorMeters:D

    .line 93
    invoke-virtual {v1}, Landroid/uwb/DistanceMeasurement;->getErrorMeters()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2b

    iget-wide v3, p0, Landroid/uwb/DistanceMeasurement;->mConfidenceLevel:D

    .line 94
    invoke-virtual {v1}, Landroid/uwb/DistanceMeasurement;->getConfidenceLevel()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v2

    .line 92
    :goto_2c
    return v0

    .line 96
    .end local v1    # "other":Landroid/uwb/DistanceMeasurement;
    :cond_2d
    return v2
.end method

.method public whitelist getConfidenceLevel()D
    .registers 3

    .line 78
    iget-wide v0, p0, Landroid/uwb/DistanceMeasurement;->mConfidenceLevel:D

    return-wide v0
.end method

.method public whitelist getErrorMeters()D
    .registers 3

    .line 65
    iget-wide v0, p0, Landroid/uwb/DistanceMeasurement;->mErrorMeters:D

    return-wide v0
.end method

.method public whitelist getMeters()D
    .registers 3

    .line 54
    iget-wide v0, p0, Landroid/uwb/DistanceMeasurement;->mMeters:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 104
    iget-wide v0, p0, Landroid/uwb/DistanceMeasurement;->mMeters:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Landroid/uwb/DistanceMeasurement;->mErrorMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Landroid/uwb/DistanceMeasurement;->mConfidenceLevel:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DistanceMeasurement[meters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/uwb/DistanceMeasurement;->mMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMeters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/uwb/DistanceMeasurement;->mErrorMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidenceLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/uwb/DistanceMeasurement;->mConfidenceLevel:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

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

    .line 114
    iget-wide v0, p0, Landroid/uwb/DistanceMeasurement;->mMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 115
    iget-wide v0, p0, Landroid/uwb/DistanceMeasurement;->mErrorMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 116
    iget-wide v0, p0, Landroid/uwb/DistanceMeasurement;->mConfidenceLevel:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 117
    return-void
.end method
