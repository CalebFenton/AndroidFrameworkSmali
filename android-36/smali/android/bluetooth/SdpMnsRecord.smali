.class public Landroid/bluetooth/SdpMnsRecord;
.super Ljava/lang/Object;
.source "SdpMnsRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final blacklist mL2capPsm:I

.field private final blacklist mProfileVersion:I

.field private final blacklist mRfcommChannelNumber:I

.field private final blacklist mServiceName:Ljava/lang/String;

.field private final blacklist mSupportedFeatures:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 106
    new-instance v0, Landroid/bluetooth/SdpMnsRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/SdpMnsRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SdpMnsRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIILjava/lang/String;)V
    .registers 6
    .param p1, "l2capPsm"    # I
    .param p2, "rfcommChannelNumber"    # I
    .param p3, "profileVersion"    # I
    .param p4, "supportedFeatures"    # I
    .param p5, "serviceName"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    .line 35
    iput p2, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    .line 36
    iput p4, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    .line 37
    iput-object p5, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    .line 38
    iput p3, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getL2capPsm()I
    .registers 2

    .line 56
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    return v0
.end method

.method public blacklist getProfileVersion()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    return v0
.end method

.method public blacklist getRfcommChannelNumber()I
    .registers 2

    .line 60
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    return v0
.end method

.method public blacklist getServiceName()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSupportedFeatures()I
    .registers 2

    .line 64
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 86
    const-string v0, "Bluetooth MNS SDP Record:\n"

    .line 88
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    const-string v2, "\n"

    const/4 v3, -0x1

    if-eq v1, v3, :cond_26

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "RFCOMM Chan Number: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_26
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    if-eq v1, v3, :cond_47

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "L2CAP PSM: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_47
    iget-object v1, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    if-eqz v1, :cond_68

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Service Name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_68
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    if-eq v1, v3, :cond_89

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Supported features: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_89
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    if-eq v1, v3, :cond_aa

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Profile_version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_aa
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 80
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return-void
.end method
