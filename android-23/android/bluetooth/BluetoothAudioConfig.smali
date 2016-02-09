.class public final Landroid/bluetooth/BluetoothAudioConfig;
.super Ljava/lang/Object;
.source "BluetoothAudioConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAudioConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothAudioConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAudioFormat:I

.field private final mChannelConfig:I

.field private final mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 68
    new-instance v0, Landroid/bluetooth/BluetoothAudioConfig$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/BluetoothAudioConfig$1;-><init>()V

    #@5
    .line 67
    sput-object v0, Landroid/bluetooth/BluetoothAudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "sampleRate"    # I
    .param p2, "channelConfig"    # I
    .param p3, "audioFormat"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput p1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    #@5
    .line 37
    iput p2, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    #@7
    .line 38
    iput p3, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    #@9
    .line 35
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

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 43
    instance-of v2, p1, Landroid/bluetooth/BluetoothAudioConfig;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 44
    check-cast v0, Landroid/bluetooth/BluetoothAudioConfig;

    #@8
    .line 45
    .local v0, "bac":Landroid/bluetooth/BluetoothAudioConfig;
    iget v2, v0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    #@a
    iget v3, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 46
    iget v2, v0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    #@10
    iget v3, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    #@12
    if-ne v2, v3, :cond_0

    #@14
    .line 47
    iget v2, v0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    #@16
    iget v3, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    #@18
    if-ne v2, v3, :cond_0

    #@1a
    const/4 v1, 0x1

    #@1b
    .line 45
    :cond_0
    return v1

    #@1c
    .line 49
    .end local v0    # "bac":Landroid/bluetooth/BluetoothAudioConfig;
    :cond_1
    return v1
.end method

.method public getAudioFormat()I
    .locals 1

    #@0
    .prologue
    .line 109
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    #@2
    return v0
.end method

.method public getChannelConfig()I
    .locals 1

    #@0
    .prologue
    .line 100
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    #@2
    return v0
.end method

.method public getSampleRate()I
    .locals 1

    #@0
    .prologue
    .line 91
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 54
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    #@2
    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    #@4
    shl-int/lit8 v1, v1, 0x18

    #@6
    or-int/2addr v0, v1

    #@7
    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    #@9
    shl-int/lit8 v1, v1, 0x1c

    #@b
    or-int/2addr v0, v1

    #@c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{mSampleRate:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ",mChannelConfig:"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 60
    const-string/jumbo v1, ",mAudioFormat:"

    #@22
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 60
    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    #@28
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 60
    const-string/jumbo v1, "}"

    #@2f
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 81
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 82
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 83
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 80
    return-void
.end method
