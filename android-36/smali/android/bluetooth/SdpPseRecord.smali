.class public Landroid/bluetooth/SdpPseRecord;
.super Ljava/lang/Object;
.source "SdpPseRecord.java"

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

.field private final blacklist mSupportedRepositories:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 120
    new-instance v0, Landroid/bluetooth/SdpPseRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/SdpPseRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SdpPseRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIILjava/lang/String;)V
    .registers 7
    .param p1, "l2capPsm"    # I
    .param p2, "rfcommChannelNumber"    # I
    .param p3, "profileVersion"    # I
    .param p4, "supportedFeatures"    # I
    .param p5, "supportedRepositories"    # I
    .param p6, "serviceName"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    .line 38
    iput p2, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    .line 39
    iput p3, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    .line 40
    iput p4, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    .line 41
    iput p5, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    .line 42
    iput-object p6, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getL2capPsm()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    return v0
.end method

.method public blacklist getProfileVersion()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    return v0
.end method

.method public blacklist getRfcommChannelNumber()I
    .registers 2

    .line 65
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    return v0
.end method

.method public blacklist getServiceName()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSupportedFeatures()I
    .registers 2

    .line 69
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    return v0
.end method

.method public blacklist getSupportedRepositories()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 96
    const-string v0, "Bluetooth MNS SDP Record:\n"

    .line 98
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    const-string v2, "\n"

    const/4 v3, -0x1

    if-eq v1, v3, :cond_26

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "RFCOMM Chan Number: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_26
    iget v1, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    if-eq v1, v3, :cond_47

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "L2CAP PSM: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_47
    iget v1, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    if-eq v1, v3, :cond_68

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "profile version: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_68
    iget-object v1, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    if-eqz v1, :cond_89

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Service Name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_89
    iget v1, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    if-eq v1, v3, :cond_aa

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Supported features: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_aa
    iget v1, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    if-eq v1, v3, :cond_cb

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Supported repositories: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_cb
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 92
    return-void
.end method
