.class public final Landroid/media/AudioPlaybackConfiguration$FormatInfo;
.super Ljava/lang/Object;
.source "AudioPlaybackConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioPlaybackConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormatInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioPlaybackConfiguration$FormatInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist DEFAULT:Landroid/media/AudioPlaybackConfiguration$FormatInfo;


# instance fields
.field final blacklist mIsSpatialized:Z

.field final blacklist mNativeChannelMask:I

.field final blacklist mSampleRate:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1001
    new-instance v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;-><init>(ZII)V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->DEFAULT:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    .line 1057
    new-instance v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo$1;

    invoke-direct {v0}, Landroid/media/AudioPlaybackConfiguration$FormatInfo$1;-><init>()V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1050
    nop

    .line 1051
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1052
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1053
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1050
    invoke-direct {p0, v0, v1, v2}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;-><init>(ZII)V

    .line 1055
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioPlaybackConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ZII)V
    .registers 4
    .param p1, "isSpatialized"    # Z
    .param p2, "nativeChannelMask"    # I
    .param p3, "sampleRate"    # I

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iput-boolean p1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    .line 1009
    iput p2, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    .line 1010
    iput p3, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    .line 1011
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1039
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1024
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1025
    :cond_4
    instance-of v1, p1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1026
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    .line 1027
    .local v1, "that":Landroid/media/AudioPlaybackConfiguration$FormatInfo;
    iget-boolean v3, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    iget-boolean v4, v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    if-ne v3, v4, :cond_20

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    iget v4, v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    if-ne v3, v4, :cond_20

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    iget v4, v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    if-ne v3, v4, :cond_20

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1034
    iget-boolean v0, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FormatInfo{isSpatialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelMask=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    .line 1017
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1044
    iget-boolean v0, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1045
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    return-void
.end method
