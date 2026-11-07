.class public Landroid/bluetooth/SdpOppOpsRecord;
.super Ljava/lang/Object;
.source "SdpOppOpsRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final blacklist mFormatsList:[B

.field private final blacklist mL2capPsm:I

.field private final blacklist mProfileVersion:I

.field private final blacklist mRfcommChannel:I

.field private final blacklist mServiceName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Landroid/bluetooth/SdpOppOpsRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/SdpOppOpsRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SdpOppOpsRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mRfcommChannel:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mL2capPsm:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mProfileVersion:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mServiceName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, "arrayLength":I
    if-lez v0, :cond_29

    .line 76
    new-array v1, v0, [B

    .line 77
    .local v1, "bytes":[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 78
    iput-object v1, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    .line 79
    .end local v1    # "bytes":[B
    goto :goto_2c

    .line 80
    :cond_29
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    .line 82
    :goto_2c
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;III[B)V
    .registers 6
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "rfcommChannel"    # I
    .param p3, "l2capPsm"    # I
    .param p4, "version"    # I
    .param p5, "formatsList"    # [B

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/bluetooth/SdpOppOpsRecord;->mServiceName:Ljava/lang/String;

    .line 37
    iput p2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mRfcommChannel:I

    .line 38
    iput p3, p0, Landroid/bluetooth/SdpOppOpsRecord;->mL2capPsm:I

    .line 39
    iput p4, p0, Landroid/bluetooth/SdpOppOpsRecord;->mProfileVersion:I

    .line 40
    iput-object p5, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFormatsList()[B
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    return-object v0
.end method

.method public blacklist getL2capPsm()I
    .registers 2

    .line 52
    iget v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mL2capPsm:I

    return v0
.end method

.method public blacklist getProfileVersion()I
    .registers 2

    .line 56
    iget v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mProfileVersion:I

    return v0
.end method

.method public blacklist getRfcommChannel()I
    .registers 2

    .line 48
    iget v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mRfcommChannel:I

    return v0
.end method

.method public blacklist getServiceName()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bluetooth OPP Server SDP Record:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "  RFCOMM Chan Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mRfcommChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "\n  L2CAP PSM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mL2capPsm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "\n  Profile version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mProfileVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "\n  Service Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "\n  Formats List: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mRfcommChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mL2capPsm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mProfileVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mServiceName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    array-length v0, v0

    if-lez v0, :cond_29

    .line 91
    iget-object v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2d

    .line 94
    :cond_29
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    :goto_2d
    return-void
.end method
