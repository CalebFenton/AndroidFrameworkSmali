.class public final Landroid/nfc/WlcListenerDeviceInfo;
.super Ljava/lang/Object;
.source "WlcListenerDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/WlcListenerDeviceInfo$WlcListenerState;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/WlcListenerDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist STATE_CONNECTED_CHARGING:I = 0x2

.field public static final blacklist STATE_CONNECTED_DISCHARGING:I = 0x3

.field public static final blacklist STATE_DISCONNECTED:I = 0x1


# instance fields
.field private blacklist mBatteryLevel:D

.field private blacklist mProductId:I

.field private blacklist mState:I

.field private blacklist mTemperature:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 120
    new-instance v0, Landroid/nfc/WlcListenerDeviceInfo$1;

    invoke-direct {v0}, Landroid/nfc/WlcListenerDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/WlcListenerDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IDDI)V
    .registers 7
    .param p1, "productId"    # I
    .param p2, "temperature"    # D
    .param p4, "batteryLevel"    # D
    .param p6, "state"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Landroid/nfc/WlcListenerDeviceInfo;->mProductId:I

    .line 77
    iput-wide p2, p0, Landroid/nfc/WlcListenerDeviceInfo;->mTemperature:D

    .line 78
    iput-wide p4, p0, Landroid/nfc/WlcListenerDeviceInfo;->mBatteryLevel:D

    .line 79
    iput p6, p0, Landroid/nfc/WlcListenerDeviceInfo;->mState:I

    .line 80
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nfc/WlcListenerDeviceInfo;->mProductId:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/nfc/WlcListenerDeviceInfo;->mTemperature:D

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/nfc/WlcListenerDeviceInfo;->mBatteryLevel:D

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nfc/WlcListenerDeviceInfo;->mState:I

    .line 118
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/nfc/WlcListenerDeviceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/nfc/WlcListenerDeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBatteryLevel()D
    .registers 3

    .line 103
    iget-wide v0, p0, Landroid/nfc/WlcListenerDeviceInfo;->mBatteryLevel:D

    return-wide v0
.end method

.method public blacklist getProductId()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/nfc/WlcListenerDeviceInfo;->mProductId:I

    return v0
.end method

.method public blacklist getState()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/nfc/WlcListenerDeviceInfo;->mState:I

    return v0
.end method

.method public blacklist getTemperature()D
    .registers 3

    .line 95
    iget-wide v0, p0, Landroid/nfc/WlcListenerDeviceInfo;->mTemperature:D

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 140
    iget v0, p0, Landroid/nfc/WlcListenerDeviceInfo;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-wide v0, p0, Landroid/nfc/WlcListenerDeviceInfo;->mTemperature:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 142
    iget-wide v0, p0, Landroid/nfc/WlcListenerDeviceInfo;->mBatteryLevel:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 143
    iget v0, p0, Landroid/nfc/WlcListenerDeviceInfo;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return-void
.end method
