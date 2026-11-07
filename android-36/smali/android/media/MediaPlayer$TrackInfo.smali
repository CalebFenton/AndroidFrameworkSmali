.class public Landroid/media/MediaPlayer$TrackInfo;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$TrackInfo$TrackType;
    }
.end annotation


# static fields
.field static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/MediaPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MEDIA_TRACK_TYPE_AUDIO:I = 0x2

.field public static final whitelist MEDIA_TRACK_TYPE_METADATA:I = 0x5

.field public static final whitelist MEDIA_TRACK_TYPE_SUBTITLE:I = 0x4

.field public static final whitelist MEDIA_TRACK_TYPE_TIMEDTEXT:I = 0x3

.field public static final whitelist MEDIA_TRACK_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist MEDIA_TRACK_TYPE_VIDEO:I = 0x1


# instance fields
.field final greylist-max-o mFormat:Landroid/media/MediaFormat;

.field final greylist-max-o mTrackType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2719
    new-instance v0, Landroid/media/MediaPlayer$TrackInfo$1;

    invoke-direct {v0}, Landroid/media/MediaPlayer$TrackInfo$1;-><init>()V

    sput-object v0, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(ILandroid/media/MediaFormat;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "format"    # Landroid/media/MediaFormat;

    .line 2652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2653
    iput p1, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    .line 2654
    iput-object p2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 2655
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    .line 2635
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2636
    .local v0, "mime":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2637
    .local v1, "language":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/MediaFormat;->createSubtitleFormat(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 2639
    iget v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3e

    .line 2640
    iget-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v3, "is-autoselect"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2641
    iget-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v3, "is-default"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2642
    iget-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v3, "is-forced-subtitle"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_54

    .line 2643
    :cond_3e
    iget v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_54

    .line 2644
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2645
    .local v2, "hasHapticChannels":Z
    if-eqz v2, :cond_54

    .line 2646
    iget-object v3, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v4, "haptic-channel-count"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2649
    .end local v2    # "hasHapticChannels":Z
    :cond_54
    :goto_54
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2662
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFormat()Landroid/media/MediaFormat;
    .registers 3

    .line 2601
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    goto :goto_d

    .line 2605
    :cond_b
    const/4 v0, 0x0

    return-object v0

    .line 2603
    :cond_d
    :goto_d
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public whitelist getLanguage()Ljava/lang/String;
    .registers 3

    .line 2582
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "language"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2583
    .local v0, "language":Ljava/lang/String;
    if-nez v0, :cond_d

    const-string v1, "und"

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    return-object v1
.end method

.method public whitelist getTrackType()I
    .registers 2

    .line 2572
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    return v0
.end method

.method public blacklist hasHapticChannels()Z
    .registers 3

    .line 2591
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "haptic-channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 2592
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 2591
    :goto_19
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2690
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2691
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2692
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2693
    iget v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    packed-switch v1, :pswitch_data_60

    .line 2707
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 2704
    :pswitch_22
    const-string v1, "SUBTITLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2705
    goto :goto_3a

    .line 2701
    :pswitch_28
    const-string v1, "TIMEDTEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2702
    goto :goto_3a

    .line 2698
    :pswitch_2e
    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2699
    goto :goto_3a

    .line 2695
    :pswitch_34
    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2696
    nop

    .line 2710
    :goto_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2711
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2712
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2e
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2670
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2671
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2672
    invoke-virtual {p0}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2674
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3e

    .line 2675
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "is-autoselect"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2676
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "is-default"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2677
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "is-forced-subtitle"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_59

    .line 2678
    :cond_3e
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_59

    .line 2679
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 2680
    const-string v1, "haptic-channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 2681
    .local v0, "hasHapticChannels":Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2682
    if-eqz v0, :cond_59

    .line 2683
    iget-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2686
    .end local v0    # "hasHapticChannels":Z
    :cond_59
    :goto_59
    return-void
.end method
