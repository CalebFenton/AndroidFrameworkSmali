.class public final Landroid/location/GnssRequest;
.super Ljava/lang/Object;
.source "GnssRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFullTracking:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/location/GnssRequest$1;

    invoke-direct {v0}, Landroid/location/GnssRequest$1;-><init>()V

    sput-object v0, Landroid/location/GnssRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "fullTracking"    # Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Landroid/location/GnssRequest;->mFullTracking:Z

    .line 37
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLandroid/location/GnssRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GnssRequest;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 94
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 95
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 96
    :cond_8
    instance-of v2, p1, Landroid/location/GnssRequest;

    if-nez v2, :cond_d

    return v1

    .line 98
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/location/GnssRequest;

    .line 99
    .local v2, "other":Landroid/location/GnssRequest;
    iget-boolean v3, p0, Landroid/location/GnssRequest;->mFullTracking:Z

    iget-boolean v4, v2, Landroid/location/GnssRequest;->mFullTracking:Z

    if-eq v3, v4, :cond_17

    return v1

    .line 101
    :cond_17
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 106
    iget-boolean v0, p0, Landroid/location/GnssRequest;->mFullTracking:Z

    return v0
.end method

.method public whitelist isFullTracking()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Landroid/location/GnssRequest;->mFullTracking:Z

    return v0
.end method

.method public blacklist toGnssMeasurementRequest()Landroid/location/GnssMeasurementRequest;
    .registers 3

    .line 62
    new-instance v0, Landroid/location/GnssMeasurementRequest$Builder;

    invoke-direct {v0}, Landroid/location/GnssMeasurementRequest$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/location/GnssRequest;->isFullTracking()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GnssMeasurementRequest$Builder;->setFullTracking(Z)Landroid/location/GnssMeasurementRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssMeasurementRequest$Builder;->build()Landroid/location/GnssMeasurementRequest;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "GnssRequest["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-boolean v1, p0, Landroid/location/GnssRequest;->mFullTracking:Z

    if-eqz v1, :cond_13

    .line 86
    const-string v1, "FullTracking"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_13
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 116
    iget-boolean v0, p0, Landroid/location/GnssRequest;->mFullTracking:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 117
    return-void
.end method
