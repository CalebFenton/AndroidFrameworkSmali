.class public Landroid/bluetooth/SdpMasRecord;
.super Ljava/lang/Object;
.source "SdpMasRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/SdpMasRecord$MessageType;,
        Landroid/bluetooth/SdpMasRecord$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mL2capPsm:I

.field private final mMasInstanceId:I

.field private final mProfileVersion:I

.field private final mRfcommChannelNumber:I

.field private final mServiceName:Ljava/lang/String;

.field private final mSupportedFeatures:I

.field private final mSupportedMessageTypes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 139
    new-instance v0, Landroid/bluetooth/SdpMasRecord$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/SdpMasRecord$1;-><init>()V

    #@5
    sput-object v0, Landroid/bluetooth/SdpMasRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 21
    return-void
.end method

.method public constructor <init>(IIIIIILjava/lang/String;)V
    .locals 0
    .param p1, "mas_instance_id"    # I
    .param p2, "l2cap_psm"    # I
    .param p3, "rfcomm_channel_number"    # I
    .param p4, "profile_version"    # I
    .param p5, "supported_features"    # I
    .param p6, "supported_message_types"    # I
    .param p7, "service_name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput p1, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    #@5
    .line 44
    iput p2, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    #@7
    .line 45
    iput p3, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    #@9
    .line 46
    iput p4, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    #@b
    .line 47
    iput p5, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    #@d
    .line 48
    iput p6, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    #@f
    .line 49
    iput-object p7, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    #@11
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    #@9
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    #@f
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    #@15
    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    #@1b
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    #@21
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    #@27
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    #@2d
    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 64
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getL2capPsm()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    #@2
    return v0
.end method

.method public getMasInstanceId()I
    .locals 1

    #@0
    .prologue
    .line 68
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    #@2
    return v0
.end method

.method public getProfileVersion()I
    .locals 1

    #@0
    .prologue
    .line 80
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    #@2
    return v0
.end method

.method public getRfcommCannelNumber()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    #@2
    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    #@2
    return v0
.end method

.method public getSupportedMessageTypes()I
    .locals 1

    #@0
    .prologue
    .line 88
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    #@2
    return v0
.end method

.method public msgSupported(I)Z
    .locals 2
    .param p1, "msg"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 92
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    #@3
    and-int/2addr v1, p1

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 113
    const-string/jumbo v0, "Bluetooth MAS SDP Record:\n"

    #@4
    .line 115
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    #@6
    if-eq v1, v3, :cond_0

    #@8
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, "Mas Instance Id: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "\n"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 118
    :cond_0
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    #@2b
    if-eq v1, v3, :cond_1

    #@2d
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    const-string/jumbo v2, "RFCOMM Chan Number: "

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    iget v2, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    const-string/jumbo v2, "\n"

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    .line 121
    :cond_1
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    #@50
    if-eq v1, v3, :cond_2

    #@52
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    const-string/jumbo v2, "L2CAP PSM: "

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    iget v2, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    const-string/jumbo v2, "\n"

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    .line 124
    :cond_2
    iget-object v1, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    #@75
    if-eqz v1, :cond_3

    #@77
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    const-string/jumbo v2, "Service Name: "

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    iget-object v2, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    #@89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    const-string/jumbo v2, "\n"

    #@90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v0

    #@98
    .line 127
    :cond_3
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    #@9a
    if-eq v1, v3, :cond_4

    #@9c
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    const-string/jumbo v2, "Profile version: "

    #@a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    iget v2, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    #@ae
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v1

    #@b2
    const-string/jumbo v2, "\n"

    #@b5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v1

    #@b9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v0

    #@bd
    .line 130
    :cond_4
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    #@bf
    if-eq v1, v3, :cond_5

    #@c1
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v1

    #@ca
    const-string/jumbo v2, "Supported msg types: "

    #@cd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v1

    #@d1
    iget v2, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    #@d3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v1

    #@d7
    const-string/jumbo v2, "\n"

    #@da
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v1

    #@de
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v0

    #@e2
    .line 133
    :cond_5
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    #@e4
    if-eq v1, v3, :cond_6

    #@e6
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v1

    #@ef
    const-string/jumbo v2, "Supported features: "

    #@f2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v1

    #@f6
    iget v2, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    #@f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v1

    #@fc
    const-string/jumbo v2, "\n"

    #@ff
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v1

    #@103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v0

    #@107
    .line 136
    :cond_6
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 102
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 103
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 104
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 105
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 106
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 107
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 108
    iget-object v0, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 100
    return-void
.end method
