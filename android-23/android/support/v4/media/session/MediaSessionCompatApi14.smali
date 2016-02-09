.class public Landroid/support/v4/media/session/MediaSessionCompatApi14;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi14.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_FAST_FORWARD:J = 0x40L

.field private static final ACTION_PAUSE:J = 0x2L

.field private static final ACTION_PLAY:J = 0x4L

.field private static final ACTION_PLAY_PAUSE:J = 0x200L

.field private static final ACTION_REWIND:J = 0x8L

.field private static final ACTION_SKIP_TO_NEXT:J = 0x20L

.field private static final ACTION_SKIP_TO_PREVIOUS:J = 0x10L

.field private static final ACTION_STOP:J = 0x1L

.field private static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.media.metadata.ALBUM"

.field private static final METADATA_KEY_ALBUM_ART:Ljava/lang/String; = "android.media.metadata.ALBUM_ART"

.field private static final METADATA_KEY_ALBUM_ARTIST:Ljava/lang/String; = "android.media.metadata.ALBUM_ARTIST"

.field private static final METADATA_KEY_ART:Ljava/lang/String; = "android.media.metadata.ART"

.field private static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.media.metadata.ARTIST"

.field private static final METADATA_KEY_AUTHOR:Ljava/lang/String; = "android.media.metadata.AUTHOR"

.field private static final METADATA_KEY_COMPILATION:Ljava/lang/String; = "android.media.metadata.COMPILATION"

.field private static final METADATA_KEY_COMPOSER:Ljava/lang/String; = "android.media.metadata.COMPOSER"

.field private static final METADATA_KEY_DATE:Ljava/lang/String; = "android.media.metadata.DATE"

.field private static final METADATA_KEY_DISC_NUMBER:Ljava/lang/String; = "android.media.metadata.DISC_NUMBER"

.field private static final METADATA_KEY_DURATION:Ljava/lang/String; = "android.media.metadata.DURATION"

.field private static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.media.metadata.GENRE"

.field private static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.media.metadata.TITLE"

.field private static final METADATA_KEY_TRACK_NUMBER:Ljava/lang/String; = "android.media.metadata.TRACK_NUMBER"

.field private static final METADATA_KEY_WRITER:Ljava/lang/String; = "android.media.metadata.WRITER"

.field static final RCC_PLAYSTATE_NONE:I = 0x0

.field static final STATE_BUFFERING:I = 0x6

.field static final STATE_CONNECTING:I = 0x8

.field static final STATE_ERROR:I = 0x7

.field static final STATE_FAST_FORWARDING:I = 0x4

.field static final STATE_NONE:I = 0x0

.field static final STATE_PAUSED:I = 0x2

.field static final STATE_PLAYING:I = 0x3

.field static final STATE_REWINDING:I = 0x5

.field static final STATE_SKIPPING_TO_NEXT:I = 0xa

.field static final STATE_SKIPPING_TO_PREVIOUS:I = 0x9

.field static final STATE_SKIPPING_TO_QUEUE_ITEM:I = 0xb

