.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$FileEntry;,
        Landroid/media/MediaScanner$MediaBulkDeleter;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$PlaylistEntry;,
        Landroid/media/MediaScanner$WplHandler;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static mMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNoMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private final mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mFilesUri:Landroid/net/Uri;

.field private final mFilesUriNoNotify:Landroid/net/Uri;

.field private final mImagesUri:Landroid/net/Uri;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private final mMediaProvider:Landroid/content/ContentProviderClient;

.field private mMtpObjectHandle:I

.field private mNativeContext:J

.field private mOriginalCount:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaylistsUri:Landroid/net/Uri;

.field private final mProcessGenres:Z

.field private final mProcessPlaylists:Z

.field private final mThumbsUri:Landroid/net/Uri;

.field private final mVideoUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Landroid/media/MediaScanner;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    #@2
    return v0
.end method

.method static synthetic -get16(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get17(Landroid/media/MediaScanner;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    #@2
    return v0
.end method

.method static synthetic -get18(Landroid/media/MediaScanner;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    #@2
    return v0
.end method

.method static synthetic -get19(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/media/MediaScanner;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/media/MediaScanner;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/media/MediaScanner;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/media/MediaScanner;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/media/MediaScanner;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/media/MediaScanner;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/media/MediaScanner;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/MediaScanner;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/media/MediaScanner;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "base"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "client"    # Landroid/media/MediaScannerClient;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 117
    const-string/jumbo v0, "media_jni"

    #@8
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@b
    .line 118
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    #@e
    .line 123
    new-array v0, v6, [Ljava/lang/String;

    #@10
    .line 124
    const-string/jumbo v1, "_id"

    #@13
    aput-object v1, v0, v2

    #@15
    .line 125
    const-string/jumbo v1, "_data"

    #@18
    aput-object v1, v0, v3

    #@1a
    .line 126
    const-string/jumbo v1, "format"

    #@1d
    aput-object v1, v0, v4

    #@1f
    .line 127
    const-string/jumbo v1, "date_modified"

    #@22
    aput-object v1, v0, v5

    #@24
    .line 123
    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    #@26
    .line 130
    new-array v0, v3, [Ljava/lang/String;

    #@28
    .line 131
    const-string/jumbo v1, "_id"

    #@2b
    aput-object v1, v0, v2

    #@2d
    .line 130
    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    #@2f
    .line 139
    new-array v0, v3, [Ljava/lang/String;

    #@31
    .line 140
    const-string/jumbo v1, "playlist_id"

    #@34
    aput-object v1, v0, v2

    #@36
    .line 139
    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    #@38
    .line 153
    const/16 v0, 0x94

    #@3a
    new-array v0, v0, [Ljava/lang/String;

    #@3c
    .line 155
    const-string/jumbo v1, "Blues"

    #@3f
    aput-object v1, v0, v2

    #@41
    .line 156
    const-string/jumbo v1, "Classic Rock"

    #@44
    aput-object v1, v0, v3

    #@46
    .line 157
    const-string/jumbo v1, "Country"

    #@49
    aput-object v1, v0, v4

    #@4b
    .line 158
    const-string/jumbo v1, "Dance"

    #@4e
    aput-object v1, v0, v5

    #@50
    .line 159
    const-string/jumbo v1, "Disco"

    #@53
    aput-object v1, v0, v6

    #@55
    .line 160
    const-string/jumbo v1, "Funk"

    #@58
    const/4 v2, 0x5

    #@59
    aput-object v1, v0, v2

    #@5b
    .line 161
    const-string/jumbo v1, "Grunge"

    #@5e
    const/4 v2, 0x6

    #@5f
    aput-object v1, v0, v2

    #@61
    .line 162
    const-string/jumbo v1, "Hip-Hop"

    #@64
    const/4 v2, 0x7

    #@65
    aput-object v1, v0, v2

    #@67
    .line 163
    const-string/jumbo v1, "Jazz"

    #@6a
    const/16 v2, 0x8

    #@6c
    aput-object v1, v0, v2

    #@6e
    .line 164
    const-string/jumbo v1, "Metal"

    #@71
    const/16 v2, 0x9

    #@73
    aput-object v1, v0, v2

    #@75
    .line 165
    const-string/jumbo v1, "New Age"

    #@78
    const/16 v2, 0xa

    #@7a
    aput-object v1, v0, v2

    #@7c
    .line 166
    const-string/jumbo v1, "Oldies"

    #@7f
    const/16 v2, 0xb

    #@81
    aput-object v1, v0, v2

    #@83
    .line 167
    const-string/jumbo v1, "Other"

    #@86
    const/16 v2, 0xc

    #@88
    aput-object v1, v0, v2

    #@8a
    .line 168
    const-string/jumbo v1, "Pop"

    #@8d
    const/16 v2, 0xd

    #@8f
    aput-object v1, v0, v2

    #@91
    .line 169
    const-string/jumbo v1, "R&B"

    #@94
    const/16 v2, 0xe

    #@96
    aput-object v1, v0, v2

    #@98
    .line 170
    const-string/jumbo v1, "Rap"

    #@9b
    const/16 v2, 0xf

    #@9d
    aput-object v1, v0, v2

    #@9f
    .line 171
    const-string/jumbo v1, "Reggae"

    #@a2
    const/16 v2, 0x10

    #@a4
    aput-object v1, v0, v2

    #@a6
    .line 172
    const-string/jumbo v1, "Rock"

    #@a9
    const/16 v2, 0x11

    #@ab
    aput-object v1, v0, v2

    #@ad
    .line 173
    const-string/jumbo v1, "Techno"

    #@b0
    const/16 v2, 0x12

    #@b2
    aput-object v1, v0, v2

    #@b4
    .line 174
    const-string/jumbo v1, "Industrial"

    #@b7
    const/16 v2, 0x13

    #@b9
    aput-object v1, v0, v2

    #@bb
    .line 175
    const-string/jumbo v1, "Alternative"

    #@be
    const/16 v2, 0x14

    #@c0
    aput-object v1, v0, v2

    #@c2
    .line 176
    const-string/jumbo v1, "Ska"

    #@c5
    const/16 v2, 0x15

    #@c7
    aput-object v1, v0, v2

    #@c9
    .line 177
    const-string/jumbo v1, "Death Metal"

    #@cc
    const/16 v2, 0x16

    #@ce
    aput-object v1, v0, v2

    #@d0
    .line 178
    const-string/jumbo v1, "Pranks"

    #@d3
    const/16 v2, 0x17

    #@d5
    aput-object v1, v0, v2

    #@d7
    .line 179
    const-string/jumbo v1, "Soundtrack"

    #@da
    const/16 v2, 0x18

    #@dc
    aput-object v1, v0, v2

    #@de
    .line 180
    const-string/jumbo v1, "Euro-Techno"

    #@e1
    const/16 v2, 0x19

    #@e3
    aput-object v1, v0, v2

    #@e5
    .line 181
    const-string/jumbo v1, "Ambient"

    #@e8
    const/16 v2, 0x1a

    #@ea
    aput-object v1, v0, v2

    #@ec
    .line 182
    const-string/jumbo v1, "Trip-Hop"

    #@ef
    const/16 v2, 0x1b

    #@f1
    aput-object v1, v0, v2

    #@f3
    .line 183
    const-string/jumbo v1, "Vocal"

    #@f6
    const/16 v2, 0x1c

    #@f8
    aput-object v1, v0, v2

    #@fa
    .line 184
    const-string/jumbo v1, "Jazz+Funk"

    #@fd
    const/16 v2, 0x1d

    #@ff
    aput-object v1, v0, v2

    #@101
    .line 185
    const-string/jumbo v1, "Fusion"

    #@104
    const/16 v2, 0x1e

    #@106
    aput-object v1, v0, v2

    #@108
    .line 186
    const-string/jumbo v1, "Trance"

    #@10b
    const/16 v2, 0x1f

    #@10d
    aput-object v1, v0, v2

    #@10f
    .line 187
    const-string/jumbo v1, "Classical"

    #@112
    const/16 v2, 0x20

    #@114
    aput-object v1, v0, v2

    #@116
    .line 188
    const-string/jumbo v1, "Instrumental"

    #@119
    const/16 v2, 0x21

    #@11b
    aput-object v1, v0, v2

    #@11d
    .line 189
    const-string/jumbo v1, "Acid"

    #@120
    const/16 v2, 0x22

    #@122
    aput-object v1, v0, v2

    #@124
    .line 190
    const-string/jumbo v1, "House"

    #@127
    const/16 v2, 0x23

    #@129
    aput-object v1, v0, v2

    #@12b
    .line 191
    const-string/jumbo v1, "Game"

    #@12e
    const/16 v2, 0x24

    #@130
    aput-object v1, v0, v2

    #@132
    .line 192
    const-string/jumbo v1, "Sound Clip"

    #@135
    const/16 v2, 0x25

    #@137
    aput-object v1, v0, v2

    #@139
    .line 193
    const-string/jumbo v1, "Gospel"

    #@13c
    const/16 v2, 0x26

    #@13e
    aput-object v1, v0, v2

    #@140
    .line 194
    const-string/jumbo v1, "Noise"

    #@143
    const/16 v2, 0x27

    #@145
    aput-object v1, v0, v2

    #@147
    .line 195
    const-string/jumbo v1, "AlternRock"

    #@14a
    const/16 v2, 0x28

    #@14c
    aput-object v1, v0, v2

    #@14e
    .line 196
    const-string/jumbo v1, "Bass"

    #@151
    const/16 v2, 0x29

    #@153
    aput-object v1, v0, v2

    #@155
    .line 197
    const-string/jumbo v1, "Soul"

    #@158
    const/16 v2, 0x2a

    #@15a
    aput-object v1, v0, v2

    #@15c
    .line 198
    const-string/jumbo v1, "Punk"

    #@15f
    const/16 v2, 0x2b

    #@161
    aput-object v1, v0, v2

    #@163
    .line 199
    const-string/jumbo v1, "Space"

    #@166
    const/16 v2, 0x2c

    #@168
    aput-object v1, v0, v2

    #@16a
    .line 200
    const-string/jumbo v1, "Meditative"

    #@16d
    const/16 v2, 0x2d

    #@16f
    aput-object v1, v0, v2

    #@171
    .line 201
    const-string/jumbo v1, "Instrumental Pop"

    #@174
    const/16 v2, 0x2e

    #@176
    aput-object v1, v0, v2

    #@178
    .line 202
    const-string/jumbo v1, "Instrumental Rock"

    #@17b
    const/16 v2, 0x2f

    #@17d
    aput-object v1, v0, v2

    #@17f
    .line 203
    const-string/jumbo v1, "Ethnic"

    #@182
    const/16 v2, 0x30

    #@184
    aput-object v1, v0, v2

    #@186
    .line 204
    const-string/jumbo v1, "Gothic"

    #@189
    const/16 v2, 0x31

    #@18b
    aput-object v1, v0, v2

    #@18d
    .line 205
    const-string/jumbo v1, "Darkwave"

    #@190
    const/16 v2, 0x32

    #@192
    aput-object v1, v0, v2

    #@194
    .line 206
    const-string/jumbo v1, "Techno-Industrial"

    #@197
    const/16 v2, 0x33

    #@199
    aput-object v1, v0, v2

    #@19b
    .line 207
    const-string/jumbo v1, "Electronic"

    #@19e
    const/16 v2, 0x34

    #@1a0
    aput-object v1, v0, v2

    #@1a2
    .line 208
    const-string/jumbo v1, "Pop-Folk"

    #@1a5
    const/16 v2, 0x35

    #@1a7
    aput-object v1, v0, v2

    #@1a9
    .line 209
    const-string/jumbo v1, "Eurodance"

    #@1ac
    const/16 v2, 0x36

    #@1ae
    aput-object v1, v0, v2

    #@1b0
    .line 210
    const-string/jumbo v1, "Dream"

    #@1b3
    const/16 v2, 0x37

    #@1b5
    aput-object v1, v0, v2

    #@1b7
    .line 211
    const-string/jumbo v1, "Southern Rock"

    #@1ba
    const/16 v2, 0x38

    #@1bc
    aput-object v1, v0, v2

    #@1be
    .line 212
    const-string/jumbo v1, "Comedy"

    #@1c1
    const/16 v2, 0x39

    #@1c3
    aput-object v1, v0, v2

    #@1c5
    .line 213
    const-string/jumbo v1, "Cult"

    #@1c8
    const/16 v2, 0x3a

    #@1ca
    aput-object v1, v0, v2

    #@1cc
    .line 214
    const-string/jumbo v1, "Gangsta"

    #@1cf
    const/16 v2, 0x3b

    #@1d1
    aput-object v1, v0, v2

    #@1d3
    .line 215
    const-string/jumbo v1, "Top 40"

    #@1d6
    const/16 v2, 0x3c

    #@1d8
    aput-object v1, v0, v2

    #@1da
    .line 216
    const-string/jumbo v1, "Christian Rap"

    #@1dd
    const/16 v2, 0x3d

    #@1df
    aput-object v1, v0, v2

    #@1e1
    .line 217
    const-string/jumbo v1, "Pop/Funk"

    #@1e4
    const/16 v2, 0x3e

    #@1e6
    aput-object v1, v0, v2

    #@1e8
    .line 218
    const-string/jumbo v1, "Jungle"

    #@1eb
    const/16 v2, 0x3f

    #@1ed
    aput-object v1, v0, v2

    #@1ef
    .line 219
    const-string/jumbo v1, "Native American"

    #@1f2
    const/16 v2, 0x40

    #@1f4
    aput-object v1, v0, v2

    #@1f6
    .line 220
    const-string/jumbo v1, "Cabaret"

    #@1f9
    const/16 v2, 0x41

    #@1fb
    aput-object v1, v0, v2

    #@1fd
    .line 221
    const-string/jumbo v1, "New Wave"

    #@200
    const/16 v2, 0x42

    #@202
    aput-object v1, v0, v2

    #@204
    .line 222
    const-string/jumbo v1, "Psychadelic"

    #@207
    const/16 v2, 0x43

    #@209
    aput-object v1, v0, v2

    #@20b
    .line 223
    const-string/jumbo v1, "Rave"

    #@20e
    const/16 v2, 0x44

    #@210
    aput-object v1, v0, v2

    #@212
    .line 224
    const-string/jumbo v1, "Showtunes"

    #@215
    const/16 v2, 0x45

    #@217
    aput-object v1, v0, v2

    #@219
    .line 225
    const-string/jumbo v1, "Trailer"

    #@21c
    const/16 v2, 0x46

    #@21e
    aput-object v1, v0, v2

    #@220
    .line 226
    const-string/jumbo v1, "Lo-Fi"

    #@223
    const/16 v2, 0x47

    #@225
    aput-object v1, v0, v2

    #@227
    .line 227
    const-string/jumbo v1, "Tribal"

    #@22a
    const/16 v2, 0x48

    #@22c
    aput-object v1, v0, v2

    #@22e
    .line 228
    const-string/jumbo v1, "Acid Punk"

    #@231
    const/16 v2, 0x49

    #@233
    aput-object v1, v0, v2

    #@235
    .line 229
    const-string/jumbo v1, "Acid Jazz"

    #@238
    const/16 v2, 0x4a

    #@23a
    aput-object v1, v0, v2

    #@23c
    .line 230
    const-string/jumbo v1, "Polka"

    #@23f
    const/16 v2, 0x4b

    #@241
    aput-object v1, v0, v2

    #@243
    .line 231
    const-string/jumbo v1, "Retro"

    #@246
    const/16 v2, 0x4c

    #@248
    aput-object v1, v0, v2

    #@24a
    .line 232
    const-string/jumbo v1, "Musical"

    #@24d
    const/16 v2, 0x4d

    #@24f
    aput-object v1, v0, v2

    #@251
    .line 233
    const-string/jumbo v1, "Rock & Roll"

    #@254
    const/16 v2, 0x4e

    #@256
    aput-object v1, v0, v2

    #@258
    .line 234
    const-string/jumbo v1, "Hard Rock"

    #@25b
    const/16 v2, 0x4f

    #@25d
    aput-object v1, v0, v2

    #@25f
    .line 236
    const-string/jumbo v1, "Folk"

    #@262
    const/16 v2, 0x50

    #@264
    aput-object v1, v0, v2

    #@266
    .line 237
    const-string/jumbo v1, "Folk-Rock"

    #@269
    const/16 v2, 0x51

    #@26b
    aput-object v1, v0, v2

    #@26d
    .line 238
    const-string/jumbo v1, "National Folk"

    #@270
    const/16 v2, 0x52

    #@272
    aput-object v1, v0, v2

    #@274
    .line 239
    const-string/jumbo v1, "Swing"

    #@277
    const/16 v2, 0x53

    #@279
    aput-object v1, v0, v2

    #@27b
    .line 240
    const-string/jumbo v1, "Fast Fusion"

    #@27e
    const/16 v2, 0x54

    #@280
    aput-object v1, v0, v2

    #@282
    .line 241
    const-string/jumbo v1, "Bebob"

    #@285
    const/16 v2, 0x55

    #@287
    aput-object v1, v0, v2

    #@289
    .line 242
    const-string/jumbo v1, "Latin"

    #@28c
    const/16 v2, 0x56

    #@28e
    aput-object v1, v0, v2

    #@290
    .line 243
    const-string/jumbo v1, "Revival"

    #@293
    const/16 v2, 0x57

    #@295
    aput-object v1, v0, v2

    #@297
    .line 244
    const-string/jumbo v1, "Celtic"

    #@29a
    const/16 v2, 0x58

    #@29c
    aput-object v1, v0, v2

    #@29e
    .line 245
    const-string/jumbo v1, "Bluegrass"

    #@2a1
    const/16 v2, 0x59

    #@2a3
    aput-object v1, v0, v2

    #@2a5
    .line 246
    const-string/jumbo v1, "Avantgarde"

    #@2a8
    const/16 v2, 0x5a

    #@2aa
    aput-object v1, v0, v2

    #@2ac
    .line 247
    const-string/jumbo v1, "Gothic Rock"

    #@2af
    const/16 v2, 0x5b

    #@2b1
    aput-object v1, v0, v2

    #@2b3
    .line 248
    const-string/jumbo v1, "Progressive Rock"

    #@2b6
    const/16 v2, 0x5c

    #@2b8
    aput-object v1, v0, v2

    #@2ba
    .line 249
    const-string/jumbo v1, "Psychedelic Rock"

    #@2bd
    const/16 v2, 0x5d

    #@2bf
    aput-object v1, v0, v2

    #@2c1
    .line 250
    const-string/jumbo v1, "Symphonic Rock"

    #@2c4
    const/16 v2, 0x5e

    #@2c6
    aput-object v1, v0, v2

    #@2c8
    .line 251
    const-string/jumbo v1, "Slow Rock"

    #@2cb
    const/16 v2, 0x5f

    #@2cd
    aput-object v1, v0, v2

    #@2cf
    .line 252
    const-string/jumbo v1, "Big Band"

    #@2d2
    const/16 v2, 0x60

    #@2d4
    aput-object v1, v0, v2

    #@2d6
    .line 253
    const-string/jumbo v1, "Chorus"

    #@2d9
    const/16 v2, 0x61

    #@2db
    aput-object v1, v0, v2

    #@2dd
    .line 254
    const-string/jumbo v1, "Easy Listening"

    #@2e0
    const/16 v2, 0x62

    #@2e2
    aput-object v1, v0, v2

    #@2e4
    .line 255
    const-string/jumbo v1, "Acoustic"

    #@2e7
    const/16 v2, 0x63

    #@2e9
    aput-object v1, v0, v2

    #@2eb
    .line 256
    const-string/jumbo v1, "Humour"

    #@2ee
    const/16 v2, 0x64

    #@2f0
    aput-object v1, v0, v2

    #@2f2
    .line 257
    const-string/jumbo v1, "Speech"

    #@2f5
    const/16 v2, 0x65

    #@2f7
    aput-object v1, v0, v2

    #@2f9
    .line 258
    const-string/jumbo v1, "Chanson"

    #@2fc
    const/16 v2, 0x66

    #@2fe
    aput-object v1, v0, v2

    #@300
    .line 259
    const-string/jumbo v1, "Opera"

    #@303
    const/16 v2, 0x67

    #@305
    aput-object v1, v0, v2

    #@307
    .line 260
    const-string/jumbo v1, "Chamber Music"

    #@30a
    const/16 v2, 0x68

    #@30c
    aput-object v1, v0, v2

    #@30e
    .line 261
    const-string/jumbo v1, "Sonata"

    #@311
    const/16 v2, 0x69

    #@313
    aput-object v1, v0, v2

    #@315
    .line 262
    const-string/jumbo v1, "Symphony"

    #@318
    const/16 v2, 0x6a

    #@31a
    aput-object v1, v0, v2

    #@31c
    .line 263
    const-string/jumbo v1, "Booty Bass"

    #@31f
    const/16 v2, 0x6b

    #@321
    aput-object v1, v0, v2

    #@323
    .line 264
    const-string/jumbo v1, "Primus"

    #@326
    const/16 v2, 0x6c

    #@328
    aput-object v1, v0, v2

    #@32a
    .line 265
    const-string/jumbo v1, "Porn Groove"

    #@32d
    const/16 v2, 0x6d

    #@32f
    aput-object v1, v0, v2

    #@331
    .line 266
    const-string/jumbo v1, "Satire"

    #@334
    const/16 v2, 0x6e

    #@336
    aput-object v1, v0, v2

    #@338
    .line 267
    const-string/jumbo v1, "Slow Jam"

    #@33b
    const/16 v2, 0x6f

    #@33d
    aput-object v1, v0, v2

    #@33f
    .line 268
    const-string/jumbo v1, "Club"

    #@342
    const/16 v2, 0x70

    #@344
    aput-object v1, v0, v2

    #@346
    .line 269
    const-string/jumbo v1, "Tango"

    #@349
    const/16 v2, 0x71

    #@34b
    aput-object v1, v0, v2

    #@34d
    .line 270
    const-string/jumbo v1, "Samba"

    #@350
    const/16 v2, 0x72

    #@352
    aput-object v1, v0, v2

    #@354
    .line 271
    const-string/jumbo v1, "Folklore"

    #@357
    const/16 v2, 0x73

    #@359
    aput-object v1, v0, v2

    #@35b
    .line 272
    const-string/jumbo v1, "Ballad"

    #@35e
    const/16 v2, 0x74

    #@360
    aput-object v1, v0, v2

    #@362
    .line 273
    const-string/jumbo v1, "Power Ballad"

    #@365
    const/16 v2, 0x75

    #@367
    aput-object v1, v0, v2

    #@369
    .line 274
    const-string/jumbo v1, "Rhythmic Soul"

    #@36c
    const/16 v2, 0x76

    #@36e
    aput-object v1, v0, v2

    #@370
    .line 275
    const-string/jumbo v1, "Freestyle"

    #@373
    const/16 v2, 0x77

    #@375
    aput-object v1, v0, v2

    #@377
    .line 276
    const-string/jumbo v1, "Duet"

    #@37a
    const/16 v2, 0x78

    #@37c
    aput-object v1, v0, v2

    #@37e
    .line 277
    const-string/jumbo v1, "Punk Rock"

    #@381
    const/16 v2, 0x79

    #@383
    aput-object v1, v0, v2

    #@385
    .line 278
    const-string/jumbo v1, "Drum Solo"

    #@388
    const/16 v2, 0x7a

    #@38a
    aput-object v1, v0, v2

    #@38c
    .line 279
    const-string/jumbo v1, "A capella"

    #@38f
    const/16 v2, 0x7b

    #@391
    aput-object v1, v0, v2

    #@393
    .line 280
    const-string/jumbo v1, "Euro-House"

    #@396
    const/16 v2, 0x7c

    #@398
    aput-object v1, v0, v2

    #@39a
    .line 281
    const-string/jumbo v1, "Dance Hall"

    #@39d
    const/16 v2, 0x7d

    #@39f
    aput-object v1, v0, v2

    #@3a1
    .line 283
    const-string/jumbo v1, "Goa"

    #@3a4
    const/16 v2, 0x7e

    #@3a6
    aput-object v1, v0, v2

    #@3a8
    .line 284
    const-string/jumbo v1, "Drum & Bass"

    #@3ab
    const/16 v2, 0x7f

    #@3ad
    aput-object v1, v0, v2

    #@3af
    .line 285
    const-string/jumbo v1, "Club-House"

    #@3b2
    const/16 v2, 0x80

    #@3b4
    aput-object v1, v0, v2

    #@3b6
    .line 286
    const-string/jumbo v1, "Hardcore"

    #@3b9
    const/16 v2, 0x81

    #@3bb
    aput-object v1, v0, v2

    #@3bd
    .line 287
    const-string/jumbo v1, "Terror"

    #@3c0
    const/16 v2, 0x82

    #@3c2
    aput-object v1, v0, v2

    #@3c4
    .line 288
    const-string/jumbo v1, "Indie"

    #@3c7
    const/16 v2, 0x83

    #@3c9
    aput-object v1, v0, v2

    #@3cb
    .line 289
    const-string/jumbo v1, "Britpop"

    #@3ce
    const/16 v2, 0x84

    #@3d0
    aput-object v1, v0, v2

    #@3d2
    .line 290
    const/4 v1, 0x0

    #@3d3
    const/16 v2, 0x85

    #@3d5
    aput-object v1, v0, v2

    #@3d7
    .line 291
    const-string/jumbo v1, "Polsk Punk"

    #@3da
    const/16 v2, 0x86

    #@3dc
    aput-object v1, v0, v2

    #@3de
    .line 292
    const-string/jumbo v1, "Beat"

    #@3e1
    const/16 v2, 0x87

    #@3e3
    aput-object v1, v0, v2

    #@3e5
    .line 293
    const-string/jumbo v1, "Christian Gangsta"

    #@3e8
    const/16 v2, 0x88

    #@3ea
    aput-object v1, v0, v2

    #@3ec
    .line 294
    const-string/jumbo v1, "Heavy Metal"

    #@3ef
    const/16 v2, 0x89

    #@3f1
    aput-object v1, v0, v2

    #@3f3
    .line 295
    const-string/jumbo v1, "Black Metal"

    #@3f6
    const/16 v2, 0x8a

    #@3f8
    aput-object v1, v0, v2

    #@3fa
    .line 296
    const-string/jumbo v1, "Crossover"

    #@3fd
    const/16 v2, 0x8b

    #@3ff
    aput-object v1, v0, v2

    #@401
    .line 297
    const-string/jumbo v1, "Contemporary Christian"

    #@404
    const/16 v2, 0x8c

    #@406
    aput-object v1, v0, v2

    #@408
    .line 298
    const-string/jumbo v1, "Christian Rock"

    #@40b
    const/16 v2, 0x8d

    #@40d
    aput-object v1, v0, v2

    #@40f
    .line 299
    const-string/jumbo v1, "Merengue"

    #@412
    const/16 v2, 0x8e

    #@414
    aput-object v1, v0, v2

    #@416
    .line 300
    const-string/jumbo v1, "Salsa"

    #@419
    const/16 v2, 0x8f

    #@41b
    aput-object v1, v0, v2

    #@41d
    .line 301
    const-string/jumbo v1, "Thrash Metal"

    #@420
    const/16 v2, 0x90

    #@422
    aput-object v1, v0, v2

    #@424
    .line 302
    const-string/jumbo v1, "Anime"

    #@427
    const/16 v2, 0x91

    #@429
    aput-object v1, v0, v2

    #@42b
    .line 303
    const-string/jumbo v1, "JPop"

    #@42e
    const/16 v2, 0x92

    #@430
    aput-object v1, v0, v2

    #@432
    .line 304
    const-string/jumbo v1, "Synthpop"

    #@435
    const/16 v2, 0x93

    #@437
    aput-object v1, v0, v2

    #@439
    .line 153
    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    #@43b
    .line 1447
    new-instance v0, Ljava/util/HashMap;

    #@43d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@440
    sput-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    #@442
    .line 1448
    new-instance v0, Ljava/util/HashMap;

    #@444
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@447
    sput-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    #@449
    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "volumeName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 324
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@b
    iput-object v3, p0, Landroid/media/MediaScanner;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    .line 325
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@10
    move-result-object v3

    #@11
    iput-object v3, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@13
    .line 352
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    #@15
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@18
    iput-object v3, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    #@1a
    .line 381
    new-instance v3, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@1f
    iput-object v3, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@21
    .line 382
    new-instance v3, Ljava/util/ArrayList;

    #@23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@26
    iput-object v3, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    #@28
    .line 386
    iput-object v6, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    #@2a
    .line 445
    new-instance v3, Landroid/media/MediaScanner$MyMediaScannerClient;

    #@2c
    invoke-direct {v3, p0, v6}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$MyMediaScannerClient;)V

    #@2f
    iput-object v3, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    #@31
    .line 389
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    #@34
    .line 390
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    #@36
    .line 391
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    iput-object v3, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@3c
    .line 392
    iput-object p2, p0, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    #@3e
    .line 394
    iget-object v3, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    #@40
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@42
    .line 395
    iget-object v3, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    #@44
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@46
    .line 397
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    #@49
    .line 399
    iget-object v3, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    #@4b
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4e
    move-result-object v3

    #@4f
    .line 400
    const-string/jumbo v4, "media"

    #@52
    .line 399
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    #@55
    move-result-object v3

    #@56
    iput-object v3, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@58
    .line 402
    invoke-static {p2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@5b
    move-result-object v3

    #@5c
    iput-object v3, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    #@5e
    .line 403
    invoke-static {p2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@61
    move-result-object v3

    #@62
    iput-object v3, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    #@64
    .line 404
    invoke-static {p2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@67
    move-result-object v3

    #@68
    iput-object v3, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    #@6a
    .line 405
    invoke-static {p2}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@6d
    move-result-object v3

    #@6e
    iput-object v3, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    #@70
    .line 406
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@73
    move-result-object v3

    #@74
    iput-object v3, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    #@76
    .line 407
    iget-object v3, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    #@78
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@7b
    move-result-object v3

    #@7c
    const-string/jumbo v4, "nonotify"

    #@7f
    const-string/jumbo v5, "1"

    #@82
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@89
    move-result-object v3

    #@8a
    iput-object v3, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    #@8c
    .line 409
    const-string/jumbo v3, "internal"

    #@8f
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v3

    #@93
    if-nez v3, :cond_1

    #@95
    .line 411
    iput-boolean v7, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    #@97
    .line 412
    iput-boolean v7, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    #@99
    .line 413
    invoke-static {p2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@9c
    move-result-object v3

    #@9d
    iput-object v3, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    #@9f
    .line 420
    :goto_0
    iget-object v3, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    #@a1
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a4
    move-result-object v3

    #@a5
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@a8
    move-result-object v3

    #@a9
    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@ab
    .line 421
    .local v2, "locale":Ljava/util/Locale;
    if-eqz v2, :cond_0

    #@ad
    .line 422
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@b0
    move-result-object v1

    #@b1
    .line 423
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@b4
    move-result-object v0

    #@b5
    .line 424
    .local v0, "country":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@b7
    .line 425
    if-eqz v0, :cond_2

    #@b9
    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v3

    #@c2
    const-string/jumbo v4, "_"

    #@c5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v3

    #@c9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v3

    #@cd
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v3

    #@d1
    invoke-direct {p0, v3}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    #@d4
    .line 433
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "language":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@d6
    const-string/jumbo v4, "close"

    #@d9
    invoke-virtual {v3, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@dc
    .line 388
    return-void

    #@dd
    .line 415
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_1
    iput-boolean v8, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    #@df
    .line 416
    iput-boolean v8, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    #@e1
    .line 417
    iput-object v6, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    #@e3
    goto :goto_0

    #@e4
    .line 428
    .restart local v0    # "country":Ljava/lang/String;
    .restart local v1    # "language":Ljava/lang/String;
    .restart local v2    # "locale":Ljava/util/Locale;
    :cond_2
    invoke-direct {p0, v1}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    #@e7
    goto :goto_1
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1638
    new-instance v1, Landroid/media/MediaScanner$PlaylistEntry;

    #@4
    const/4 v6, 0x0

    #@5
    invoke-direct {v1, v6}, Landroid/media/MediaScanner$PlaylistEntry;-><init>(Landroid/media/MediaScanner$PlaylistEntry;)V

    #@8
    .line 1640
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    .line 1641
    .local v2, "entryLength":I
    :goto_0
    if-lez v2, :cond_0

    #@e
    add-int/lit8 v6, v2, -0x1

    #@10
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v6

    #@14
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_0

    #@1a
    add-int/lit8 v2, v2, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1644
    :cond_0
    const/4 v6, 0x3

    #@1e
    if-ge v2, v6, :cond_1

    #@20
    return-void

    #@21
    .line 1645
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@24
    move-result v6

    #@25
    if-ge v2, v6, :cond_2

    #@27
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2a
    move-result-object p1

    #@2b
    .line 1649
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v0

    #@2f
    .line 1650
    .local v0, "ch1":C
    const/16 v6, 0x2f

    #@31
    if-eq v0, v6, :cond_4

    #@33
    .line 1651
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    #@36
    move-result v6

    #@37
    if-eqz v6, :cond_6

    #@39
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@3c
    move-result v6

    #@3d
    const/16 v7, 0x3a

    #@3f
    if-ne v6, v7, :cond_6

    #@41
    const/4 v6, 0x2

    #@42
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@45
    move-result v6

    #@46
    const/16 v7, 0x5c

    #@48
    if-ne v6, v7, :cond_5

    #@4a
    :goto_1
    move v3, v4

    #@4b
    .line 1653
    .local v3, "fullPath":Z
    :goto_2
    if-nez v3, :cond_3

    #@4d
    .line 1654
    new-instance v4, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object p1

    #@5e
    .line 1655
    :cond_3
    iput-object p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    #@60
    .line 1658
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@62
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@65
    .line 1637
    return-void

    #@66
    .end local v3    # "fullPath":Z
    :cond_4
    move v3, v4

    #@67
    .line 1650
    goto :goto_2

    #@68
    :cond_5
    move v4, v5

    #@69
    .line 1651
    goto :goto_1

    #@6a
    :cond_6
    move v3, v5

    #@6b
    goto :goto_2
.end method

.method public static clearMediaPathCache(ZZ)V
    .locals 2
    .param p0, "clearMediaPaths"    # Z
    .param p1, "clearNoMediaPaths"    # Z

    #@0
    .prologue
    .line 1452
    const-class v1, Landroid/media/MediaScanner;

    #@2
    monitor-enter v1

    #@3
    .line 1453
    if-eqz p0, :cond_0

    #@5
    .line 1454
    :try_start_0
    sget-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    #@7
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@a
    .line 1456
    :cond_0
    if-eqz p1, :cond_1

    #@c
    .line 1457
    sget-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    #@e
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_1
    monitor-exit v1

    #@12
    .line 1451
    return-void

    #@13
    .line 1452
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "directories"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1231
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    array-length v2, p2

    #@2
    if-ge v1, v2, :cond_1

    #@4
    .line 1232
    aget-object v0, p2, v1

    #@6
    .line 1233
    .local v0, "directory":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1234
    const/4 v2, 0x1

    #@d
    return v2

    #@e
    .line 1231
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1237
    .end local v0    # "directory":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@12
    return v2
.end method

.method private isDrmEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 448
    const-string/jumbo v1, "drm.service.enabled"

    #@3
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 449
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    const-string/jumbo v1, "true"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v9, 0xa

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 1414
    new-instance v6, Ljava/io/File;

    #@6
    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    .line 1415
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    return v4

    #@10
    .line 1420
    :cond_0
    const/16 v0, 0x2f

    #@12
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    #@15
    move-result v7

    #@16
    .line 1421
    .local v7, "lastSlash":I
    if-ltz v7, :cond_6

    #@18
    add-int/lit8 v0, v7, 0x2

    #@1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1d
    move-result v2

    #@1e
    if-ge v0, v2, :cond_6

    #@20
    .line 1423
    add-int/lit8 v0, v7, 0x1

    #@22
    const-string/jumbo v2, "._"

    #@25
    const/4 v3, 0x2

    #@26
    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 1424
    return v1

    #@2d
    .line 1430
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@30
    move-result v0

    #@31
    add-int/lit8 v2, v0, -0x4

    #@33
    const-string/jumbo v3, ".jpg"

    #@36
    const/4 v5, 0x4

    #@37
    move-object v0, p0

    #@38
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_6

    #@3e
    .line 1431
    add-int/lit8 v2, v7, 0x1

    #@40
    const-string/jumbo v3, "AlbumArt_{"

    #@43
    move-object v0, p0

    #@44
    move v5, v9

    #@45
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@48
    move-result v0

    #@49
    if-nez v0, :cond_2

    #@4b
    .line 1432
    add-int/lit8 v2, v7, 0x1

    #@4d
    const-string/jumbo v3, "AlbumArt."

    #@50
    const/16 v5, 0x9

    #@52
    move-object v0, p0

    #@53
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@56
    move-result v0

    #@57
    .line 1431
    if-eqz v0, :cond_3

    #@59
    .line 1433
    :cond_2
    return v1

    #@5a
    .line 1435
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5d
    move-result v0

    #@5e
    sub-int/2addr v0, v7

    #@5f
    add-int/lit8 v8, v0, -0x1

    #@61
    .line 1436
    .local v8, "length":I
    const/16 v0, 0x11

    #@63
    if-ne v8, v0, :cond_4

    #@65
    .line 1437
    add-int/lit8 v2, v7, 0x1

    #@67
    const-string/jumbo v3, "AlbumArtSmall"

    #@6a
    const/16 v5, 0xd

    #@6c
    move-object v0, p0

    #@6d
    .line 1436
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@70
    move-result v0

    #@71
    if-nez v0, :cond_5

    #@73
    .line 1438
    :cond_4
    if-ne v8, v9, :cond_6

    #@75
    .line 1439
    add-int/lit8 v2, v7, 0x1

    #@77
    const-string/jumbo v3, "Folder"

    #@7a
    const/4 v5, 0x6

    #@7b
    move-object v0, p0

    #@7c
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@7f
    move-result v0

    #@80
    .line 1436
    if-eqz v0, :cond_6

    #@82
    .line 1440
    :cond_5
    return v1

    #@83
    .line 1444
    .end local v8    # "length":I
    :cond_6
    return v4
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v7, 0x2f

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 1463
    if-nez p0, :cond_0

    #@6
    .line 1464
    return v6

    #@7
    .line 1467
    :cond_0
    const-string/jumbo v5, "/."

    #@a
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@d
    move-result v5

    #@e
    if-ltz v5, :cond_1

    #@10
    .line 1468
    return v8

    #@11
    .line 1471
    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    #@14
    move-result v1

    #@15
    .line 1472
    .local v1, "firstSlash":I
    if-gtz v1, :cond_2

    #@17
    .line 1473
    return v6

    #@18
    .line 1475
    :cond_2
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 1477
    .local v3, "parent":Ljava/lang/String;
    const-class v6, Landroid/media/MediaScanner;

    #@1e
    monitor-enter v6

    #@1f
    .line 1478
    :try_start_0
    sget-object v5, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    #@21
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_3

    #@27
    monitor-exit v6

    #@28
    .line 1479
    return v8

    #@29
    .line 1480
    :cond_3
    :try_start_1
    sget-object v5, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    #@2b
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@2e
    move-result v5

    #@2f
    if-nez v5, :cond_6

    #@31
    .line 1483
    const/4 v2, 0x1

    #@32
    .line 1484
    .local v2, "offset":I
    :goto_0
    if-ltz v2, :cond_5

    #@34
    .line 1485
    const/16 v5, 0x2f

    #@36
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    #@39
    move-result v4

    #@3a
    .line 1486
    .local v4, "slashIndex":I
    if-le v4, v2, :cond_4

    #@3c
    .line 1487
    add-int/lit8 v4, v4, 0x1

    #@3e
    .line 1488
    new-instance v0, Ljava/io/File;

    #@40
    new-instance v5, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const/4 v7, 0x0

    #@46
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    const-string/jumbo v7, ".nomedia"

    #@51
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5c
    .line 1489
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@5f
    move-result v5

    #@60
    if-eqz v5, :cond_4

    #@62
    .line 1491
    sget-object v5, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    #@64
    const-string/jumbo v7, ""

    #@67
    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    monitor-exit v6

    #@6b
    .line 1492
    return v8

    #@6c
    .line 1495
    .end local v0    # "file":Ljava/io/File;
    :cond_4
    move v2, v4

    #@6d
    goto :goto_0

    #@6e
    .line 1497
    .end local v4    # "slashIndex":I
    :cond_5
    :try_start_2
    sget-object v5, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    #@70
    const-string/jumbo v7, ""

    #@73
    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@76
    .end local v2    # "offset":I
    :cond_6
    monitor-exit v6

    #@77
    .line 1501
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    #@7a
    move-result v5

    #@7b
    return v5

    #@7c
    .line 1477
    :catchall_0
    move-exception v5

    #@7d
    monitor-exit v6

    #@7e
    throw v5
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .locals 7
    .param p1, "rowId"    # J
    .param p3, "data"    # Ljava/lang/String;

    #@0
    .prologue
    const v6, 0x7fffffff

    #@3
    .line 1614
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v3

    #@9
    .line 1615
    .local v3, "len":I
    const/4 v0, 0x1

    #@a
    .line 1616
    .local v0, "done":Z
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    #@d
    .line 1617
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/media/MediaScanner$PlaylistEntry;

    #@15
    .line 1618
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    #@17
    if-ne v5, v6, :cond_1

    #@19
    .line 1616
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1621
    :cond_1
    const/4 v0, 0x0

    #@1d
    .line 1622
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    #@1f
    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_2

    #@25
    .line 1623
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    #@27
    .line 1624
    iput v6, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    #@29
    goto :goto_1

    #@2a
    .line 1628
    :cond_2
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    #@2c
    invoke-direct {p0, p3, v5}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    move-result v4

    #@30
    .line 1629
    .local v4, "matchLength":I
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    #@32
    if-le v4, v5, :cond_0

    #@34
    .line 1630
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    #@36
    .line 1631
    iput v4, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    #@38
    goto :goto_1

    #@39
    .line 1634
    .end local v1    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    .end local v4    # "matchLength":I
    :cond_3
    return v0
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "path1"    # Ljava/lang/String;
    .param p2, "path2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1587
    const/4 v10, 0x0

    #@1
    .line 1588
    .local v10, "result":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v8

    #@5
    .line 1589
    .local v8, "end1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@8
    move-result v9

    #@9
    .line 1591
    .local v9, "end2":I
    :goto_0
    if-lez v8, :cond_0

    #@b
    if-lez v9, :cond_0

    #@d
    .line 1592
    const/16 v0, 0x2f

    #@f
    add-int/lit8 v1, v8, -0x1

    #@11
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    #@14
    move-result v11

    #@15
    .line 1593
    .local v11, "slash1":I
    const/16 v0, 0x2f

    #@17
    add-int/lit8 v1, v9, -0x1

    #@19
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    #@1c
    move-result v12

    #@1d
    .line 1594
    .local v12, "slash2":I
    const/16 v0, 0x5c

    #@1f
    add-int/lit8 v1, v8, -0x1

    #@21
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    #@24
    move-result v6

    #@25
    .line 1595
    .local v6, "backSlash1":I
    const/16 v0, 0x5c

    #@27
    add-int/lit8 v1, v9, -0x1

    #@29
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    #@2c
    move-result v7

    #@2d
    .line 1596
    .local v7, "backSlash2":I
    if-le v11, v6, :cond_1

    #@2f
    move v2, v11

    #@30
    .line 1597
    .local v2, "start1":I
    :goto_1
    if-le v12, v7, :cond_2

    #@32
    move v4, v12

    #@33
    .line 1598
    .local v4, "start2":I
    :goto_2
    if-gez v2, :cond_3

    #@35
    const/4 v2, 0x0

    #@36
    .line 1599
    :goto_3
    if-gez v4, :cond_4

    #@38
    const/4 v4, 0x0

    #@39
    .line 1600
    :goto_4
    sub-int v5, v8, v2

    #@3b
    .line 1601
    .local v5, "length":I
    sub-int v0, v9, v4

    #@3d
    if-eq v0, v5, :cond_5

    #@3f
    .line 1609
    .end local v2    # "start1":I
    .end local v4    # "start2":I
    .end local v5    # "length":I
    .end local v6    # "backSlash1":I
    .end local v7    # "backSlash2":I
    .end local v11    # "slash1":I
    .end local v12    # "slash2":I
    :cond_0
    return v10

    #@40
    .line 1596
    .restart local v6    # "backSlash1":I
    .restart local v7    # "backSlash2":I
    .restart local v11    # "slash1":I
    .restart local v12    # "slash2":I
    :cond_1
    move v2, v6

    #@41
    .restart local v2    # "start1":I
    goto :goto_1

    #@42
    .line 1597
    :cond_2
    move v4, v7

    #@43
    .restart local v4    # "start2":I
    goto :goto_2

    #@44
    .line 1598
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_3

    #@47
    .line 1599
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@49
    goto :goto_4

    #@4a
    .line 1602
    .restart local v5    # "length":I
    :cond_5
    const/4 v1, 0x1

    #@4b
    move-object v0, p1

    #@4c
    move-object v3, p2

    #@4d
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_0

    #@53
    .line 1603
    add-int/lit8 v10, v10, 0x1

    #@55
    .line 1604
    add-int/lit8 v8, v2, -0x1

    #@57
    .line 1605
    add-int/lit8 v9, v4, -0x1

    #@59
    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 2
    .param p1, "directories"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1326
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1327
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    #@7
    .line 1330
    :cond_0
    iget v0, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    #@9
    if-nez v0, :cond_1

    #@b
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    #@d
    const-string/jumbo v1, "external"

    #@10
    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1331
    invoke-direct {p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    #@1d
    .line 1334
    :cond_1
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@22
    .line 1323
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .locals 34
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prescanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1121
    const/16 v17, 0x0

    #@2
    .line 1122
    .local v17, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    #@3
    .line 1123
    .local v7, "where":Ljava/lang/String;
    const/4 v8, 0x0

    #@4
    .line 1125
    .local v8, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@6
    iget-object v4, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@b
    .line 1127
    if-eqz p1, :cond_5

    #@d
    .line 1129
    const-string/jumbo v7, "_id>? AND _data=?"

    #@10
    .line 1131
    .local v7, "where":Ljava/lang/String;
    const/4 v4, 0x2

    #@11
    new-array v8, v4, [Ljava/lang/String;

    #@13
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, ""

    #@16
    const/4 v6, 0x0

    #@17
    aput-object v4, v8, v6

    #@19
    const/4 v4, 0x1

    #@1a
    aput-object p1, v8, v4

    #@1c
    .line 1137
    .local v8, "selectionArgs":[Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "ringtone"

    #@1f
    move-object/from16 v0, p0

    #@21
    invoke-direct {v0, v4}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    #@24
    move-result v4

    #@25
    move-object/from16 v0, p0

    #@27
    iput-boolean v4, v0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    #@29
    .line 1138
    const-string/jumbo v4, "notification_sound"

    #@2c
    move-object/from16 v0, p0

    #@2e
    invoke-direct {v0, v4}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    #@31
    move-result v4

    #@32
    move-object/from16 v0, p0

    #@34
    iput-boolean v4, v0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    #@36
    .line 1139
    const-string/jumbo v4, "alarm_alert"

    #@39
    move-object/from16 v0, p0

    #@3b
    invoke-direct {v0, v4}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    #@3e
    move-result v4

    #@3f
    move-object/from16 v0, p0

    #@41
    iput-boolean v4, v0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    #@43
    .line 1145
    move-object/from16 v0, p0

    #@45
    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    #@47
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@4a
    move-result-object v16

    #@4b
    .line 1146
    .local v16, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v4, "deletedata"

    #@4e
    const-string/jumbo v6, "false"

    #@51
    move-object/from16 v0, v16

    #@53
    invoke-virtual {v0, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@56
    .line 1147
    new-instance v18, Landroid/media/MediaScanner$MediaBulkDeleter;

    #@58
    move-object/from16 v0, p0

    #@5a
    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@5c
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@5f
    move-result-object v6

    #@60
    move-object/from16 v0, v18

    #@62
    invoke-direct {v0, v4, v6}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V

    #@65
    .line 1151
    .local v18, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    if-eqz p2, :cond_2

    #@67
    .line 1156
    const-wide/high16 v24, -0x8000000000000000L

    #@69
    .line 1157
    .local v24, "lastId":J
    :try_start_0
    move-object/from16 v0, p0

    #@6b
    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    #@6d
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@70
    move-result-object v4

    #@71
    const-string/jumbo v6, "limit"

    #@74
    const-string/jumbo v9, "1000"

    #@77
    invoke-virtual {v4, v6, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@7e
    move-result-object v5

    #@7f
    .line 1160
    .end local v17    # "c":Landroid/database/Cursor;
    .local v5, "limitUri":Landroid/net/Uri;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v6, ""

    #@87
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    move-wide/from16 v0, v24

    #@8d
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v4

    #@95
    const/4 v6, 0x0

    #@96
    aput-object v4, v8, v6

    #@98
    .line 1161
    if-eqz v17, :cond_1

    #@9a
    .line 1162
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@9d
    .line 1163
    const/16 v17, 0x0

    #@9f
    .line 1165
    :cond_1
    move-object/from16 v0, p0

    #@a1
    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@a3
    sget-object v6, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    #@a5
    .line 1166
    const-string/jumbo v9, "_id"

    #@a8
    const/4 v10, 0x0

    #@a9
    .line 1165
    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ac
    move-result-object v17

    #@ad
    .line 1167
    .local v17, "c":Landroid/database/Cursor;
    if-nez v17, :cond_6

    #@af
    .line 1215
    .end local v5    # "limitUri":Landroid/net/Uri;
    .end local v17    # "c":Landroid/database/Cursor;
    .end local v24    # "lastId":J
    :cond_2
    if-eqz v17, :cond_3

    #@b1
    .line 1216
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@b4
    .line 1218
    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    #@b7
    .line 1222
    const/4 v4, 0x0

    #@b8
    move-object/from16 v0, p0

    #@ba
    iput v4, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    #@bc
    .line 1223
    move-object/from16 v0, p0

    #@be
    iget-object v9, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget-object v10, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    #@c4
    sget-object v11, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    #@c6
    const/4 v12, 0x0

    #@c7
    const/4 v13, 0x0

    #@c8
    const/4 v14, 0x0

    #@c9
    const/4 v15, 0x0

    #@ca
    invoke-virtual/range {v9 .. v15}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@cd
    move-result-object v17

    #@ce
    .line 1224
    .restart local v17    # "c":Landroid/database/Cursor;
    if-eqz v17, :cond_4

    #@d0
    .line 1225
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    #@d3
    move-result v4

    #@d4
    move-object/from16 v0, p0

    #@d6
    iput v4, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    #@d8
    .line 1226
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@db
    .line 1120
    :cond_4
    return-void

    #@dc
    .line 1133
    .end local v16    # "builder":Landroid/net/Uri$Builder;
    .end local v18    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .local v7, "where":Ljava/lang/String;
    .local v8, "selectionArgs":[Ljava/lang/String;
    .local v17, "c":Landroid/database/Cursor;
    :cond_5
    const-string/jumbo v7, "_id>?"

    #@df
    .line 1134
    .local v7, "where":Ljava/lang/String;
    const/4 v4, 0x1

    #@e0
    new-array v8, v4, [Ljava/lang/String;

    #@e2
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, ""

    #@e5
    const/4 v6, 0x0

    #@e6
    aput-object v4, v8, v6

    #@e8
    .local v8, "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_0

    #@ea
    .line 1171
    .restart local v5    # "limitUri":Landroid/net/Uri;
    .restart local v16    # "builder":Landroid/net/Uri$Builder;
    .local v17, "c":Landroid/database/Cursor;
    .restart local v18    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v24    # "lastId":J
    :cond_6
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    #@ed
    move-result v28

    #@ee
    .line 1173
    .local v28, "num":I
    if-eqz v28, :cond_2

    #@f0
    .line 1176
    :cond_7
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    #@f3
    move-result v4

    #@f4
    if-eqz v4, :cond_0

    #@f6
    .line 1177
    const/4 v4, 0x0

    #@f7
    move-object/from16 v0, v17

    #@f9
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    #@fc
    move-result-wide v32

    #@fd
    .line 1178
    .local v32, "rowId":J
    const/4 v4, 0x1

    #@fe
    move-object/from16 v0, v17

    #@100
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@103
    move-result-object v30

    #@104
    .line 1179
    .local v30, "path":Ljava/lang/String;
    const/4 v4, 0x2

    #@105
    move-object/from16 v0, v17

    #@107
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    #@10a
    move-result v22

    #@10b
    .line 1180
    .local v22, "format":I
    const/4 v4, 0x3

    #@10c
    move-object/from16 v0, v17

    #@10e
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    #@111
    move-result-wide v26

    #@112
    .line 1181
    .local v26, "lastModified":J
    move-wide/from16 v24, v32

    #@114
    .line 1186
    if-eqz v30, :cond_7

    #@116
    const-string/jumbo v4, "/"

    #@119
    move-object/from16 v0, v30

    #@11b
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11e
    move-result v4

    #@11f
    if-eqz v4, :cond_7

    #@121
    .line 1187
    const/16 v20, 0x0

    #@123
    .line 1189
    .local v20, "exists":Z
    :try_start_2
    sget v4, Landroid/system/OsConstants;->F_OK:I

    #@125
    move-object/from16 v0, v30

    #@127
    invoke-static {v0, v4}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@12a
    move-result v20

    #@12b
    .line 1192
    .end local v20    # "exists":Z
    :goto_2
    if-nez v20, :cond_7

    #@12d
    :try_start_3
    invoke-static/range {v22 .. v22}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    #@130
    move-result v4

    #@131
    if-nez v4, :cond_7

    #@133
    .line 1197
    invoke-static/range {v30 .. v30}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    #@136
    move-result-object v23

    #@137
    .line 1198
    .local v23, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v23, :cond_9

    #@139
    const/16 v21, 0x0

    #@13b
    .line 1200
    .local v21, "fileType":I
    :goto_3
    invoke-static/range {v21 .. v21}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    #@13e
    move-result v4

    #@13f
    if-nez v4, :cond_7

    #@141
    .line 1201
    move-object/from16 v0, v18

    #@143
    move-wide/from16 v1, v32

    #@145
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    #@148
    .line 1202
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@14a
    move-object/from16 v0, v30

    #@14c
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@14f
    move-result-object v4

    #@150
    const-string/jumbo v6, "/.nomedia"

    #@153
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@156
    move-result v4

    #@157
    if-eqz v4, :cond_7

    #@159
    .line 1203
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    #@15c
    .line 1204
    new-instance v4, Ljava/io/File;

    #@15e
    move-object/from16 v0, v30

    #@160
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@163
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@166
    move-result-object v29

    #@167
    .line 1205
    .local v29, "parent":Ljava/lang/String;
    move-object/from16 v0, p0

    #@169
    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@16b
    const-string/jumbo v6, "unhide"

    #@16e
    const/4 v9, 0x0

    #@16f
    move-object/from16 v0, v29

    #@171
    invoke-virtual {v4, v6, v0, v9}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@174
    goto/16 :goto_1

    #@176
    .line 1214
    .end local v5    # "limitUri":Landroid/net/Uri;
    .end local v17    # "c":Landroid/database/Cursor;
    .end local v21    # "fileType":I
    .end local v22    # "format":I
    .end local v23    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .end local v26    # "lastModified":J
    .end local v28    # "num":I
    .end local v29    # "parent":Ljava/lang/String;
    .end local v30    # "path":Ljava/lang/String;
    .end local v32    # "rowId":J
    :catchall_0
    move-exception v4

    #@177
    .line 1215
    if-eqz v17, :cond_8

    #@179
    .line 1216
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@17c
    .line 1218
    :cond_8
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    #@17f
    .line 1214
    throw v4

    #@180
    .line 1198
    .restart local v5    # "limitUri":Landroid/net/Uri;
    .restart local v17    # "c":Landroid/database/Cursor;
    .restart local v22    # "format":I
    .restart local v23    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v26    # "lastModified":J
    .restart local v28    # "num":I
    .restart local v30    # "path":Ljava/lang/String;
    .restart local v32    # "rowId":J
    :cond_9
    :try_start_4
    move-object/from16 v0, v23

    #@182
    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    #@184
    move/from16 v21, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@186
    .restart local v21    # "fileType":I
    goto :goto_3

    #@187
    .line 1190
    .end local v21    # "fileType":I
    .end local v23    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v20    # "exists":Z
    :catch_0
    move-exception v19

    #@188
    .local v19, "e1":Landroid/system/ErrnoException;
    goto :goto_2
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 12
    .param p1, "fileList"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "playlistUri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1662
    const/4 v8, -0x1

    #@2
    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@5
    .line 1663
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    #@8
    move-result v8

    #@9
    if-eqz v8, :cond_1

    #@b
    .line 1664
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    #@e
    move-result-wide v6

    #@f
    .line 1665
    .local v6, "rowId":J
    const/4 v8, 0x1

    #@10
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 1666
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v6, v7, v0}, Landroid/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    #@17
    move-result v8

    #@18
    if-eqz v8, :cond_0

    #@1a
    .line 1671
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "rowId":J
    :cond_1
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v5

    #@20
    .line 1672
    .local v5, "len":I
    const/4 v4, 0x0

    #@21
    .line 1673
    .local v4, "index":I
    const/4 v3, 0x0

    #@22
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    #@24
    .line 1674
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/media/MediaScanner$PlaylistEntry;

    #@2c
    .line 1675
    .local v2, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v8, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    #@2e
    if-lez v8, :cond_2

    #@30
    .line 1677
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    #@33
    .line 1678
    const-string/jumbo v8, "play_order"

    #@36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v9

    #@3a
    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@3d
    .line 1679
    const-string/jumbo v8, "audio_id"

    #@40
    iget-wide v10, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    #@42
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@45
    move-result-object v9

    #@46
    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@49
    .line 1680
    iget-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@4b
    invoke-virtual {v8, p3, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 1681
    add-int/lit8 v4, v4, 0x1

    #@50
    .line 1673
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@52
    goto :goto_0

    #@53
    .line 1682
    :catch_0
    move-exception v1

    #@54
    .line 1683
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "MediaScanner"

    #@57
    const-string/jumbo v9, "RemoteException in MediaScanner.processCachedPlaylist()"

    #@5a
    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5d
    .line 1684
    return-void

    #@5e
    .line 1688
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    :cond_3
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@60
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@63
    .line 1661
    return-void
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 1693
    const/4 v3, 0x0

    #@1
    .line 1695
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    #@3
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6
    .line 1696
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_2

    #@c
    .line 1697
    new-instance v4, Ljava/io/BufferedReader;

    #@e
    .line 1698
    new-instance v5, Ljava/io/InputStreamReader;

    #@10
    new-instance v6, Ljava/io/FileInputStream;

    #@12
    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@15
    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@18
    const/16 v6, 0x2000

    #@1a
    .line 1697
    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 1699
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@20
    .end local v3    # "reader":Ljava/io/BufferedReader;
    move-result-object v2

    #@21
    .line 1700
    .local v2, "line":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@26
    .line 1701
    :goto_0
    if-eqz v2, :cond_1

    #@28
    .line 1703
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@2b
    move-result v5

    #@2c
    if-lez v5, :cond_0

    #@2e
    const/4 v5, 0x0

    #@2f
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v5

    #@33
    const/16 v6, 0x23

    #@35
    if-eq v5, v6, :cond_0

    #@37
    .line 1704
    invoke-direct {p0, v2, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    .line 1706
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    goto :goto_0

    #@3f
    .line 1709
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@42
    move-object v3, v4

    #@43
    .line 1715
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v3, :cond_3

    #@45
    .line 1716
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@48
    .line 1692
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    #@49
    .line 1717
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    #@4a
    .line 1718
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "MediaScanner"

    #@4d
    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    #@50
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    goto :goto_1

    #@54
    .line 1711
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    #@55
    .line 1712
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v5, "MediaScanner"

    #@58
    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    #@5b
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5e
    .line 1715
    if-eqz v3, :cond_3

    #@60
    .line 1716
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@63
    goto :goto_1

    #@64
    .line 1717
    :catch_2
    move-exception v0

    #@65
    .line 1718
    const-string/jumbo v5, "MediaScanner"

    #@68
    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    #@6b
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6e
    goto :goto_1

    #@6f
    .line 1713
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@70
    .line 1715
    :goto_3
    if-eqz v3, :cond_4

    #@72
    .line 1716
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@75
    .line 1713
    :cond_4
    :goto_4
    throw v5

    #@76
    .line 1717
    :catch_3
    move-exception v0

    #@77
    .line 1718
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "MediaScanner"

    #@7a
    const-string/jumbo v7, "IOException in MediaScanner.processM3uPlayList()"

    #@7d
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@80
    goto :goto_4

    #@81
    .line 1713
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    #@82
    move-object v3, v4

    #@83
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    #@84
    .line 1711
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    #@85
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v3, v4

    #@86
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    .locals 18
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "fileList"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1821
    move-object/from16 v0, p1

    #@2
    iget-object v3, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@4
    .line 1822
    .local v3, "path":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    #@6
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    #@9
    .line 1823
    .local v6, "values":Landroid/content/ContentValues;
    const/16 v2, 0x2f

    #@b
    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@e
    move-result v10

    #@f
    .line 1824
    .local v10, "lastSlash":I
    if-gez v10, :cond_0

    #@11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v7, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v16, "bad path "

    #@1b
    move-object/from16 v0, v16

    #@1d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v7

    #@29
    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 1826
    :cond_0
    move-object/from16 v0, p1

    #@2f
    iget-wide v14, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    #@31
    .line 1829
    .local v14, "rowId":J
    const-string/jumbo v2, "name"

    #@34
    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v12

    #@38
    .line 1830
    .local v12, "name":Ljava/lang/String;
    if-nez v12, :cond_1

    #@3a
    .line 1831
    const-string/jumbo v2, "title"

    #@3d
    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v12

    #@41
    .line 1832
    if-nez v12, :cond_1

    #@43
    .line 1834
    const/16 v2, 0x2e

    #@45
    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@48
    move-result v9

    #@49
    .line 1835
    .local v9, "lastDot":I
    if-gez v9, :cond_3

    #@4b
    add-int/lit8 v2, v10, 0x1

    #@4d
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@50
    move-result-object v12

    #@51
    .line 1840
    .end local v9    # "lastDot":I
    :cond_1
    :goto_0
    const-string/jumbo v2, "name"

    #@54
    invoke-virtual {v6, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@57
    .line 1841
    const-string/jumbo v2, "date_modified"

    #@5a
    move-object/from16 v0, p1

    #@5c
    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    #@5e
    move-wide/from16 v16, v0

    #@60
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@63
    move-result-object v7

    #@64
    invoke-virtual {v6, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@67
    .line 1843
    const-wide/16 v16, 0x0

    #@69
    cmp-long v2, v14, v16

    #@6b
    if-nez v2, :cond_4

    #@6d
    .line 1844
    const-string/jumbo v2, "_data"

    #@70
    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@73
    .line 1845
    move-object/from16 v0, p0

    #@75
    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@77
    move-object/from16 v0, p0

    #@79
    iget-object v7, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    #@7b
    invoke-virtual {v2, v7, v6}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@7e
    move-result-object v13

    #@7f
    .line 1846
    .local v13, "uri":Landroid/net/Uri;
    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@82
    move-result-wide v14

    #@83
    .line 1847
    const-string/jumbo v2, "members"

    #@86
    invoke-static {v13, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@89
    move-result-object v5

    #@8a
    .line 1857
    .local v5, "membersUri":Landroid/net/Uri;
    :goto_1
    add-int/lit8 v2, v10, 0x1

    #@8c
    const/4 v7, 0x0

    #@8d
    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@90
    move-result-object v4

    #@91
    .line 1858
    .local v4, "playListDirectory":Ljava/lang/String;
    invoke-static {v3}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    #@94
    move-result-object v11

    #@95
    .line 1859
    .local v11, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v11, :cond_5

    #@97
    const/4 v8, 0x0

    #@98
    .line 1861
    .local v8, "fileType":I
    :goto_2
    const/16 v2, 0x29

    #@9a
    if-ne v8, v2, :cond_6

    #@9c
    move-object/from16 v2, p0

    #@9e
    move-object/from16 v7, p2

    #@a0
    .line 1862
    invoke-direct/range {v2 .. v7}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    #@a3
    .line 1820
    :cond_2
    :goto_3
    return-void

    #@a4
    .line 1836
    .end local v4    # "playListDirectory":Ljava/lang/String;
    .end local v5    # "membersUri":Landroid/net/Uri;
    .end local v8    # "fileType":I
    .end local v11    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .end local v13    # "uri":Landroid/net/Uri;
    .restart local v9    # "lastDot":I
    :cond_3
    add-int/lit8 v2, v10, 0x1

    #@a6
    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a9
    move-result-object v12

    #@aa
    goto :goto_0

    #@ab
    .line 1849
    .end local v9    # "lastDot":I
    :cond_4
    move-object/from16 v0, p0

    #@ad
    iget-object v2, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    #@af
    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@b2
    move-result-object v13

    #@b3
    .line 1850
    .restart local v13    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@b5
    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@b7
    const/4 v7, 0x0

    #@b8
    const/16 v16, 0x0

    #@ba
    move-object/from16 v0, v16

    #@bc
    invoke-virtual {v2, v13, v6, v7, v0}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@bf
    .line 1853
    const-string/jumbo v2, "members"

    #@c2
    invoke-static {v13, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@c5
    move-result-object v5

    #@c6
    .line 1854
    .restart local v5    # "membersUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@c8
    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@ca
    const/4 v7, 0x0

    #@cb
    const/16 v16, 0x0

    #@cd
    move-object/from16 v0, v16

    #@cf
    invoke-virtual {v2, v5, v7, v0}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@d2
    goto :goto_1

    #@d3
    .line 1859
    .restart local v4    # "playListDirectory":Ljava/lang/String;
    .restart local v11    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_5
    iget v8, v11, Landroid/media/MediaFile$MediaFileType;->fileType:I

    #@d5
    goto :goto_2

    #@d6
    .line 1863
    .restart local v8    # "fileType":I
    :cond_6
    const/16 v2, 0x2a

    #@d8
    if-ne v8, v2, :cond_7

    #@da
    move-object/from16 v2, p0

    #@dc
    move-object/from16 v7, p2

    #@de
    .line 1864
    invoke-direct/range {v2 .. v7}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    #@e1
    goto :goto_3

    #@e2
    .line 1865
    :cond_7
    const/16 v2, 0x2b

    #@e4
    if-ne v8, v2, :cond_2

    #@e6
    move-object/from16 v2, p0

    #@e8
    move-object/from16 v7, p2

    #@ea
    .line 1866
    invoke-direct/range {v2 .. v7}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    #@ed
    goto :goto_3
.end method

.method private processPlayLists()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1871
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v10

    #@6
    .line 1872
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileEntry;>;"
    const/4 v9, 0x0

    #@7
    .line 1876
    .local v9, "fileList":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@9
    iget-object v1, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    #@b
    sget-object v2, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    #@d
    .line 1877
    const-string/jumbo v3, "media_type=2"

    #@10
    const/4 v4, 0x0

    #@11
    const/4 v5, 0x0

    #@12
    const/4 v6, 0x0

    #@13
    .line 1876
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@16
    move-result-object v9

    #@17
    .line 1878
    .local v9, "fileList":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 1879
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v8

    #@21
    check-cast v8, Landroid/media/MediaScanner$FileEntry;

    #@23
    .line 1881
    .local v8, "entry":Landroid/media/MediaScanner$FileEntry;
    iget-boolean v0, v8, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 1882
    invoke-direct {p0, v8, v9}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 1885
    .end local v8    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v9    # "fileList":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    #@2c
    .line 1887
    .local v7, "e1":Landroid/os/RemoteException;
    if-eqz v9, :cond_1

    #@2e
    .line 1888
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@31
    .line 1870
    .end local v7    # "e1":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void

    #@32
    .line 1887
    .restart local v9    # "fileList":Landroid/database/Cursor;
    :cond_2
    if-eqz v9, :cond_1

    #@34
    .line 1888
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@37
    goto :goto_1

    #@38
    .line 1886
    .end local v9    # "fileList":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    #@39
    .line 1887
    if-eqz v9, :cond_3

    #@3b
    .line 1888
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@3e
    .line 1886
    :cond_3
    throw v0
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 1725
    const/4 v4, 0x0

    #@1
    .line 1727
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@3
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6
    .line 1728
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@9
    move-result v6

    #@a
    if-eqz v6, :cond_2

    #@c
    .line 1729
    new-instance v5, Ljava/io/BufferedReader;

    #@e
    .line 1730
    new-instance v6, Ljava/io/InputStreamReader;

    #@10
    new-instance v7, Ljava/io/FileInputStream;

    #@12
    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@15
    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@18
    const/16 v7, 0x2000

    #@1a
    .line 1729
    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 1731
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@20
    .end local v4    # "reader":Ljava/io/BufferedReader;
    move-result-object v3

    #@21
    .line 1732
    .local v3, "line":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@26
    .line 1733
    :goto_0
    if-eqz v3, :cond_1

    #@28
    .line 1735
    const-string/jumbo v6, "File"

    #@2b
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_0

    #@31
    .line 1736
    const/16 v6, 0x3d

    #@33
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    #@36
    move-result v1

    #@37
    .line 1737
    .local v1, "equals":I
    if-lez v1, :cond_0

    #@39
    .line 1738
    add-int/lit8 v6, v1, 0x1

    #@3b
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    invoke-direct {p0, v6, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    #@42
    .line 1741
    .end local v1    # "equals":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    goto :goto_0

    #@47
    .line 1744
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4a
    move-object v4, v5

    #@4b
    .line 1750
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v4, :cond_3

    #@4d
    .line 1751
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@50
    .line 1724
    .end local v2    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    #@51
    .line 1752
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    #@52
    .line 1753
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "MediaScanner"

    #@55
    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    #@58
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    goto :goto_1

    #@5c
    .line 1746
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    #@5d
    .line 1747
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v6, "MediaScanner"

    #@60
    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    #@63
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@66
    .line 1750
    if-eqz v4, :cond_3

    #@68
    .line 1751
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@6b
    goto :goto_1

    #@6c
    .line 1752
    :catch_2
    move-exception v0

    #@6d
    .line 1753
    const-string/jumbo v6, "MediaScanner"

    #@70
    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    #@73
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@76
    goto :goto_1

    #@77
    .line 1748
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@78
    .line 1750
    :goto_3
    if-eqz v4, :cond_4

    #@7a
    .line 1751
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@7d
    .line 1748
    :cond_4
    :goto_4
    throw v6

    #@7e
    .line 1752
    :catch_3
    move-exception v0

    #@7f
    .line 1753
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "MediaScanner"

    #@82
    const-string/jumbo v8, "IOException in MediaScanner.processPlsPlayList()"

    #@85
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@88
    goto :goto_4

    #@89
    .line 1748
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    #@8a
    move-object v4, v5

    #@8b
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    #@8c
    .line 1746
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    #@8d
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v5

    #@8e
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 1794
    const/4 v3, 0x0

    #@1
    .line 1796
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@3
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6
    .line 1797
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 1798
    new-instance v4, Ljava/io/FileInputStream;

    #@e
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 1800
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@13
    .end local v3    # "fis":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@16
    .line 1801
    const-string/jumbo v5, "UTF-8"

    #@19
    invoke-static {v5}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    #@1c
    move-result-object v5

    #@1d
    .line 1802
    new-instance v6, Landroid/media/MediaScanner$WplHandler;

    #@1f
    invoke-direct {v6, p0, p2, p3, p5}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    #@22
    invoke-virtual {v6}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    #@25
    move-result-object v6

    #@26
    .line 1801
    invoke-static {v4, v5, v6}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    #@29
    .line 1804
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2c
    move-object v3, v4

    #@2d
    .line 1812
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v3, :cond_1

    #@2f
    .line 1813
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@32
    .line 1793
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    #@33
    .line 1814
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    #@34
    .line 1815
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "MediaScanner"

    #@37
    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    #@3a
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    goto :goto_0

    #@3e
    .line 1808
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    #@3f
    .line 1809
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    .line 1812
    if-eqz v3, :cond_1

    #@44
    .line 1813
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@47
    goto :goto_0

    #@48
    .line 1814
    :catch_2
    move-exception v0

    #@49
    .line 1815
    const-string/jumbo v5, "MediaScanner"

    #@4c
    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    #@4f
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@52
    goto :goto_0

    #@53
    .line 1806
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    #@54
    .line 1807
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Lorg/xml/sax/SAXException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@57
    .line 1812
    if-eqz v3, :cond_1

    #@59
    .line 1813
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@5c
    goto :goto_0

    #@5d
    .line 1814
    :catch_4
    move-exception v0

    #@5e
    .line 1815
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "MediaScanner"

    #@61
    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    #@64
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@67
    goto :goto_0

    #@68
    .line 1810
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v5

    #@69
    .line 1812
    :goto_3
    if-eqz v3, :cond_2

    #@6b
    .line 1813
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@6e
    .line 1810
    :cond_2
    :goto_4
    throw v5

    #@6f
    .line 1814
    :catch_5
    move-exception v0

    #@70
    .line 1815
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "MediaScanner"

    #@73
    const-string/jumbo v7, "IOException in MediaScanner.processWplPlayList()"

    #@76
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@79
    goto :goto_4

    #@7a
    .line 1810
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    #@7b
    move-object v3, v4

    #@7c
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    goto :goto_3

    #@7d
    .line 1806
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    #@7e
    .restart local v1    # "e":Lorg/xml/sax/SAXException;
    move-object v3, v4

    #@7f
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    #@80
    .line 1808
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    #@81
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v3, v4

    #@82
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 18

    #@0
    .prologue
    .line 1241
    new-instance v12, Ljava/util/HashSet;

    #@2
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 1242
    .local v12, "existingFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v9, "/sdcard/DCIM/.thumbnails"

    #@8
    .line 1243
    .local v9, "directory":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@a
    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    #@10
    move-result-object v15

    #@11
    .line 1244
    .local v15, "files":[Ljava/lang/String;
    const/4 v8, 0x0

    #@12
    .line 1245
    .local v8, "c":Landroid/database/Cursor;
    if-nez v15, :cond_0

    #@14
    .line 1246
    const/4 v1, 0x0

    #@15
    new-array v15, v1, [Ljava/lang/String;

    #@17
    .line 1248
    :cond_0
    const/16 v17, 0x0

    #@19
    .local v17, "i":I
    :goto_0
    array-length v1, v15

    #@1a
    move/from16 v0, v17

    #@1c
    if-ge v0, v1, :cond_1

    #@1e
    .line 1249
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, "/"

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    aget-object v2, v15, v17

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v16

    #@38
    .line 1250
    .local v16, "fullPathString":Ljava/lang/String;
    move-object/from16 v0, v16

    #@3a
    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3d
    .line 1248
    add-int/lit8 v17, v17, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 1254
    .end local v16    # "fullPathString":Ljava/lang/String;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    #@42
    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@44
    .line 1255
    move-object/from16 v0, p0

    #@46
    iget-object v2, v0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    #@48
    .line 1256
    const/4 v3, 0x1

    #@49
    new-array v3, v3, [Ljava/lang/String;

    #@4b
    const-string/jumbo v4, "_data"

    #@4e
    const/4 v5, 0x0

    #@4f
    aput-object v4, v3, v5

    #@51
    .line 1257
    const/4 v4, 0x0

    #@52
    .line 1258
    const/4 v5, 0x0

    #@53
    .line 1259
    const/4 v6, 0x0

    #@54
    const/4 v7, 0x0

    #@55
    .line 1254
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@58
    move-result-object v8

    #@59
    .line 1260
    .local v8, "c":Landroid/database/Cursor;
    const-string/jumbo v1, "MediaScanner"

    #@5c
    new-instance v2, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v3, "pruneDeadThumbnailFiles... "

    #@64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 1261
    if-eqz v8, :cond_3

    #@75
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    #@78
    move-result v1

    #@79
    if-eqz v1, :cond_3

    #@7b
    .line 1263
    :cond_2
    const/4 v1, 0x0

    #@7c
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@7f
    move-result-object v16

    #@80
    .line 1264
    .restart local v16    # "fullPathString":Ljava/lang/String;
    move-object/from16 v0, v16

    #@82
    invoke-virtual {v12, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@85
    .line 1265
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@88
    move-result v1

    #@89
    if-nez v1, :cond_2

    #@8b
    .line 1268
    .end local v16    # "fullPathString":Ljava/lang/String;
    :cond_3
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8e
    move-result-object v14

    #@8f
    .local v14, "fileToDelete$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@92
    move-result v1

    #@93
    if-eqz v1, :cond_4

    #@95
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@98
    move-result-object v13

    #@99
    check-cast v13, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9b
    .line 1272
    .local v13, "fileToDelete":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/File;

    #@9d
    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@a0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a3
    goto :goto_1

    #@a4
    .line 1273
    :catch_0
    move-exception v11

    #@a5
    .local v11, "ex":Ljava/lang/SecurityException;
    goto :goto_1

    #@a6
    .line 1277
    .end local v11    # "ex":Ljava/lang/SecurityException;
    .end local v13    # "fileToDelete":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string/jumbo v1, "MediaScanner"

    #@a9
    new-instance v2, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v3, "/pruneDeadThumbnailFiles... "

    #@b1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v2

    #@b5
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v2

    #@b9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v2

    #@bd
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c0
    .line 1281
    if-eqz v8, :cond_5

    #@c2
    .line 1282
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@c5
    .line 1240
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v14    # "fileToDelete$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    return-void

    #@c6
    .line 1278
    :catch_1
    move-exception v10

    #@c7
    .line 1281
    .local v10, "e":Landroid/os/RemoteException;
    if-eqz v8, :cond_5

    #@c9
    .line 1282
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@cc
    goto :goto_2

    #@cd
    .line 1280
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@ce
    .line 1281
    if-eqz v8, :cond_6

    #@d0
    .line 1282
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@d3
    .line 1280
    :cond_6
    throw v1
.end method

.method private releaseResources()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1339
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1340
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    #@7
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->close()V

    #@a
    .line 1341
    iput-object v1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    #@c
    .line 1337
    :cond_0
    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    #@0
    .prologue
    .line 437
    const-string/jumbo v0, "ro.config.ringtone"

    #@3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    #@9
    .line 439
    const-string/jumbo v0, "ro.config.notification_sound"

    #@c
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    #@12
    .line 441
    const-string/jumbo v0, "ro.config.alarm_alert"

    #@15
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    #@1b
    .line 436
    return-void
.end method

.method private native setLocale(Ljava/lang/String;)V
.end method

.method private settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "base"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "_set"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method private wasRingtoneAlreadySet(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1111
    iget-object v4, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    .line 1112
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 1114
    .local v2, "indicatorName":Ljava/lang/String;
    :try_start_0
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    const/4 v3, 0x1

    #@12
    :cond_0
    return v3

    #@13
    .line 1115
    :catch_0
    move-exception v1

    #@14
    .line 1116
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v3
.end method


# virtual methods
.method public close()V
    .locals 3

    #@0
    .prologue
    .line 1905
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@5
    .line 1906
    iget-object v0, p0, Landroid/media/MediaScanner;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1907
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@11
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    #@14
    .line 1908
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    #@17
    .line 1904
    :cond_0
    return-void
.end method

.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 1915
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 1916
    invoke-virtual {p0}, Landroid/media/MediaScanner;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 1918
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 1913
    return-void

    #@c
    .line 1917
    :catchall_0
    move-exception v0

    #@d
    .line 1918
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@10
    .line 1917
    throw v0
.end method

.method makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
    .locals 15
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1564
    const/4 v13, 0x0

    #@1
    .line 1566
    .local v13, "c":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v3, "_data=?"

    #@4
    .line 1567
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    #@5
    new-array v4, v0, [Ljava/lang/String;

    #@7
    const/4 v0, 0x0

    #@8
    aput-object p1, v4, v0

    #@a
    .line 1568
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@c
    iget-object v1, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    #@e
    sget-object v2, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    #@10
    .line 1569
    const/4 v5, 0x0

    #@11
    const/4 v6, 0x0

    #@12
    .line 1568
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@15
    move-result-object v13

    #@16
    .line 1570
    .local v13, "c":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 1571
    const/4 v0, 0x0

    #@1d
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    #@20
    move-result-wide v7

    #@21
    .line 1572
    .local v7, "rowId":J
    const/4 v0, 0x2

    #@22
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    #@25
    move-result v12

    #@26
    .line 1573
    .local v12, "format":I
    const/4 v0, 0x3

    #@27
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    #@2a
    move-result-wide v10

    #@2b
    .line 1574
    .local v10, "lastModified":J
    new-instance v6, Landroid/media/MediaScanner$FileEntry;

    #@2d
    move-object/from16 v9, p1

    #@2f
    invoke-direct/range {v6 .. v12}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 1578
    if-eqz v13, :cond_0

    #@34
    .line 1579
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@37
    .line 1574
    :cond_0
    return-object v6

    #@38
    .line 1578
    .end local v7    # "rowId":J
    .end local v10    # "lastModified":J
    .end local v12    # "format":I
    :cond_1
    if-eqz v13, :cond_2

    #@3a
    .line 1579
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@3d
    .line 1582
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    #@3e
    return-object v0

    #@3f
    .line 1576
    :catch_0
    move-exception v14

    #@40
    .line 1578
    .local v14, "e":Landroid/os/RemoteException;
    if-eqz v13, :cond_2

    #@42
    .line 1579
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@45
    goto :goto_0

    #@46
    .line 1577
    .end local v14    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@47
    .line 1578
    if-eqz v13, :cond_3

    #@49
    .line 1579
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@4c
    .line 1577
    :cond_3
    throw v0
.end method

.method public scanDirectories([Ljava/lang/String;)V
    .locals 17
    .param p1, "directories"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1347
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v12

    #@4
    .line 1348
    .local v12, "start":J
    const/4 v14, 0x0

    #@5
    const/4 v15, 0x1

    #@6
    move-object/from16 v0, p0

    #@8
    invoke-direct {v0, v14, v15}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    #@b
    .line 1349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e
    move-result-wide v8

    #@f
    .line 1353
    .local v8, "prescan":J
    new-instance v14, Landroid/media/MediaInserter;

    #@11
    move-object/from16 v0, p0

    #@13
    iget-object v15, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@15
    const/16 v16, 0x1f4

    #@17
    invoke-direct/range {v14 .. v16}, Landroid/media/MediaInserter;-><init>(Landroid/content/ContentProviderClient;I)V

    #@1a
    move-object/from16 v0, p0

    #@1c
    iput-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    #@1e
    .line 1356
    const/4 v5, 0x0

    #@1f
    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p1

    #@21
    array-length v14, v0

    #@22
    if-ge v5, v14, :cond_0

    #@24
    .line 1357
    aget-object v14, p1, v5

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v15, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    #@2a
    move-object/from16 v0, p0

    #@2c
    invoke-direct {v0, v14, v15}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    #@2f
    .line 1356
    add-int/lit8 v5, v5, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1362
    :cond_0
    move-object/from16 v0, p0

    #@34
    iget-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    #@36
    invoke-virtual {v14}, Landroid/media/MediaInserter;->flushAll()V

    #@39
    .line 1363
    const/4 v14, 0x0

    #@3a
    move-object/from16 v0, p0

    #@3c
    iput-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    #@3e
    .line 1366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@41
    move-result-wide v10

    #@42
    .line 1367
    .local v10, "scan":J
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    #@45
    .line 1368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    move-result-wide v6

    #@49
    .line 1385
    .local v6, "end":J
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@4c
    .line 1345
    .end local v5    # "i":I
    .end local v6    # "end":J
    .end local v8    # "prescan":J
    .end local v10    # "scan":J
    .end local v12    # "start":J
    :goto_1
    return-void

    #@4d
    .line 1382
    :catch_0
    move-exception v3

    #@4e
    .line 1383
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v14, "MediaScanner"

    #@51
    const-string/jumbo v15, "RemoteException in MediaScanner.scan()"

    #@54
    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 1385
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@5a
    goto :goto_1

    #@5b
    .line 1379
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    #@5c
    .line 1381
    .local v4, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_2
    const-string/jumbo v14, "MediaScanner"

    #@5f
    const-string/jumbo v15, "UnsupportedOperationException in MediaScanner.scan()"

    #@62
    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    .line 1385
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@68
    goto :goto_1

    #@69
    .line 1376
    .end local v4    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v2

    #@6a
    .line 1378
    .local v2, "e":Landroid/database/SQLException;
    :try_start_3
    const-string/jumbo v14, "MediaScanner"

    #@6d
    const-string/jumbo v15, "SQLException in MediaScanner.scan()"

    #@70
    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@73
    .line 1385
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@76
    goto :goto_1

    #@77
    .line 1384
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v14

    #@78
    .line 1385
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@7b
    .line 1384
    throw v14
.end method

.method public scanMtpFile(Ljava/lang/String;II)V
    .locals 21
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "objectHandle"    # I
    .param p3, "format"    # I

    #@0
    .prologue
    .line 1505
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    #@3
    move-result-object v18

    #@4
    .line 1506
    .local v18, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v18, :cond_3

    #@6
    const/16 v17, 0x0

    #@8
    .line 1507
    .local v17, "fileType":I
    :goto_0
    new-instance v15, Ljava/io/File;

    #@a
    move-object/from16 v0, p1

    #@c
    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@f
    .line 1508
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    #@12
    move-result-wide v2

    #@13
    const-wide/16 v4, 0x3e8

    #@15
    div-long v6, v2, v4

    #@17
    .line 1510
    .local v6, "lastModifiedSeconds":J
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_0

    #@1d
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_4

    #@23
    .line 1528
    :cond_0
    move/from16 v0, p2

    #@25
    move-object/from16 v1, p0

    #@27
    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    #@29
    .line 1529
    const/16 v16, 0x0

    #@2b
    .line 1531
    .local v16, "fileList":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_5

    #@31
    .line 1533
    const/4 v2, 0x0

    #@32
    const/4 v3, 0x1

    #@33
    move-object/from16 v0, p0

    #@35
    invoke-direct {v0, v2, v3}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    #@38
    .line 1535
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    #@3b
    move-result-object v14

    #@3c
    .line 1536
    .local v14, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v14, :cond_1

    #@3e
    .line 1537
    move-object/from16 v0, p0

    #@40
    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@42
    move-object/from16 v0, p0

    #@44
    iget-object v3, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    #@46
    .line 1538
    sget-object v4, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    #@48
    const/4 v5, 0x0

    #@49
    const/4 v6, 0x0

    #@4a
    const/4 v7, 0x0

    #@4b
    const/4 v8, 0x0

    #@4c
    .line 1537
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@4f
    .end local v6    # "lastModifiedSeconds":J
    move-result-object v16

    #@50
    .line 1539
    .local v16, "fileList":Landroid/database/Cursor;
    move-object/from16 v0, p0

    #@52
    move-object/from16 v1, v16

    #@54
    invoke-direct {v0, v14, v1}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    .line 1552
    .end local v14    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v16    # "fileList":Landroid/database/Cursor;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    #@58
    move-object/from16 v0, p0

    #@5a
    iput v2, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    #@5c
    .line 1553
    if-eqz v16, :cond_2

    #@5e
    .line 1554
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    #@61
    .line 1556
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@64
    .line 1504
    :goto_2
    return-void

    #@65
    .line 1506
    .end local v15    # "file":Ljava/io/File;
    .end local v17    # "fileType":I
    :cond_3
    move-object/from16 v0, v18

    #@67
    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    #@69
    move/from16 v17, v0

    #@6b
    .restart local v17    # "fileType":I
    goto :goto_0

    #@6c
    .line 1511
    .restart local v6    # "lastModifiedSeconds":J
    .restart local v15    # "file":Ljava/io/File;
    :cond_4
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@6f
    move-result v2

    #@70
    if-nez v2, :cond_0

    #@72
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    #@75
    move-result v2

    #@76
    if-nez v2, :cond_0

    #@78
    .line 1512
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    #@7b
    move-result v2

    #@7c
    if-nez v2, :cond_0

    #@7e
    .line 1515
    new-instance v19, Landroid/content/ContentValues;

    #@80
    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    #@83
    .line 1516
    .local v19, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "_size"

    #@86
    invoke-virtual {v15}, Ljava/io/File;->length()J

    #@89
    move-result-wide v4

    #@8a
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@8d
    move-result-object v3

    #@8e
    move-object/from16 v0, v19

    #@90
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@93
    .line 1517
    const-string/jumbo v2, "date_modified"

    #@96
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@99
    move-result-object v3

    #@9a
    move-object/from16 v0, v19

    #@9c
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@9f
    .line 1519
    const/4 v2, 0x1

    #@a0
    :try_start_1
    new-array v0, v2, [Ljava/lang/String;

    #@a2
    move-object/from16 v20, v0

    #@a4
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a7
    move-result-object v2

    #@a8
    const/4 v3, 0x0

    #@a9
    aput-object v2, v20, v3

    #@ab
    .line 1520
    .local v20, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@ad
    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@af
    move-object/from16 v0, p0

    #@b1
    iget-object v3, v0, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    #@b3
    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    #@b6
    move-result-object v3

    #@b7
    .line 1521
    const-string/jumbo v4, "_id=?"

    #@ba
    .line 1520
    move-object/from16 v0, v19

    #@bc
    move-object/from16 v1, v20

    #@be
    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@c1
    .line 1525
    .end local v20    # "whereArgs":[Ljava/lang/String;
    :goto_3
    return-void

    #@c2
    .line 1522
    :catch_0
    move-exception v13

    #@c3
    .line 1523
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaScanner"

    #@c6
    const-string/jumbo v3, "RemoteException in scanMtpFile"

    #@c9
    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@cc
    goto :goto_3

    #@cd
    .line 1543
    .end local v13    # "e":Landroid/os/RemoteException;
    .end local v19    # "values":Landroid/content/ContentValues;
    .local v16, "fileList":Landroid/database/Cursor;
    :cond_5
    const/4 v2, 0x0

    #@ce
    :try_start_2
    move-object/from16 v0, p0

    #@d0
    move-object/from16 v1, p1

    #@d2
    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    #@d5
    .line 1546
    move-object/from16 v0, p0

    #@d7
    iget-object v3, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    #@d9
    move-object/from16 v0, v18

    #@db
    iget-object v5, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    #@dd
    invoke-virtual {v15}, Ljava/io/File;->length()J

    #@e0
    move-result-wide v8

    #@e1
    .line 1547
    const/16 v2, 0x3001

    #@e3
    move/from16 v0, p3

    #@e5
    if-ne v0, v2, :cond_7

    #@e7
    const/4 v10, 0x1

    #@e8
    :goto_4
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    #@eb
    move-result v12

    #@ec
    const/4 v11, 0x1

    #@ed
    move-object/from16 v4, p1

    #@ef
    .line 1546
    invoke-virtual/range {v3 .. v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@f2
    goto/16 :goto_1

    #@f4
    .line 1549
    .end local v6    # "lastModifiedSeconds":J
    .end local v16    # "fileList":Landroid/database/Cursor;
    :catch_1
    move-exception v13

    #@f5
    .line 1550
    .restart local v13    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v2, "MediaScanner"

    #@f8
    const-string/jumbo v3, "RemoteException in MediaScanner.scanFile()"

    #@fb
    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@fe
    .line 1552
    const/4 v2, 0x0

    #@ff
    move-object/from16 v0, p0

    #@101
    iput v2, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    #@103
    .line 1553
    if-eqz v16, :cond_6

    #@105
    .line 1554
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    #@108
    .line 1556
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@10b
    goto/16 :goto_2

    #@10d
    .line 1547
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v6    # "lastModifiedSeconds":J
    .restart local v16    # "fileList":Landroid/database/Cursor;
    :cond_7
    const/4 v10, 0x0

    #@10e
    goto :goto_4

    #@10f
    .line 1551
    .end local v6    # "lastModifiedSeconds":J
    .end local v16    # "fileList":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    #@110
    .line 1552
    const/4 v3, 0x0

    #@111
    move-object/from16 v0, p0

    #@113
    iput v3, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    #@115
    .line 1553
    if-eqz v16, :cond_8

    #@117
    .line 1554
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    #@11a
    .line 1556
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@11d
    .line 1551
    throw v2
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1392
    const/4 v1, 0x1

    #@2
    :try_start_0
    invoke-direct {p0, p1, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    #@5
    .line 1394
    new-instance v11, Ljava/io/File;

    #@7
    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@a
    .line 1395
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 1409
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@13
    .line 1396
    return-object v12

    #@14
    .line 1400
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    #@17
    move-result-wide v2

    #@18
    const-wide/16 v6, 0x3e8

    #@1a
    div-long v4, v2, v6

    #@1c
    .line 1403
    .local v4, "lastModifiedSeconds":J
    iget-object v1, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    #@1e
    invoke-virtual {v11}, Ljava/io/File;->length()J

    #@21
    move-result-wide v6

    #@22
    .line 1404
    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    #@25
    move-result v10

    #@26
    const/4 v8, 0x0

    #@27
    const/4 v9, 0x1

    #@28
    move-object v2, p1

    #@29
    move-object v3, p2

    #@2a
    .line 1403
    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    move-result-object v1

    #@2e
    .line 1409
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@31
    .line 1403
    return-object v1

    #@32
    .line 1405
    .end local v4    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    #@33
    .line 1406
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "MediaScanner"

    #@36
    const-string/jumbo v2, "RemoteException in MediaScanner.scanFile()"

    #@39
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    .line 1409
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@3f
    .line 1407
    return-object v12

    #@40
    .line 1408
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@41
    .line 1409
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@44
    .line 1408
    throw v1
.end method
