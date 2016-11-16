.class public Landroid/bluetooth/SdpMnsRecord;
.super Ljava/lang/Object;
.source "SdpMnsRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/SdpMnsRecord$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mL2capPsm:I

.field private final mProfileVersion:I

.field private final mRfcommChannelNumber:I

.field private final mServiceName:Ljava/lang/String;

.field private final mSupportedFeatures:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 104
    new-instance v0, Landroid/bluetooth/SdpMnsRecord$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/SdpMnsRecord$1;-><init>()V

    #@5
    sput-object v0, Landroid/bluetooth/SdpMnsRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 21
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0
    .param p1, "l2cap_psm"    # I
    .param p2, "rfcomm_channel_number"    # I
    .param p3, "profile_version"    # I
    .param p4, "supported_features"    # I
    .param p5, "service_name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput p1, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    #@5
    .line 34
    iput p2, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    #@7
    .line 35
    iput p4, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    #@9
    .line 36
    iput-object p5, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    #@b
    .line 37
    iput p3, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    #@d
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    #@9
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    #@f
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    #@15
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    #@1b
    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    #@21
    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 50
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getL2capPsm()I
    .locals 1

    #@0
    .prologue
    .line 55
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    #@2
    return v0
.end method

.method public getProfileVersion()I
    .locals 1

    #@0
    .prologue
    .line 71
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    #@2
    return v0
.end method

.method public getRfcommChannelNumber()I
    .locals 1

    #@0
    .prologue
    .line 59
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    #@2
    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 1

    #@0
    .prologue
    .line 63
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 84
    const-string/jumbo v0, "Bluetooth MNS SDP Record:\n"

    #@4
    .line 86
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    #@6
    if-eq v1, v3, :cond_0

    #@8
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, "RFCOMM Chan Number: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

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
    .line 89
    :cond_0
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    #@2b
    if-eq v1, v3, :cond_1

    #@2d
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    const-string/jumbo v2, "L2CAP PSM: "

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    iget v2, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

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
    .line 92
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    #@50
    if-eqz v1, :cond_2

    #@52
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    const-string/jumbo v2, "Service Name: "

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    iget-object v2, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 95
    :cond_2
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    #@75
    if-eq v1, v3, :cond_3

    #@77
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    const-string/jumbo v2, "Supported features: "

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    iget v2, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    #@89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 98
    :cond_3
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    #@9a
    if-eq v1, v3, :cond_4

    #@9c
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    const-string/jumbo v2, "Profile_version: "

    #@a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    iget v2, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

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
    .line 101
    :cond_4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 77
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 78
    iget-object v0, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 79
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 80
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 75
    return-void
.end method
