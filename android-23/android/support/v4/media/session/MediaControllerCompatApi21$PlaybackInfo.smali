.class public Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackInfo"
.end annotation


# static fields
.field private static final FLAG_SCO:I = 0x4

.field private static final STREAM_BLUETOOTH_SCO:I = 0x6

.field private static final STREAM_SYSTEM_ENFORCED:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 181
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    #@2
    .end local p0    # "volumeInfoObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getCurrentVolume(Ljava/lang/Object;)I
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 198
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    #@2
    .end local p0    # "volumeInfoObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getLegacyAudioStream(Ljava/lang/Object;)I
    .locals 2
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 185
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;

    #@3
    move-result-object v0

    #@4
    .line 186
    .local v0, "attrs":Landroid/media/AudioAttributes;
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public static getMaxVolume(Ljava/lang/Object;)I
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 194
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    #@2
    .end local p0    # "volumeInfoObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getPlaybackType(Ljava/lang/Object;)I
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 177
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    #@2
    .end local p0    # "volumeInfoObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getVolumeControl(Ljava/lang/Object;)I
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 190
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    #@2
    .end local p0    # "volumeInfoObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .locals 4
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    const/4 v2, 0x3

    #@2
    const/4 v1, 0x1

    #@3
    .line 209
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    #@6
    move-result v0

    #@7
    and-int/lit8 v0, v0, 0x1

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 211
    const/4 v0, 0x7

    #@c
    return v0

    #@d
    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    #@10
    move-result v0

    #@11
    and-int/lit8 v0, v0, 0x4

    #@13
    if-ne v0, v3, :cond_1

    #@15
    .line 214
    const/4 v0, 0x6

    #@16
    return v0

    #@17
    .line 218
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    #@1a
    move-result v0

    #@1b
    packed-switch v0, :pswitch_data_0

    #@1e
    .line 242
    return v2

    #@1f
    .line 223
    :pswitch_0
    return v2

    #@20
    .line 225
    :pswitch_1
    return v1

    #@21
    .line 227
    :pswitch_2
    const/4 v0, 0x0

    #@22
    return v0

    #@23
    .line 229
    :pswitch_3
    const/16 v0, 0x8

    #@25
    return v0

    #@26
    .line 231
    :pswitch_4
    return v3

    #@27
    .line 233
    :pswitch_5
    const/4 v0, 0x2

    #@28
    return v0

    #@29
    .line 239
    :pswitch_6
    const/4 v0, 0x5

    #@2a
    return v0

    #@2b
    .line 218
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
