.class public final Landroid/media/session/MediaController$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaController$PlaybackInfo$PlaybackType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/session/MediaController$PlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PLAYBACK_TYPE_LOCAL:I = 0x1

.field public static final whitelist PLAYBACK_TYPE_REMOTE:I = 0x2


# instance fields
.field private final greylist-max-o mAudioAttrs:Landroid/media/AudioAttributes;

.field private final greylist-max-o mCurrentVolume:I

.field private final greylist-max-o mMaxVolume:I

.field private final blacklist mPlaybackType:I

.field private final greylist-max-o mVolumeControl:I

.field private final blacklist mVolumeControlId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1097
    new-instance v0, Landroid/media/session/MediaController$PlaybackInfo$1;

    invoke-direct {v0}, Landroid/media/session/MediaController$PlaybackInfo$1;-><init>()V

    sput-object v0, Landroid/media/session/MediaController$PlaybackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIILandroid/media/AudioAttributes;Ljava/lang/String;)V
    .registers 7
    .param p1, "playbackType"    # I
    .param p2, "volumeControl"    # I
    .param p3, "maxVolume"    # I
    .param p4, "currentVolume"    # I
    .param p5, "audioAttrs"    # Landroid/media/AudioAttributes;
    .param p6, "volumeControlId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    iput p1, p0, Landroid/media/session/MediaController$PlaybackInfo;->mPlaybackType:I

    .line 999
    iput p2, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeControl:I

    .line 1000
    iput p3, p0, Landroid/media/session/MediaController$PlaybackInfo;->mMaxVolume:I

    .line 1001
    iput p4, p0, Landroid/media/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    .line 1002
    iput-object p5, p0, Landroid/media/session/MediaController$PlaybackInfo;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 1003
    iput-object p6, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeControlId:Ljava/lang/String;

    .line 1004
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1007
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mPlaybackType:I

    .line 1008
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeControl:I

    .line 1009
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mMaxVolume:I

    .line 1010
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    .line 1011
    const/4 v0, 0x0

    const-class v1, Landroid/media/AudioAttributes;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 1012
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeControlId:Ljava/lang/String;

    .line 1013
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1084
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 1062
    iget-object v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public whitelist getCurrentVolume()I
    .registers 2

    .line 1051
    iget v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    return v0
.end method

.method public whitelist getMaxVolume()I
    .registers 2

    .line 1042
    iget v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mMaxVolume:I

    return v0
.end method

.method public whitelist getPlaybackType()I
    .registers 2

    .line 1025
    iget v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mPlaybackType:I

    return v0
.end method

.method public whitelist getVolumeControl()I
    .registers 2

    .line 1033
    iget v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeControl:I

    return v0
.end method

.method public whitelist getVolumeControlId()Ljava/lang/String;
    .registers 2

    .line 1072
    iget-object v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeControlId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playbackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/session/MediaController$PlaybackInfo;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeControlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeControl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/session/MediaController$PlaybackInfo;->mMaxVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$PlaybackInfo;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeControlId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeControlId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1089
    iget v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mPlaybackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    iget v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeControl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    iget v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mMaxVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1092
    iget v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    iget-object v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1094
    iget-object v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeControlId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1095
    return-void
.end method
