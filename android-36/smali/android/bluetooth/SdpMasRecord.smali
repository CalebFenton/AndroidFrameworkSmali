.class public Landroid/bluetooth/SdpMasRecord;
.super Ljava/lang/Object;
.source "SdpMasRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/SdpMasRecord$MessageType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final blacklist mL2capPsm:I

.field private final blacklist mMasInstanceId:I

.field private final blacklist mProfileVersion:I

.field private final blacklist mRfcommChannelNumber:I

.field private final blacklist mServiceName:Ljava/lang/String;

.field private final blacklist mSupportedFeatures:I

.field private final blacklist mSupportedMessageTypes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Landroid/bluetooth/SdpMasRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/SdpMasRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SdpMasRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIIILjava/lang/String;)V
    .registers 8
    .param p1, "masInstanceId"    # I
    .param p2, "l2capPsm"    # I
    .param p3, "rfcommChannelNumber"    # I
    .param p4, "profileVersion"    # I
    .param p5, "supportedFeatures"    # I
    .param p6, "supportedMessageTypes"    # I
    .param p7, "serviceName"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    .line 47
    iput p2, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    .line 48
    iput p3, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    .line 49
    iput p4, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    .line 50
    iput p5, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    .line 51
    iput p6, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    .line 52
    iput-object p7, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getL2capPsm()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    return v0
.end method

.method public blacklist getMasInstanceId()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    return v0
.end method

.method public blacklist getProfileVersion()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    return v0
.end method

.method public blacklist getRfcommCannelNumber()I
    .registers 2

    .line 80
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    return v0
.end method

.method public blacklist getServiceName()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSupportedFeatures()I
    .registers 2

    .line 88
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    return v0
.end method

.method public blacklist getSupportedMessageTypes()I
    .registers 2

    .line 92
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    return v0
.end method

.method public blacklist msgSupported(I)Z
    .registers 3
    .param p1, "msg"    # I

    .line 97
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 117
    const-string v0, "Bluetooth MAS SDP Record:\n"

    .line 119
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    const-string v2, "\n"

    const/4 v3, -0x1

    if-eq v1, v3, :cond_26

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Mas Instance Id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_26
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    if-eq v1, v3, :cond_47

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "RFCOMM Chan Number: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_47
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    if-eq v1, v3, :cond_68

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "L2CAP PSM: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_68
    iget-object v1, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    if-eqz v1, :cond_89

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Service Name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_89
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    if-eq v1, v3, :cond_aa

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Profile version: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_aa
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    if-eq v1, v3, :cond_cb

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Supported msg types: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_cb
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    if-eq v1, v3, :cond_ec

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Supported features: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_ec
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 113
    return-void
.end method