.field static final STATE_STOPPED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static buildOldMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V
    .locals 4
    .param p0, "metadata"    # Landroid/os/Bundle;
    .param p1, "editor"    # Landroid/media/RemoteControlClient$MetadataEditor;

    #@0
    .prologue
    const/16 v2, 0x64

    #@2
    .line 162
    if-nez p0, :cond_0

    #@4
    .line 163
    return-void

    #@5
    .line 165
    :cond_0
    const-string/jumbo v1, "android.media.metadata.ART"

    #@8
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_f

    #@e
    .line 166
    const-string/jumbo v1, "android.media.metadata.ART"

    #@11
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/graphics/Bitmap;

    #@17
    .line 167
    .local v0, "art":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v2, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    #@1a
    .line 173
    .end local v0    # "art":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    const-string/jumbo v1, "android.media.metadata.ALBUM"

    #@1d
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 175
    const-string/jumbo v1, "android.media.metadata.ALBUM"

    #@26
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 174
    const/4 v2, 0x1

    #@2b
    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    #@2e
    .line 177
    :cond_2
    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    #@31
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_3

    #@37
    .line 179
    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    #@3a
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 178
    const/16 v2, 0xd

    #@40
    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    #@43
    .line 181
    :cond_3
    const-string/jumbo v1, "android.media.metadata.ARTIST"

    #@46
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@49
    move-result v1

    #@4a
    if-eqz v1, :cond_4

    #@4c
    .line 183
    const-string/jumbo v1, "android.media.metadata.ARTIST"

    #@4f
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    .line 182
    const/4 v2, 0x2

    #@54
    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    #@57
    .line 185
    :cond_4
    const-string/jumbo v1, "android.media.metadata.AUTHOR"

    #@5a
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@5d
    move-result v1

    #@5e
    if-eqz v1, :cond_5

    #@60
    .line 187
    const-string/jumbo v1, "android.media.metadata.AUTHOR"

    #@63
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    .line 186
    const/4 v2, 0x3

    #@68
    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    #@6b
    .line 189
    :cond_5
    const-string/jumbo v1, "android.media.metadata.COMPILATION"

    #@6e
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@71
    move-result v1

    #@72
    if-eqz v1, :cond_6

    #@74
    .line 191
    const-string/jumbo v1, "android.media.metadata.COMPILATION"

    #@77
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    .line 190
    const/16 v2, 0xf

    #@7d
    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    #@80
    .line 193
    :cond_6
    const-string/jumbo v1, "android.media.metadata.COMPOSER"

    #@83
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@86
    move-result v1

    #@87
    if-eqz v1, :cond_7

    #@89
    .line 195
    const-string/jumbo v1, "android.media.metadata.COMPOSER"

    #@8c
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@8f
    move-result-object v1

    #@90
    .line 194
    const/4 v2, 0x4

    #@91
    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    #@94
    .line 197
    :cond_7
    const-string/jumbo v1, "android.media.metadata.DATE"

    #@97
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@9a
    move-result v1

    #@9b
    if-eqz v1, :cond_8

    #@9d
    .line 199
    const-string/jumbo v1, "android.media.metadata.DATE"

    #@a0
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a3
    move-result-object v1

    #@a4
    .line 198
    const/4 v2, 0x5

    #@a5
    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    #@a8
    .line 201
    :cond_8
    const-string/jumbo v1, "android.media.metadata.DISC_NUMBER"

    #@ab
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@ae
    move-result v1

    #@af
    if-eqz v1, :cond_9

    #@b1
    .line 203
    const-string/jumbo v1, "android.media.metadata.DISC_NUMBER"

    #@b4
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@b7
    move-result-wide v2

    #@b8
    .line 202
    const/16 v1, 0xe

    #@ba
    invoke-virtual {p1, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    #@bd
    .line 205
    :cond_9
    const-string/jumbo v1, "android.media.metadata.DURATION"

    #@c0
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@c3
    move-result v1

    #@c4
    if-eqz v1, :cond_a

    #@c6
    .line 207
    const-string/jumbo v1, "android.media.metadata.DURATION"

    #@c9
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@cc
    move-result-wide v2

    #@cd
    .line 206
    const/16 v1, 0x9

    #@cf
    invoke-virtual {p1, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    #@d2
    .line 209
    :cond_a
    const-string/jumbo v1, "android.media.metadata.GENRE"

    #@d5
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@d8
    move-result v1

    #@d9
    if-eqz v1, :cond_b

    #@db
    .line 211
    const-string/jumbo v1, "android.media.metadata.GENRE"

    #@de
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e1
    move-result-object v1

    #@e2
    .line 210
    const/4 v2, 0x6

    #@e3
    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    #@e6
    .line 213
    :cond_b
    const-string/jumbo v1, "android.media.metadata.TITLE"

    #@e9
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@ec
    move-result v1

    #@ed
    if-eqz v1, :cond_c

    #@ef
    .line 215
    const-string/jumbo v1, "android.media.metadata.TITLE"

    #@f2
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@f5
    move-result-object v1

    #@f6
    .line 214
    const/4 v2, 0x7

    #@f7
    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    #@fa
    .line 217
    :cond_c
    const-string/jumbo v1, "android.media.metadata.TRACK_NUMBER"

    #@fd
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@100
    move-result v1

    #@101
    if-eqz v1, :cond_d

    #@103
    .line 219
    const-string/jumbo v1, "android.media.metadata.TRACK_NUMBER"

    #@106
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@109
    move-result-wide v2

    #@10a
    .line 218
    const/4 v1, 0x0

    #@10b
    invoke-virtual {p1, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    #@10e
    .line 221
    :cond_d
    const-string/jumbo v1, "android.media.metadata.WRITER"

    #@111
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@114
    move-result v1

    #@115
    if-eqz v1, :cond_e

    #@117
    .line 223
    const-string/jumbo v1, "android.media.metadata.WRITER"

    #@11a
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@11d
    move-result-object v1

    #@11e
    .line 222
    const/16 v2, 0xb

    #@120
    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    #@123
    .line 161
    :cond_e
    return-void

    #@124
    .line 168
    :cond_f
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    #@127
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@12a
    move-result v1

    #@12b
    if-eqz v1, :cond_1

    #@12d
    .line 170
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    #@130
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@133
    move-result-object v0

    #@134
    check-cast v0, Landroid/graphics/Bitmap;

    #@136
    .line 171
    .restart local v0    # "art":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v2, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    #@139
    goto/16 :goto_0
.end method

.method public static createRemoteControlClient(Landroid/app/PendingIntent;)Ljava/lang/Object;
    .locals 1
    .param p0, "mbIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 74
    new-instance v0, Landroid/media/RemoteControlClient;

    #@2
    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    #@5
    return-object v0
.end method

.method static getRccStateFromState(I)I
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 104
    packed-switch p0, :pswitch_data_0

    #@3
    .line 128
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 107
    :pswitch_0
    const/16 v0, 0x8

    #@7
    return v0

    #@8
    .line 109
    :pswitch_1
    const/16 v0, 0x9

    #@a
    return v0

    #@b
    .line 111
    :pswitch_2
    const/4 v0, 0x4

    #@c
    return v0

    #@d
    .line 113
    :pswitch_3
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 115
    :pswitch_4
    const/4 v0, 0x2

    #@10
    return v0

    #@11
    .line 117
    :pswitch_5
    const/4 v0, 0x3

    #@12
    return v0

    #@13
    .line 119
    :pswitch_6
    const/4 v0, 0x5

    #@14
    return v0

    #@15
    .line 121
    :pswitch_7
    const/4 v0, 0x7

    #@16
    return v0

    #@17
    .line 124
    :pswitch_8
    const/4 v0, 0x6

    #@18
    return v0

    #@19
    .line 126
    :pswitch_9
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 104
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method static getRccTransportControlFlagsFromActions(J)I
    .locals 6
    .param p0, "actions"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 133
    const/4 v0, 0x0

    #@3
    .line 134
    .local v0, "transportControlFlags":I
    const-wide/16 v2, 0x1

    #@5
    and-long/2addr v2, p0

    #@6
    cmp-long v1, v2, v4

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 135
    const/16 v0, 0x20

    #@c
    .line 137
    :cond_0
    const-wide/16 v2, 0x2

    #@e
    and-long/2addr v2, p0

    #@f
    cmp-long v1, v2, v4

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 138
    or-int/lit8 v0, v0, 0x10

    #@15
    .line 140
    :cond_1
    const-wide/16 v2, 0x4

    #@17
    and-long/2addr v2, p0

    #@18
    cmp-long v1, v2, v4

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 141
    or-int/lit8 v0, v0, 0x4

    #@1e
    .line 143
    :cond_2
    const-wide/16 v2, 0x8

    #@20
    and-long/2addr v2, p0

    #@21
    cmp-long v1, v2, v4

    #@23
    if-eqz v1, :cond_3

    #@25
    .line 144
    or-int/lit8 v0, v0, 0x2

    #@27
    .line 146
    :cond_3
    const-wide/16 v2, 0x10

    #@29
    and-long/2addr v2, p0

    #@2a
    cmp-long v1, v2, v4

    #@2c
    if-eqz v1, :cond_4

    #@2e
    .line 147
    or-int/lit8 v0, v0, 0x1

    #@30
    .line 149
    :cond_4
    const-wide/16 v2, 0x20

    #@32
    and-long/2addr v2, p0

    #@33
    cmp-long v1, v2, v4

    #@35
    if-eqz v1, :cond_5

    #@37
    .line 150
    or-int/lit16 v0, v0, 0x80

    #@39
    .line 152
    :cond_5
    const-wide/16 v2, 0x40

    #@3b
    and-long/2addr v2, p0

    #@3c
    cmp-long v1, v2, v4

    #@3e
    if-eqz v1, :cond_6

    #@40
    .line 153
    or-int/lit8 v0, v0, 0x40

    #@42
    .line 155
    :cond_6
    const-wide/16 v2, 0x200

    #@44
    and-long/2addr v2, p0

    #@45
    cmp-long v1, v2, v4

    #@47
    if-eqz v1, :cond_7

    #@49
    .line 156
    or-int/lit8 v0, v0, 0x8

    #@4b
    .line 158
    :cond_7
    return v0
.end method

.method public static registerRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rccObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 94
    const-string/jumbo v1, "audio"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/media/AudioManager;

    #@9
    .line 95
    .local v0, "am":Landroid/media/AudioManager;
    check-cast p1, Landroid/media/RemoteControlClient;

    #@b
    .end local p1    # "rccObj":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    #@e
    .line 93
    return-void
.end method

.method public static setMetadata(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "metadata"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 87
    check-cast p0, Landroid/media/RemoteControlClient;

    #@2
    .line 88
    .end local p0    # "rccObj":Ljava/lang/Object;
    const/4 v1, 0x1

    #@3
    .line 87
    invoke-virtual {p0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    #@6
    move-result-object v0

    #@7
    .line 89
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->buildOldMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    #@a
    .line 90
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    #@d
    .line 86
    return-void
.end method

.method public static setState(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "state"    # I

    #@0
    .prologue
    .line 78
    check-cast p0, Landroid/media/RemoteControlClient;

    #@2
    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccStateFromState(I)I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    #@9
    .line 77
    return-void
.end method

.method public static setTransportControlFlags(Ljava/lang/Object;J)V
    .locals 1
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "actions"    # J

    #@0
    .prologue
    .line 82
    check-cast p0, Landroid/media/RemoteControlClient;

    #@2
    .line 83
    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccTransportControlFlagsFromActions(J)I

    #@5
    move-result v0

    #@6
    .line 82
    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    #@9
    .line 81
    return-void
.end method

.method public static unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rccObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 99
    const-string/jumbo v1, "audio"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/media/AudioManager;

    #@9
    .line 100
    .local v0, "am":Landroid/media/AudioManager;
    check-cast p1, Landroid/media/RemoteControlClient;

    #@b
    .end local p1    # "rccObj":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    #@e
    .line 98
    return-void
.end method
