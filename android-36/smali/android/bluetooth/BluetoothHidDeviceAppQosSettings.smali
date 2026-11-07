.class public final Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppQosSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MAX:I = -0x1

.field public static final whitelist SERVICE_BEST_EFFORT:I = 0x1

.field public static final whitelist SERVICE_GUARANTEED:I = 0x2

.field public static final whitelist SERVICE_NO_TRAFFIC:I


# instance fields
.field private final blacklist mDelayVariation:I

.field private final blacklist mLatency:I

.field private final blacklist mPeakBandwidth:I

.field private final blacklist mServiceType:I

.field private final blacklist mTokenBucketSize:I

.field private final blacklist mTokenRate:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIIIII)V
    .registers 7
    .param p1, "serviceType"    # I
    .param p2, "tokenRate"    # I
    .param p3, "tokenBucketSize"    # I
    .param p4, "peakBandwidth"    # I
    .param p5, "latency"    # I
    .param p6, "delayVariation"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mServiceType:I

    .line 66
    iput p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenRate:I

    .line 67
    iput p3, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenBucketSize:I

    .line 68
    iput p4, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mPeakBandwidth:I

    .line 69
    iput p5, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mLatency:I

    .line 70
    iput p6, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mDelayVariation:I

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDelayVariation()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mDelayVariation:I

    return v0
.end method

.method public whitelist getLatency()I
    .registers 2

    .line 90
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mLatency:I

    return v0
.end method

.method public whitelist getPeakBandwidth()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mPeakBandwidth:I

    return v0
.end method

.method public whitelist getServiceType()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mServiceType:I

    return v0
.end method

.method public whitelist getTokenBucketSize()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenBucketSize:I

    return v0
.end method

.method public whitelist getTokenRate()I
    .registers 2

    .line 78
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenRate:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenBucketSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mPeakBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mLatency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mDelayVariation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return-void
.end method
