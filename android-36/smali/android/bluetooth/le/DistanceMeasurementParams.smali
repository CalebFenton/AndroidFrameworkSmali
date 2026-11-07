.class public final Landroid/bluetooth/le/DistanceMeasurementParams;
.super Ljava/lang/Object;
.source "DistanceMeasurementParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/DistanceMeasurementParams$Builder;,
        Landroid/bluetooth/le/DistanceMeasurementParams$ReportFrequency;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/DistanceMeasurementParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REPORT_DURATION_DEFAULT:I = 0x7fffffff

.field private static final blacklist REPORT_DURATION_MAX:I = 0x7fffffff

.field public static final whitelist REPORT_FREQUENCY_HIGH:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REPORT_FREQUENCY_LOW:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REPORT_FREQUENCY_MEDIUM:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mChannelSoundingParams:Landroid/bluetooth/le/ChannelSoundingParams;

.field private final blacklist mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final blacklist mDuration:I

.field private final blacklist mFrequency:I

.field private final blacklist mMethodId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 198
    new-instance v0, Landroid/bluetooth/le/DistanceMeasurementParams$1;

    invoke-direct {v0}, Landroid/bluetooth/le/DistanceMeasurementParams$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/DistanceMeasurementParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;IIILandroid/bluetooth/le/ChannelSoundingParams;)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "duration"    # I
    .param p3, "frequency"    # I
    .param p4, "methodId"    # I
    .param p5, "channelSoundingParams"    # Landroid/bluetooth/le/ChannelSoundingParams;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 89
    iput p2, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mDuration:I

    .line 90
    iput p3, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mFrequency:I

    .line 91
    iput p4, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mMethodId:I

    .line 92
    iput-object p5, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mChannelSoundingParams:Landroid/bluetooth/le/ChannelSoundingParams;

    .line 93
    return-void
.end method

.method public static whitelist getDefaultDurationSeconds()I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 156
    const v0, 0x7fffffff

    return v0
.end method

.method public static whitelist getMaxDurationSeconds()I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 166
    const v0, 0x7fffffff

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getChannelSoundingParams()Landroid/bluetooth/le/ChannelSoundingParams;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 146
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mChannelSoundingParams:Landroid/bluetooth/le/ChannelSoundingParams;

    return-object v0
.end method

.method public whitelist getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public whitelist getDurationSeconds()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 115
    iget v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mDuration:I

    return v0
.end method

.method public whitelist getFrequency()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 126
    iget v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mFrequency:I

    return v0
.end method

.method public whitelist getMethodId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 136
    iget v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mMethodId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 186
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 187
    iget v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mMethodId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mChannelSoundingParams:Landroid/bluetooth/le/ChannelSoundingParams;

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mChannelSoundingParams:Landroid/bluetooth/le/ChannelSoundingParams;

    if-eqz v0, :cond_27

    .line 193
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementParams;->mChannelSoundingParams:Landroid/bluetooth/le/ChannelSoundingParams;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/le/ChannelSoundingParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 195
    :cond_27
    return-void
.end method
