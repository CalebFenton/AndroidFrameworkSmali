.class public Landroid/bluetooth/SdpPseRecord;
.super Ljava/lang/Object;
.source "SdpPseRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/SdpPseRecord$1;
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

.field private final mSupportedRepositories:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 117
    new-instance v0, Landroid/bluetooth/SdpPseRecord$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/SdpPseRecord$1;-><init>()V

    #@5
    sput-object v0, Landroid/bluetooth/SdpPseRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 22
    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 0
    .param p1, "l2cap_psm"    # I
    .param p2, "rfcomm_channel_number"    # I
    .param p3, "profile_version"    # I
    .param p4, "supported_features"    # I
    .param p5, "supported_repositories"    # I
    .param p6, "service_name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput p1, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    #@5
    .line 37
    iput p2, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    #@7
    .line 38
    iput p3, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    #@9
    .line 39
    iput p4, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    #@b
    .line 40
    iput p5, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    #@d
    .line 41
    iput-object p6, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    #@f
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    #@9
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    #@f
    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    #@15
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    #@1b
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    #@21
    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    #@27
    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 55
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getL2capPsm()I
    .locals 1

    #@0
    .prologue
    .line 59
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    #@2
    return v0
.end method

.method public getProfileVersion()I
    .locals 1

    #@0
    .prologue
    .line 75
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    #@2
    return v0
.end method

.method public getRfcommChannelNumber()I
    .locals 1

    #@0
    .prologue
    .line 63
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    #@2
    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 1

    #@0
    .prologue
    .line 67
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    #@2
    return v0
.end method

.method public getSupportedRepositories()I
    .locals 1

    #@0
    .prologue
    .line 79
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 93
    const-string/jumbo v0, "Bluetooth MNS SDP Record:\n"

    #@4
    .line 95
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    #@6
    if-eq v1, v3, :cond_0

    #@8
    .line 96
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
    iget v2, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

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
    .line 98
    :cond_0
    iget v1, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    #@2b
    if-eq v1, v3, :cond_1

    #@2d
    .line 99
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
    iget v2, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

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
    .line 101
    :cond_1
    iget v1, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    #@50
    if-eq v1, v3, :cond_2

    #@52
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    const-string/jumbo v2, "profile version: "

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    iget v2, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

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
    .line 104
    :cond_2
    iget-object v1, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    #@75
    if-eqz v1, :cond_3

    #@77
    .line 105
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
    iget-object v2, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

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
    .line 107
    :cond_3
    iget v1, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    #@9a
    if-eq v1, v3, :cond_4

    #@9c
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    const-string/jumbo v2, "Supported features: "

    #@a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    iget v2, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

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
    .line 110
    :cond_4
    iget v1, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    #@bf
    if-eq v1, v3, :cond_5

    #@c1
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v1

    #@ca
    const-string/jumbo v2, "Supported repositories: "

    #@cd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v1

    #@d1
    iget v2, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

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
    .line 114
    :cond_5
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 83
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 84
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 85
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 86
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 87
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 88
    iget-object v0, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 82
    return-void
.end method
