.class public final Landroid/media/tv/TvInputHardwareInfo;
.super Ljava/lang/Object;
.source "TvInputHardwareInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputHardwareInfo$Builder;,
        Landroid/media/tv/TvInputHardwareInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "TvInputHardwareInfo"

.field public static final TV_INPUT_TYPE_COMPONENT:I = 0x6

.field public static final TV_INPUT_TYPE_COMPOSITE:I = 0x3

.field public static final TV_INPUT_TYPE_DISPLAY_PORT:I = 0xa

.field public static final TV_INPUT_TYPE_DVI:I = 0x8

.field public static final TV_INPUT_TYPE_HDMI:I = 0x9

.field public static final TV_INPUT_TYPE_OTHER_HARDWARE:I = 0x1

.field public static final TV_INPUT_TYPE_SCART:I = 0x5

.field public static final TV_INPUT_TYPE_SVIDEO:I = 0x4

.field public static final TV_INPUT_TYPE_TUNER:I = 0x2

.field public static final TV_INPUT_TYPE_VGA:I = 0x7


# instance fields
.field private mAudioAddress:Ljava/lang/String;

.field private mAudioType:I

.field private mDeviceId:I

.field private mHdmiPortId:I

.field private mType:I


# direct methods
.method static synthetic -get0(Landroid/media/tv/TvInputHardwareInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    #@2
    return p1
.end method

.method static synthetic -set4(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    new-instance v0, Landroid/media/tv/TvInputHardwareInfo$1;

    #@2
    invoke-direct {v0}, Landroid/media/tv/TvInputHardwareInfo$1;-><init>()V

    #@5
    .line 47
    sput-object v0, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/media/tv/TvInputHardwareInfo;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 116
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAudioAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAudioType()I
    .locals 1

    #@0
    .prologue
    .line 85
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    #@2
    return v0
.end method

.method public getDeviceId()I
    .locals 1

    #@0
    .prologue
    .line 77
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    #@2
    return v0
.end method

.method public getHdmiPortId()I
    .locals 2

    #@0
    .prologue
    .line 93
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    #@2
    const/16 v1, 0x9

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@b
    throw v0

    #@c
    .line 96
    :cond_0
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    #@e
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 81
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    #@2
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    #@6
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    #@c
    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    #@12
    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    #@18
    .line 135
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    #@1a
    const/16 v1, 0x9

    #@1c
    if-ne v0, v1, :cond_0

    #@1e
    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    #@24
    .line 130
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 102
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "TvInputHardwareInfo {id="

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    .line 103
    const-string/jumbo v1, ", type="

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    .line 104
    const-string/jumbo v1, ", audio_type="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    .line 105
    const-string/jumbo v1, ", audio_addr="

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    iget-object v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 106
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    #@39
    const/16 v2, 0x9

    #@3b
    if-ne v1, v2, :cond_0

    #@3d
    .line 107
    const-string/jumbo v1, ", hdmi_port="

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    .line 109
    :cond_0
    const-string/jumbo v1, "}"

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 121
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 122
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 123
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 124
    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 125
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    #@16
    const/16 v1, 0x9

    #@18
    if-ne v0, v1, :cond_0

    #@1a
    .line 126
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 120
    :cond_0
    return-void
.end method
