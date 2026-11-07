.class public final Landroid/bluetooth/le/DistanceMeasurementMethod;
.super Ljava/lang/Object;
.source "DistanceMeasurementMethod.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/DistanceMeasurementMethod$Builder;,
        Landroid/bluetooth/le/DistanceMeasurementMethod$DistanceMeasurementMethodId;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/DistanceMeasurementMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DISTANCE_MEASUREMENT_METHOD_AUTO:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISTANCE_MEASUREMENT_METHOD_CHANNEL_SOUNDING:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISTANCE_MEASUREMENT_METHOD_RSSI:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mId:I

.field private final blacklist mIsAltitudeAngleSupported:Z

.field private final blacklist mIsAzimuthAngleSupported:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 187
    new-instance v0, Landroid/bluetooth/le/DistanceMeasurementMethod$1;

    invoke-direct {v0}, Landroid/bluetooth/le/DistanceMeasurementMethod$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/DistanceMeasurementMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IZZ)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "isAzimuthAngleSupported"    # Z
    .param p3, "isAltitudeAngleSupported"    # Z

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Landroid/bluetooth/le/DistanceMeasurementMethod;->mId:I

    .line 82
    iput-boolean p2, p0, Landroid/bluetooth/le/DistanceMeasurementMethod;->mIsAzimuthAngleSupported:Z

    .line 83
    iput-boolean p3, p0, Landroid/bluetooth/le/DistanceMeasurementMethod;->mIsAltitudeAngleSupported:Z

    .line 84
    return-void
.end method

.method synthetic constructor blacklist <init>(IZZLandroid/bluetooth/le/DistanceMeasurementMethod-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/le/DistanceMeasurementMethod;-><init>(IZZ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 173
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 175
    :cond_4
    instance-of v1, p1, Landroid/bluetooth/le/DistanceMeasurementMethod;

    if-nez v1, :cond_9

    return v0

    .line 177
    :cond_9
    move-object v1, p1

    check-cast v1, Landroid/bluetooth/le/DistanceMeasurementMethod;

    .line 178
    .local v1, "u":Landroid/bluetooth/le/DistanceMeasurementMethod;
    iget v2, p0, Landroid/bluetooth/le/DistanceMeasurementMethod;->mId:I

    iget v3, v1, Landroid/bluetooth/le/DistanceMeasurementMethod;->mId:I

    if-ne v2, v3, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public whitelist getId()D
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    iget v0, p0, Landroid/bluetooth/le/DistanceMeasurementMethod;->mId:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public whitelist getMethodId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 109
    iget v0, p0, Landroid/bluetooth/le/DistanceMeasurementMethod;->mId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 183
    iget v0, p0, Landroid/bluetooth/le/DistanceMeasurementMethod;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isAltitudeAngleSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 131
    iget-boolean v0, p0, Landroid/bluetooth/le/DistanceMeasurementMethod;->mIsAltitudeAngleSupported:Z

    return v0
.end method

.method public whitelist isAzimuthAngleSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 120
    iget-boolean v0, p0, Landroid/bluetooth/le/DistanceMeasurementMethod;->mIsAzimuthAngleSupported:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DistanceMeasurementMethod[id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/DistanceMeasurementMethod;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAzimuthAngleSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/DistanceMeasurementMethod;->mIsAzimuthAngleSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAltitudeAngleSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/DistanceMeasurementMethod;->mIsAltitudeAngleSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 151
    iget v0, p0, Landroid/bluetooth/le/DistanceMeasurementMethod;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-boolean v0, p0, Landroid/bluetooth/le/DistanceMeasurementMethod;->mIsAzimuthAngleSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 153
    iget-boolean v0, p0, Landroid/bluetooth/le/DistanceMeasurementMethod;->mIsAltitudeAngleSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 154
    return-void
.end method
