.class public final Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkServiceState"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final blacklist mIsRoaming:Z

.field private final blacklist mIsServiceAvailable:Z

.field private final blacklist mOperatorName:Ljava/lang/String;

.field private final blacklist mSignalStrength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1550
    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;IZ)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "isServiceAvailable"    # Z
    .param p3, "operatorName"    # Ljava/lang/String;
    .param p4, "signalStrength"    # I
    .param p5, "isRoaming"    # Z

    .line 1475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1476
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1477
    iput-boolean p2, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsServiceAvailable:Z

    .line 1478
    iput-object p3, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mOperatorName:Ljava/lang/String;

    .line 1479
    iput p4, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mSignalStrength:I

    .line 1480
    iput-boolean p5, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsRoaming:Z

    .line 1481
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1579
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1491
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public whitelist getNetworkOperatorName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1514
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSignalStrength()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1534
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mSignalStrength:I

    return v0
.end method

.method public whitelist isRoaming()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1546
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsRoaming:Z

    return v0
.end method

.method public whitelist isServiceAvailable()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1502
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsServiceAvailable:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1569
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1570
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsServiceAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1571
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mOperatorName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1572
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1573
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsRoaming:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1574
    return-void
.end method
