.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$FileEntry;,
        Landroid/media/MediaScanner$PlaylistEntry;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$MediaBulkDeleter;,
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
.field private mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private final mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mExternalIsEmulated:Z

.field private final mExternalStoragePath:Ljava/lang/String;

.field private mFilesUri:Landroid/net/Uri;

.field private mFilesUriNoNotify:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMtpObjectHandle:I

.field private mNativeContext:J

.field private mOriginalCount:I

.field private mPackageName:Ljava/lang/String;

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;

.field private mWasEmptyPriorToScan:Z


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

.method static synthetic -get14(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

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

.method static synthetic -get16(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get17(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get18(Landroid/media/MediaScanner;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    #@2
    return v0
.end method

.method static synthetic -get19(Landroid/media/MediaScanner;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    #@2
    return-object v0
.end method

.method static synthetic -get20(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method static synthetic -get21(Landroid/media/MediaScanner;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    #@2
    return v0
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

.method static synthetic -wrap2(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
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
    .line 113
    const-string/jumbo v0, "media_jni"

    #@8
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@b
    .line 114
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    #@e
    .line 119
    new-array v0, v6, [Ljava/lang/String;

    #@10
    .line 120
    const-string/jumbo v1, "_id"

    #@13
    aput-object v1, v0, v2

    #@15
    .line 121
    const-string/jumbo v1, "_data"

    #@18
    aput-object v1, v0, v3

    #@1a
    .line 122
    const-string/jumbo v1, "format"

    #@1d
    aput-object v1, v0, v4

    #@1f
    .line 123
    const-string/jumbo v1, "date_modified"

    #@22
    aput-object v1, v0, v5

    #@24
    .line 119
    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    #@26
    .line 126
    new-array v0, v3, [Ljava/lang/String;

    #@28
    .line 127
    const-string/jumbo v1, "_id"

    #@2b
    aput-object v1, v0, v2

    #@2d
    .line 126
    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    #@2f
    .line 135
    new-array v0, v3, [Ljava/lang/String;

    #@31
    .line 136
    const-string/jumbo v1, "playlist_id"

    #@34
    aput-object v1, v0, v2

    #@36
    .line 135
    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    #@38
    .line 149
    const/16 v0, 0x94

    #@3a
    new-array v0, v0, [Ljava/lang/String;

    #@3c
    .line 151
    const-string/jumbo v1, "Blues"

    #@3f
    aput-object v1, v0, v2

    #@41
    .line 152
    const-string/jumbo v1, "Classic Rock"

    #@44
    aput-object v1, v0, v3

    #@46
    .line 153
    const-string/jumbo v1, "Country"

    #@49
    aput-object v1, v0, v4

    #@4b
    .line 154
    const-string/jumbo v1, "Dance"

    #@4e
    aput-object v1, v0, v5

    #@50
    .line 155
    const-string/jumbo v1, "Disco"

    #@53
    aput-object v1, v0, v6

    #@55
    .line 156
    const-string/jumbo v1, "Funk"

    #@58
    const/4 v2, 0x5

    #@59
    aput-object v1, v0, v2

    #@5b
    .line 157
    const-string/jumbo v1, "Grunge"

    #@5e
    const/4 v2, 0x6

    #@5f
    aput-object v1, v0, v2

    #@61
    .line 158
    const-string/jumbo v1, "Hip-Hop"

    #@64
    const/4 v2, 0x7

    #@65
    aput-object v1, v0, v2

    #@67
    .line 159
    const-string/jumbo v1, "Jazz"

    #@6a
    const/16 v2, 0x8

    #@6c
    aput-object v1, v0, v2

    #@6e
    .line 160
    const-string/jumbo v1, "Metal"

    #@71
    const/16 v2, 0x9

    #@73
    aput-object v1, v0, v2

    #@75
    .line 161
    const-string/jumbo v1, "New Age"

    #@78
    const/16 v2, 0xa

    #@7a
    aput-object v1, v0, v2

    #@7c
    .line 162
    const-string/jumbo v1, "Oldies"

    #@7f
    const/16 v2, 0xb

    #@81
    aput-object v1, v0, v2

    #@83
    .line 163
    const-string/jumbo v1, "Other"

    #@86
    const/16 v2, 0xc

    #@88
    aput-object v1, v0, v2

    #@8a
    .line 164
    const-string/jumbo v1, "Pop"

    #@8d
    const/16 v2, 0xd

    #@8f
    aput-object v1, v0, v2

    #@91
    .line 165
    const-string/jumbo v1, "R&B"

    #@94
    const/16 v2, 0xe

    #@96
    aput-object v1, v0, v2

    #@98
    .line 166
    const-string/jumbo v1, "Rap"

    #@9b
    const/16 v2, 0xf

    #@9d
    aput-object v1, v0, v2

    #@9f
    .line 167
    const-string/jumbo v1, "Reggae"

    #@a2
    const/16 v2, 0x10

    #@a4
    aput-object v1, v0, v2

    #@a6
    .line 168
    const-string/jumbo v1, "Rock"

    #@a9
    const/16 v2, 0x11

    #@ab
    aput-object v1, v0, v2

    #@ad
    .line 169
    const-string/jumbo v1, "Techno"

    #@b0
    const/16 v2, 0x12

    #@b2
    aput-object v1, v0, v2

    #@b4
    .line 170
    const-string/jumbo v1, "Industrial"

    #@b7
    const/16 v2, 0x13

    #@b9
    aput-object v1, v0, v2

    #@bb
    .line 171
    const-string/jumbo v1, "Alternative"

    #@be
    const/16 v2, 0x14

    #@c0
    aput-object v1, v0, v2

    #@c2
    .line 172
    const-string/jumbo v1, "Ska"

    #@c5
    const/16 v2, 0x15

    #@c7
    aput-object v1, v0, v2

    #@c9
    .line 173
    const-string/jumbo v1, "Death Metal"

    #@cc
    const/16 v2, 0x16

    #@ce
    aput-object v1, v0, v2

    #@d0
    .line 174
    const-string/jumbo v1, "Pranks"

    #@d3
    const/16 v2, 0x17

    #@d5
    aput-object v1, v0, v2

    #@d7
    .line 175
    const-string/jumbo v1, "Soundtrack"

    #@da
    const/16 v2, 0x18

    #@dc
    aput-object v1, v0, v2

    #@de
    .line 176
    const-string/jumbo v1, "Euro-Techno"

    #@e1
    const/16 v2, 0x19

    #@e3
    aput-object v1, v0, v2

    #@e5
    .line 177
    const-string/jumbo v1, "Ambient"

    #@e8
    const/16 v2, 0x1a

    #@ea
    aput-object v1, v0, v2

    #@ec
    .line 178
    const-string/jumbo v1, "Trip-Hop"

    #@ef
    const/16 v2, 0x1b

    #@f1
    aput-object v1, v0, v2

    #@f3
    .line 179
    const-string/jumbo v1, "Vocal"

    #@f6
    const/16 v2, 0x1c

    #@f8
    aput-object v1, v0, v2

    #@fa
    .line 180
    const-string/jumbo v1, "Jazz+Funk"

    #@fd
    const/16 v2, 0x1d

    #@ff
    aput-object v1, v0, v2

    #@101
    .line 181
    const-string/jumbo v1, "Fusion"

    #@104
    const/16 v2, 0x1e

    #@106
    aput-object v1, v0, v2

    #@108
    .line 182
    const-string/jumbo v1, "Trance"

    #@10b
    const/16 v2, 0x1f

    #@10d
    aput-object v1, v0, v2

    #@10f
    .line 183
    const-string/jumbo v1, "Classical"

    #@112
    const/16 v2, 0x20

    #@114
    aput-object v1, v0, v2

    #@116
    .line 184
    const-string/jumbo v1, "Instrumental"

    #@119
    const/16 v2, 0x21

    #@11b
    aput-object v1, v0, v2

    #@11d
    .line 185
    const-string/jumbo v1, "Acid"

    #@120
    const/16 v2, 0x22

    #@122
    aput-object v1, v0, v2

    #@124
    .line 186
    const-string/jumbo v1, "House"

    #@127
    const/16 v2, 0x23

    #@129
    aput-object v1, v0, v2

    #@12b
    .line 187
    const-string/jumbo v1, "Game"

    #@12e
    const/16 v2, 0x24

    #@130
    aput-object v1, v0, v2

    #@132
    .line 188
    const-string/jumbo v1, "Sound Clip"

    #@135
    const/16 v2, 0x25

    #@137
    aput-object v1, v0, v2

    #@139
    .line 189
    const-string/jumbo v1, "Gospel"

    #@13c
    const/16 v2, 0x26

    #@13e
    aput-object v1, v0, v2

    #@140
    .line 190
    const-string/jumbo v1, "Noise"

    #@143
    const/16 v2, 0x27

    #@145
    aput-object v1, v0, v2

    #@147
    .line 191
    const-string/jumbo v1, "AlternRock"

    #@14a
    const/16 v2, 0x28

    #@14c
    aput-object v1, v0, v2

    #@14e
    .line 192
    const-string/jumbo v1, "Bass"

    #@151
    const/16 v2, 0x29

    #@153
    aput-object v1, v0, v2

    #@155
    .line 193
    const-string/jumbo v1, "Soul"

    #@158
    const/16 v2, 0x2a

    #@15a
    aput-object v1, v0, v2

    #@15c
    .line 194
    const-string/jumbo v1, "Punk"

    #@15f
    const/16 v2, 0x2b

    #@161
    aput-object v1, v0, v2

    #@163
    .line 195
    const-string/jumbo v1, "Space"

    #@166
    const/16 v2, 0x2c

    #@168
    aput-object v1, v0, v2

    #@16a
    .line 196
    const-string/jumbo v1, "Meditative"

    #@16d
    const/16 v2, 0x2d

    #@16f
    aput-object v1, v0, v2

    #@171
    .line 197
    const-string/jumbo v1, "Instrumental Pop"

    #@174
    const/16 v2, 0x2e

    #@176
    aput-object v1, v0, v2

    #@178
    .line 198
    const-string/jumbo v1, "Instrumental Rock"

    #@17b
    const/16 v2, 0x2f

    #@17d
    aput-object v1, v0, v2

    #@17f
    .line 199
    const-string/jumbo v1, "Ethnic"

    #@182
    const/16 v2, 0x30

    #@184
    aput-object v1, v0, v2

    #@186
    .line 200
    const-string/jumbo v1, "Gothic"

    #@189
    const/16 v2, 0x31

    #@18b
    aput-object v1, v0, v2

    #@18d
    .line 201
    const-string/jumbo v1, "Darkwave"

    #@190
    const/16 v2, 0x32

    #@192
    aput-object v1, v0, v2

    #@194
    .line 202
    const-string/jumbo v1, "Techno-Industrial"

    #@197
    const/16 v2, 0x33

    #@199
    aput-object v1, v0, v2

    #@19b
    .line 203
    const-string/jumbo v1, "Electronic"

    #@19e
    const/16 v2, 0x34

    #@1a0
    aput-object v1, v0, v2

    #@1a2
    .line 204
    const-string/jumbo v1, "Pop-Folk"

    #@1a5
    const/16 v2, 0x35

    #@1a7
    aput-object v1, v0, v2

    #@1a9
    .line 205
    const-string/jumbo v1, "Eurodance"

    #@1ac
    const/16 v2, 0x36

    #@1ae
    aput-object v1, v0, v2

    #@1b0
    .line 206
    const-string/jumbo v1, "Dream"

    #@1b3
    const/16 v2, 0x37

    #@1b5
    aput-object v1, v0, v2

    #@1b7
    .line 207
    const-string/jumbo v1, "Southern Rock"

    #@1ba
    const/16 v2, 0x38

    #@1bc
    aput-object v1, v0, v2

    #@1be
    .line 208
    const-string/jumbo v1, "Comedy"

    #@1c1
    const/16 v2, 0x39

    #@1c3
    aput-object v1, v0, v2

    #@1c5
    .line 209
    const-string/jumbo v1, "Cult"

    #@1c8
    const/16 v2, 0x3a

    #@1ca
    aput-object v1, v0, v2

    #@1cc
    .line 210
    const-string/jumbo v1, "Gangsta"

    #@1cf
    const/16 v2, 0x3b

    #@1d1
    aput-object v1, v0, v2

    #@1d3
    .line 211
    const-string/jumbo v1, "Top 40"

    #@1d6
    const/16 v2, 0x3c

    #@1d8
    aput-object v1, v0, v2

    #@1da
    .line 212
    const-string/jumbo v1, "Christian Rap"

    #@1dd
    const/16 v2, 0x3d

    #@1df
    aput-object v1, v0, v2

    #@1e1
    .line 213
    const-string/jumbo v1, "Pop/Funk"

    #@1e4
    const/16 v2, 0x3e

    #@1e6
    aput-object v1, v0, v2

    #@1e8
    .line 214
    const-string/jumbo v1, "Jungle"

    #@1eb
    const/16 v2, 0x3f

    #@1ed
    aput-object v1, v0, v2

    #@1ef
    .line 215
    const-string/jumbo v1, "Native American"

    #@1f2
    const/16 v2, 0x40

    #@1f4
    aput-object v1, v0, v2

    #@1f6
    .line 216
    const-string/jumbo v1, "Cabaret"

    #@1f9
    const/16 v2, 0x41

    #@1fb
    aput-object v1, v0, v2

    #@1fd
    .line 217
    const-string/jumbo v1, "New Wave"

    #@200
    const/16 v2, 0x42

    #@202
    aput-object v1, v0, v2

    #@204
    .line 218
    const-string/jumbo v1, "Psychadelic"

    #@207
    const/16 v2, 0x43

    #@209
    aput-object v1, v0, v2

    #@20b
    .line 219
    const-string/jumbo v1, "Rave"

    #@20e
    const/16 v2, 0x44

    #@210
    aput-object v1, v0, v2

    #@212
    .line 220
    const-string/jumbo v1, "Showtunes"

    #@215
    const/16 v2, 0x45

    #@217
    aput-object v1, v0, v2

    #@219
    .line 221
    const-string/jumbo v1, "Trailer"

    #@21c
    const/16 v2, 0x46

    #@21e
    aput-object v1, v0, v2

    #@220
    .line 222
    const-string/jumbo v1, "Lo-Fi"

    #@223
    const/16 v2, 0x47

    #@225
    aput-object v1, v0, v2

    #@227
    .line 223
    const-string/jumbo v1, "Tribal"

    #@22a
    const/16 v2, 0x48

    #@22c
    aput-object v1, v0, v2

    #@22e
    .line 224
    const-string/jumbo v1, "Acid Punk"

    #@231
    const/16 v2, 0x49

    #@233
    aput-object v1, v0, v2

    #@235
    .line 225
    const-string/jumbo v1, "Acid Jazz"

    #@238
    const/16 v2, 0x4a

    #@23a
    aput-object v1, v0, v2

    #@23c
    .line 226
    const-string/jumbo v1, "Polka"

    #@23f
    const/16 v2, 0x4b

    #@241
    aput-object v1, v0, v2

    #@243
    .line 227
    const-string/jumbo v1, "Retro"

    #@246
    const/16 v2, 0x4c

    #@248
    aput-object v1, v0, v2

    #@24a
    .line 228
    const-string/jumbo v1, "Musical"

    #@24d
    const/16 v2, 0x4d

    #@24f
    aput-object v1, v0, v2

    #@251
    .line 229
    const-string/jumbo v1, "Rock & Roll"

    #@254
    const/16 v2, 0x4e

    #@256
    aput-object v1, v0, v2

    #@258
    .line 230
    const-string/jumbo v1, "Hard Rock"

    #@25b
    const/16 v2, 0x4f

    #@25d
    aput-object v1, v0, v2

    #@25f
    .line 232
    const-string/jumbo v1, "Folk"

    #@262
    const/16 v2, 0x50

    #@264
    aput-object v1, v0, v2

    #@266
    .line 233
    const-string/jumbo v1, "Folk-Rock"

    #@269
    const/16 v2, 0x51

    #@26b
    aput-object v1, v0, v2

    #@26d
    .line 234
    const-string/jumbo v1, "National Folk"

    #@270
    const/16 v2, 0x52

    #@272
    aput-object v1, v0, v2

    #@274
    .line 235
    const-string/jumbo v1, "Swing"

    #@277
    const/16 v2, 0x53

    #@279
    aput-object v1, v0, v2

    #@27b
    .line 236
    const-string/jumbo v1, "Fast Fusion"

    #@27e
    const/16 v2, 0x54

    #@280
    aput-object v1, v0, v2

    #@282
    .line 237
    const-string/jumbo v1, "Bebob"

    #@285
    const/16 v2, 0x55

    #@287
    aput-object v1, v0, v2

    #@289
    .line 238
    const-string/jumbo v1, "Latin"

    #@28c
    const/16 v2, 0x56

    #@28e
    aput-object v1, v0, v2

    #@290
    .line 239
    const-string/jumbo v1, "Revival"

    #@293
    const/16 v2, 0x57

    #@295
    aput-object v1, v0, v2

    #@297
    .line 240
    const-string/jumbo v1, "Celtic"

    #@29a
    const/16 v2, 0x58

    #@29c
    aput-object v1, v0, v2

    #@29e
    .line 241
    const-string/jumbo v1, "Bluegrass"

    #@2a1
    const/16 v2, 0x59

    #@2a3
    aput-object v1, v0, v2

    #@2a5
    .line 242
    const-string/jumbo v1, "Avantgarde"

    #@2a8
    const/16 v2, 0x5a

    #@2aa
    aput-object v1, v0, v2

    #@2ac
    .line 243
    const-string/jumbo v1, "Gothic Rock"

    #@2af
    const/16 v2, 0x5b

    #@2b1
    aput-object v1, v0, v2

    #@2b3
    .line 244
    const-string/jumbo v1, "Progressive Rock"

    #@2b6
    const/16 v2, 0x5c

    #@2b8
    aput-object v1, v0, v2

    #@2ba
    .line 245
    const-string/jumbo v1, "Psychedelic Rock"

    #@2bd
    const/16 v2, 0x5d

    #@2bf
    aput-object v1, v0, v2

    #@2c1
    .line 246
    const-string/jumbo v1, "Symphonic Rock"

    #@2c4
    const/16 v2, 0x5e

    #@2c6
    aput-object v1, v0, v2

    #@2c8
    .line 247
    const-string/jumbo v1, "Slow Rock"

    #@2cb
    const/16 v2, 0x5f

    #@2cd
    aput-object v1, v0, v2

    #@2cf
    .line 248
    const-string/jumbo v1, "Big Band"

    #@2d2
    const/16 v2, 0x60

    #@2d4
    aput-object v1, v0, v2

    #@2d6
    .line 249
    const-string/jumbo v1, "Chorus"

    #@2d9
    const/16 v2, 0x61

    #@2db
    aput-object v1, v0, v2

    #@2dd
    .line 250
    const-string/jumbo v1, "Easy Listening"

    #@2e0
    const/16 v2, 0x62

    #@2e2
    aput-object v1, v0, v2

    #@2e4
    .line 251
    const-string/jumbo v1, "Acoustic"

    #@2e7
    const/16 v2, 0x63

    #@2e9
    aput-object v1, v0, v2

    #@2eb
    .line 252
    const-string/jumbo v1, "Humour"

    #@2ee
    const/16 v2, 0x64

    #@2f0
    aput-object v1, v0, v2

    #@2f2
    .line 253
    const-string/jumbo v1, "Speech"

    #@2f5
    const/16 v2, 0x65

    #@2f7
    aput-object v1, v0, v2

    #@2f9
    .line 254
    const-string/jumbo v1, "Chanson"

    #@2fc
    const/16 v2, 0x66

    #@2fe
    aput-object v1, v0, v2

    #@300
    .line 255
    const-string/jumbo v1, "Opera"

    #@303
    const/16 v2, 0x67

    #@305
    aput-object v1, v0, v2

    #@307
    .line 256
    const-string/jumbo v1, "Chamber Music"

    #@30a
    const/16 v2, 0x68

    #@30c
    aput-object v1, v0, v2

    #@30e
    .line 257
    const-string/jumbo v1, "Sonata"

    #@311
    const/16 v2, 0x69

    #@313
    aput-object v1, v0, v2

    #@315
    .line 258
    const-string/jumbo v1, "Symphony"

    #@318
    const/16 v2, 0x6a

    #@31a
    aput-object v1, v0, v2

    #@31c
    .line 259
    const-string/jumbo v1, "Booty Bass"

    #@31f
    const/16 v2, 0x6b

    #@321
    aput-object v1, v0, v2

    #@323
    .line 260
    const-string/jumbo v1, "Primus"

    #@326
    const/16 v2, 0x6c

    #@328
    aput-object v1, v0, v2

    #@32a
    .line 261
    const-string/jumbo v1, "Porn Groove"

    #@32d
    const/16 v2, 0x6d

    #@32f
    aput-object v1, v0, v2

    #@331
    .line 262
    const-string/jumbo v1, "Satire"

    #@334
    const/16 v2, 0x6e

    #@336
    aput-object v1, v0, v2

    #@338
    .line 263
    const-string/jumbo v1, "Slow Jam"

    #@33b
    const/16 v2, 0x6f

    #@33d
    aput-object v1, v0, v2

    #@33f
    .line 264
    const-string/jumbo v1, "Club"

    #@342
    const/16 v2, 0x70

    #@344
    aput-object v1, v0, v2

    #@346
    .line 265
    const-string/jumbo v1, "Tango"

    #@349
    const/16 v2, 0x71

    #@34b
    aput-object v1, v0, v2

    #@34d
    .line 266
    const-string/jumbo v1, "Samba"

    #@350
    const/16 v2, 0x72

    #@352
    aput-object v1, v0, v2

    #@354
    .line 267
    const-string/jumbo v1, "Folklore"

    #@357
    const/16 v2, 0x73

    #@359
    aput-object v1, v0, v2

    #@35b
    .line 268
    const-string/jumbo v1, "Ballad"

    #@35e
    const/16 v2, 0x74

    #@360
    aput-object v1, v0, v2

    #@362
    .line 269
    const-string/jumbo v1, "Power Ballad"

    #@365
    const/16 v2, 0x75

    #@367
    aput-object v1, v0, v2

    #@369
    .line 270
    const-string/jumbo v1, "Rhythmic Soul"

    #@36c
    const/16 v2, 0x76

    #@36e
    aput-object v1, v0, v2

    #@370
    .line 271
    const-string/jumbo v1, "Freestyle"

    #@373
    const/16 v2, 0x77

    #@375
    aput-object v1, v0, v2

    #@377
    .line 272
    const-string/jumbo v1, "Duet"

    #@37a
    const/16 v2, 0x78

    #@37c
    aput-object v1, v0, v2

    #@37e
    .line 273
    const-string/jumbo v1, "Punk Rock"

    #@381
    const/16 v2, 0x79

    #@383
    aput-object v1, v0, v2

    #@385
    .line 274
    const-string/jumbo v1, "Drum Solo"

    #@388
    const/16 v2, 0x7a

    #@38a
    aput-object v1, v0, v2

    #@38c
    .line 275
    const-string/jumbo v1, "A capella"

    #@38f
    const/16 v2, 0x7b

    #@391
    aput-object v1, v0, v2

    #@393
    .line 276
    const-string/jumbo v1, "Euro-House"

    #@396
    const/16 v2, 0x7c

    #@398
    aput-object v1, v0, v2

    #@39a
    .line 277
    const-string/jumbo v1, "Dance Hall"

    #@39d
    const/16 v2, 0x7d

    #@39f
    aput-object v1, v0, v2

    #@3a1
    .line 279
    const-string/jumbo v1, "Goa"

    #@3a4
    const/16 v2, 0x7e

    #@3a6
    aput-object v1, v0, v2

    #@3a8
    .line 280
    const-string/jumbo v1, "Drum & Bass"

    #@3ab
    const/16 v2, 0x7f

    #@3ad
    aput-object v1, v0, v2

    #@3af
    .line 281
    const-string/jumbo v1, "Club-House"

    #@3b2
    const/16 v2, 0x80

    #@3b4
    aput-object v1, v0, v2

    #@3b6
    .line 282
    const-string/jumbo v1, "Hardcore"

    #@3b9
    const/16 v2, 0x81

    #@3bb
    aput-object v1, v0, v2

    #@3bd
    .line 283
    const-string/jumbo v1, "Terror"

    #@3c0
    const/16 v2, 0x82

    #@3c2
    aput-object v1, v0, v2

    #@3c4
    .line 284
    const-string/jumbo v1, "Indie"

    #@3c7
    const/16 v2, 0x83

    #@3c9
    aput-object v1, v0, v2

    #@3cb
    .line 285
    const-string/jumbo v1, "Britpop"

    #@3ce
    const/16 v2, 0x84

    #@3d0
    aput-object v1, v0, v2

    #@3d2
    .line 286
    const/4 v1, 0x0

    #@3d3
    const/16 v2, 0x85

    #@3d5
    aput-object v1, v0, v2

    #@3d7
    .line 287
    const-string/jumbo v1, "Polsk Punk"

    #@3da
    const/16 v2, 0x86

    #@3dc
    aput-object v1, v0, v2

    #@3de
    .line 288
    const-string/jumbo v1, "Beat"

    #@3e1
    const/16 v2, 0x87

    #@3e3
    aput-object v1, v0, v2

    #@3e5
    .line 289
    const-string/jumbo v1, "Christian Gangsta"

    #@3e8
    const/16 v2, 0x88

    #@3ea
    aput-object v1, v0, v2

    #@3ec
    .line 290
    const-string/jumbo v1, "Heavy Metal"

    #@3ef
    const/16 v2, 0x89

    #@3f1
    aput-object v1, v0, v2

    #@3f3
    .line 291
    const-string/jumbo v1, "Black Metal"

    #@3f6
    const/16 v2, 0x8a

    #@3f8
    aput-object v1, v0, v2

    #@3fa
    .line 292
    const-string/jumbo v1, "Crossover"

    #@3fd
    const/16 v2, 0x8b

    #@3ff
    aput-object v1, v0, v2

    #@401
    .line 293
    const-string/jumbo v1, "Contemporary Christian"

    #@404
    const/16 v2, 0x8c

    #@406
    aput-object v1, v0, v2

    #@408
    .line 294
    const-string/jumbo v1, "Christian Rock"

    #@40b
    const/16 v2, 0x8d

    #@40d
    aput-object v1, v0, v2

    #@40f
    .line 295
    const-string/jumbo v1, "Merengue"

    #@412
    const/16 v2, 0x8e

    #@414
    aput-object v1, v0, v2

    #@416
    .line 296
    const-string/jumbo v1, "Salsa"

    #@419
    const/16 v2, 0x8f

    #@41b
    aput-object v1, v0, v2

    #@41d
    .line 297
    const-string/jumbo v1, "Thrash Metal"

    #@420
    const/16 v2, 0x90

    #@422
    aput-object v1, v0, v2

    #@424
    .line 298
    const-string/jumbo v1, "Anime"

    #@427
    const/16 v2, 0x91

    #@429
    aput-object v1, v0, v2

    #@42b
    .line 299
    const-string/jumbo v1, "JPop"

    #@42e
    const/16 v2, 0x92

    #@430
    aput-object v1, v0, v2

    #@432
    .line 300
    const-string/jumbo v1, "Synthpop"

    #@435
    const/16 v2, 0x93

    #@437
    aput-object v1, v0, v2

    #@439
    .line 149
    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    #@43b
    .line 1410
    new-instance v0, Ljava/util/HashMap;

    #@43d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@440
    sput-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    #@442
    .line 1411
    new-instance v0, Ljava/util/HashMap;

    #@444
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@447
    sput-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    #@449
    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 328
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    #@8
    .line 352
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    #@a
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@d
    iput-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    #@f
    .line 381
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@16
    .line 387
    iput-object v2, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    #@18
    .line 412
    new-instance v0, Landroid/media/MediaScanner$MyMediaScannerClient;

    #@1a
    invoke-direct {v0, p0, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$MyMediaScannerClient;)V

    #@1d
    iput-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    #@1f
    .line 390
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    #@22
    .line 391
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    #@24
    .line 392
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@2a
    .line 393
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    #@2c
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@2e
    .line 394
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    #@30
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@32
    .line 396
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    #@35
    .line 398
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    #@3f
    .line 399
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    #@42
    move-result v0

    #@43
    iput-boolean v0, p0, Landroid/media/MediaScanner;->mExternalIsEmulated:Z

    #@45
    .line 389
    return-void
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1602
    new-instance v1, Landroid/media/MediaScanner$PlaylistEntry;

    #@3
    const/4 v4, 0x0

    #@4
    invoke-direct {v1, v4}, Landroid/media/MediaScanner$PlaylistEntry;-><init>(Landroid/media/MediaScanner$PlaylistEntry;)V

    #@7
    .line 1604
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    .line 1605
    .local v2, "entryLength":I
    :goto_0
    if-lez v2, :cond_0

    #@d
    add-int/lit8 v4, v2, -0x1

    #@f
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v4

    #@13
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_0

    #@19
    add-int/lit8 v2, v2, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1608
    :cond_0
    const/4 v4, 0x3

    #@1d
    if-ge v2, v4, :cond_1

    #@1f
    return-void

    #@20
    .line 1609
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@23
    move-result v4

    #@24
    if-ge v2, v4, :cond_2

    #@26
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object p1

    #@2a
    .line 1613
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v0

    #@2e
    .line 1614
    .local v0, "ch1":C
    const/16 v4, 0x2f

    #@30
    if-eq v0, v4, :cond_4

    #@32
    .line 1615
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_5

    #@38
    const/4 v4, 0x1

    #@39
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@3c
    move-result v4

    #@3d
    const/16 v5, 0x3a

    #@3f
    if-ne v4, v5, :cond_5

    #@41
    const/4 v4, 0x2

    #@42
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@45
    move-result v4

    #@46
    const/16 v5, 0x5c

    #@48
    if-ne v4, v5, :cond_5

    #@4a
    const/4 v3, 0x1

    #@4b
    .line 1617
    .local v3, "fullPath":Z
    :goto_1
    if-nez v3, :cond_3

    #@4d
    .line 1618
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
    .line 1619
    :cond_3
    iput-object p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    #@60
    .line 1622
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@62
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@65
    .line 1601
    return-void

    #@66
    .line 1614
    .end local v3    # "fullPath":Z
    :cond_4
    const/4 v3, 0x1

    #@67
    .restart local v3    # "fullPath":Z
    goto :goto_1

    #@68
    .line 1615
    .end local v3    # "fullPath":Z
    :cond_5
    const/4 v3, 0x0

    #@69
    .restart local v3    # "fullPath":Z
    goto :goto_1
.end method

.method public static clearMediaPathCache(ZZ)V
    .locals 2
    .param p0, "clearMediaPaths"    # Z
    .param p1, "clearNoMediaPaths"    # Z

    #@0
    .prologue
    .line 1415
    const-class v1, Landroid/media/MediaScanner;

    #@2
    monitor-enter v1

    #@3
    .line 1416
    if-eqz p0, :cond_0

    #@5
    .line 1417
    :try_start_0
    sget-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    #@7
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@a
    .line 1419
    :cond_0
    if-eqz p1, :cond_1

    #@c
    .line 1420
    sget-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    #@e
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_1
    monitor-exit v1

    #@12
    .line 1414
    return-void

    #@13
    .line 1415
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
    .line 1168
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    array-length v2, p2

    #@2
    if-ge v1, v2, :cond_1

    #@4
    .line 1169
    aget-object v0, p2, v1

    #@6
    .line 1170
    .local v0, "directory":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1171
    const/4 v2, 0x1

    #@d
    return v2

    #@e
    .line 1168
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1174
    .end local v0    # "directory":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@12
    return v2
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 4
    .param p1, "volumeName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1287
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    const-string/jumbo v1, "media"

    #@a
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@10
    .line 1289
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    #@16
    .line 1290
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    #@1c
    .line 1291
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    #@22
    .line 1292
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    #@28
    .line 1293
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    #@2e
    .line 1294
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    #@30
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@33
    move-result-object v0

    #@34
    const-string/jumbo v1, "nonotify"

    #@37
    const-string/jumbo v2, "1"

    #@3a
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    #@44
    .line 1296
    const-string/jumbo v0, "internal"

    #@47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v0

    #@4b
    if-nez v0, :cond_0

    #@4d
    .line 1298
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    #@4f
    .line 1299
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    #@51
    .line 1300
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@54
    move-result-object v0

    #@55
    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    #@57
    .line 1302
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    #@59
    .line 1286
    :cond_0
    return-void
.end method

.method private isDrmEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 415
    const-string/jumbo v1, "drm.service.enabled"

    #@3
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 416
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
    .line 1377
    new-instance v6, Ljava/io/File;

    #@6
    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    .line 1378
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    return v4

    #@10
    .line 1383
    :cond_0
    const/16 v0, 0x2f

    #@12
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    #@15
    move-result v7

    #@16
    .line 1384
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
    .line 1386
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
    .line 1387
    return v1

    #@2d
    .line 1393
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
    .line 1394
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
    .line 1395
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
    .line 1394
    if-eqz v0, :cond_3

    #@59
    .line 1396
    :cond_2
    return v1

    #@5a
    .line 1398
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5d
    move-result v0

    #@5e
    sub-int/2addr v0, v7

    #@5f
    add-int/lit8 v8, v0, -0x1

    #@61
    .line 1399
    .local v8, "length":I
    const/16 v0, 0x11

    #@63
    if-ne v8, v0, :cond_4

    #@65
    .line 1400
    add-int/lit8 v2, v7, 0x1

    #@67
    const-string/jumbo v3, "AlbumArtSmall"

    #@6a
    const/16 v5, 0xd

    #@6c
    move-object v0, p0

    #@6d
    .line 1399
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@70
    move-result v0

    #@71
    if-nez v0, :cond_5

    #@73
    .line 1401
    :cond_4
    if-ne v8, v9, :cond_6

    #@75
    .line 1402
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
    .line 1399
    if-eqz v0, :cond_6

    #@82
    .line 1403
    :cond_5
    return v1

    #@83
    .line 1407
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
    .line 1426
    if-nez p0, :cond_0

    #@6
    .line 1427
    return v6

    #@7
    .line 1430
    :cond_0
    const-string/jumbo v5, "/."

    #@a
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@d
    move-result v5

    #@e
    if-ltz v5, :cond_1

    #@10
    .line 1431
    return v8

    #@11
    .line 1434
    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    #@14
    move-result v1

    #@15
    .line 1435
    .local v1, "firstSlash":I
    if-gtz v1, :cond_2

    #@17
    .line 1436
    return v6

    #@18
    .line 1438
    :cond_2
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 1440
    .local v3, "parent":Ljava/lang/String;
    const-class v6, Landroid/media/MediaScanner;

    #@1e
    monitor-enter v6

    #@1f
    .line 1441
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
    .line 1442
    return v8

    #@29
    .line 1443
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
    .line 1446
    const/4 v2, 0x1

    #@32
    .line 1447
    .local v2, "offset":I
    :goto_0
    if-ltz v2, :cond_5

    #@34
    .line 1448
    const/16 v5, 0x2f

    #@36
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    #@39
    move-result v4

    #@3a
    .line 1449
    .local v4, "slashIndex":I
    if-le v4, v2, :cond_4

    #@3c
    .line 1450
    add-int/lit8 v4, v4, 0x1

    #@3e
    .line 1451
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
    .line 1452
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@5f
    move-result v5

    #@60
    if-eqz v5, :cond_4

    #@62
    .line 1454
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
    .line 1455
    return v8

    #@6c
    .line 1458
    .end local v0    # "file":Ljava/io/File;
    :cond_4
    move v2, v4

    #@6d
    goto :goto_0

    #@6e
    .line 1460
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
    .line 1464
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    #@7a
    move-result v5

    #@7b
    return v5

    #@7c
    .line 1440
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
    .line 1578
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v3

    #@9
    .line 1579
    .local v3, "len":I
    const/4 v0, 0x1

    #@a
    .line 1580
    .local v0, "done":Z
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    #@d
    .line 1581
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/media/MediaScanner$PlaylistEntry;

    #@15
    .line 1582
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    #@17
    if-ne v5, v6, :cond_1

    #@19
    .line 1580
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1585
    :cond_1
    const/4 v0, 0x0

    #@1d
    .line 1586
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    #@1f
    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_2

    #@25
    .line 1587
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    #@27
    .line 1588
    iput v6, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    #@29
    goto :goto_1

    #@2a
    .line 1592
    :cond_2
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    #@2c
    invoke-direct {p0, p3, v5}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    move-result v4

    #@30
    .line 1593
    .local v4, "matchLength":I
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    #@32
    if-le v4, v5, :cond_0

    #@34
    .line 1594
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    #@36
    .line 1595
    iput v4, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    #@38
    goto :goto_1

    #@39
    .line 1598
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
    .line 1551
    const/4 v10, 0x0

    #@1
    .line 1552
    .local v10, "result":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v8

    #@5
    .line 1553
    .local v8, "end1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@8
    move-result v9

    #@9
    .line 1555
    .local v9, "end2":I
    :goto_0
    if-lez v8, :cond_0

    #@b
    if-lez v9, :cond_0

    #@d
    .line 1556
    const/16 v0, 0x2f

    #@f
    add-int/lit8 v1, v8, -0x1

    #@11
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    #@14
    move-result v11

    #@15
    .line 1557
    .local v11, "slash1":I
    const/16 v0, 0x2f

    #@17
    add-int/lit8 v1, v9, -0x1

    #@19
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    #@1c
    move-result v12

    #@1d
    .line 1558
    .local v12, "slash2":I
    const/16 v0, 0x5c

    #@1f
    add-int/lit8 v1, v8, -0x1

    #@21
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    #@24
    move-result v6

    #@25
    .line 1559
    .local v6, "backSlash1":I
    const/16 v0, 0x5c

    #@27
    add-int/lit8 v1, v9, -0x1

    #@29
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    #@2c
    move-result v7

    #@2d
    .line 1560
    .local v7, "backSlash2":I
    if-le v11, v6, :cond_1

    #@2f
    move v2, v11

    #@30
    .line 1561
    .local v2, "start1":I
    :goto_1
    if-le v12, v7, :cond_2

    #@32
    move v4, v12

    #@33
    .line 1562
    .local v4, "start2":I
    :goto_2
    if-gez v2, :cond_3

    #@35
    const/4 v2, 0x0

    #@36
    .line 1563
    :goto_3
    if-gez v4, :cond_4

    #@38
    const/4 v4, 0x0

    #@39
    .line 1564
    :goto_4
    sub-int v5, v8, v2

    #@3b
    .line 1565
    .local v5, "length":I
    sub-int v0, v9, v4

    #@3d
    if-eq v0, v5, :cond_5

    #@3f
    .line 1573
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
    .line 1560
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
    .line 1561
    :cond_2
    move v4, v7

    #@43
    .restart local v4    # "start2":I
    goto :goto_2

    #@44
    .line 1562
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_3

    #@47
    .line 1563
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@49
    goto :goto_4

    #@4a
    .line 1566
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
    .line 1567
    add-int/lit8 v10, v10, 0x1

    #@55
    .line 1568
    add-int/lit8 v8, v2, -0x1

    #@57
    .line 1569
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
    .locals 3
    .param p1, "directories"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1266
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1267
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    #@8
    .line 1270
    :cond_0
    iget v0, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    #@a
    if-nez v0, :cond_1

    #@c
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    #@e
    const-string/jumbo v1, "external"

    #@11
    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 1271
    invoke-direct {p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    #@1e
    .line 1274
    :cond_1
    iput-object v2, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    #@20
    .line 1275
    iput-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@22
    .line 1263
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .locals 36
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prescanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1054
    const/16 v19, 0x0

    #@2
    .line 1055
    .local v19, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    #@3
    .line 1056
    .local v8, "where":Ljava/lang/String;
    const/4 v9, 0x0

    #@4
    .line 1058
    .local v9, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@6
    iget-object v4, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    #@8
    if-nez v4, :cond_5

    #@a
    .line 1059
    new-instance v4, Ljava/util/ArrayList;

    #@c
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@f
    move-object/from16 v0, p0

    #@11
    iput-object v4, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    #@13
    .line 1064
    :goto_0
    if-eqz p1, :cond_6

    #@15
    .line 1066
    const-string/jumbo v8, "_id>? AND _data=?"

    #@18
    .line 1068
    .local v8, "where":Ljava/lang/String;
    const/4 v4, 0x2

    #@19
    new-array v9, v4, [Ljava/lang/String;

    #@1b
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, ""

    #@1e
    const/4 v5, 0x0

    #@1f
    aput-object v4, v9, v5

    #@21
    const/4 v4, 0x1

    #@22
    aput-object p1, v9, v4

    #@24
    .line 1078
    .local v9, "selectionArgs":[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    #@26
    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    #@28
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@2b
    move-result-object v18

    #@2c
    .line 1079
    .local v18, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v4, "deletedata"

    #@2f
    const-string/jumbo v5, "false"

    #@32
    move-object/from16 v0, v18

    #@34
    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@37
    .line 1080
    new-instance v20, Landroid/media/MediaScanner$MediaBulkDeleter;

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@41
    .line 1081
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@44
    move-result-object v7

    #@45
    .line 1080
    move-object/from16 v0, v20

    #@47
    invoke-direct {v0, v4, v5, v7}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;)V

    #@4a
    .line 1085
    .local v20, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    if-eqz p2, :cond_2

    #@4c
    .line 1090
    const-wide/high16 v26, -0x8000000000000000L

    #@4e
    .line 1091
    .local v26, "lastId":J
    :try_start_0
    move-object/from16 v0, p0

    #@50
    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    #@52
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@55
    move-result-object v4

    #@56
    const-string/jumbo v5, "limit"

    #@59
    const-string/jumbo v7, "1000"

    #@5c
    invoke-virtual {v4, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@63
    move-result-object v6

    #@64
    .line 1092
    .local v6, "limitUri":Landroid/net/Uri;
    const/4 v4, 0x1

    #@65
    move-object/from16 v0, p0

    #@67
    iput-boolean v4, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    #@69
    .line 1095
    .end local v19    # "c":Landroid/database/Cursor;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v5, ""

    #@71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    move-wide/from16 v0, v26

    #@77
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    const/4 v5, 0x0

    #@80
    aput-object v4, v9, v5

    #@82
    .line 1096
    if-eqz v19, :cond_1

    #@84
    .line 1097
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    #@87
    .line 1098
    const/16 v19, 0x0

    #@89
    .line 1100
    :cond_1
    move-object/from16 v0, p0

    #@8b
    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@91
    sget-object v7, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    #@93
    .line 1101
    const-string/jumbo v10, "_id"

    #@96
    const/4 v11, 0x0

    #@97
    .line 1100
    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9a
    move-result-object v19

    #@9b
    .line 1102
    .local v19, "c":Landroid/database/Cursor;
    if-nez v19, :cond_7

    #@9d
    .line 1152
    .end local v6    # "limitUri":Landroid/net/Uri;
    .end local v19    # "c":Landroid/database/Cursor;
    .end local v26    # "lastId":J
    :cond_2
    if-eqz v19, :cond_3

    #@9f
    .line 1153
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    #@a2
    .line 1155
    :cond_3
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    #@a5
    .line 1159
    const/4 v4, 0x0

    #@a6
    move-object/from16 v0, p0

    #@a8
    iput v4, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    #@aa
    .line 1160
    move-object/from16 v0, p0

    #@ac
    iget-object v10, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-object v11, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@b2
    move-object/from16 v0, p0

    #@b4
    iget-object v12, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    #@b6
    sget-object v13, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    #@b8
    const/4 v14, 0x0

    #@b9
    const/4 v15, 0x0

    #@ba
    const/16 v16, 0x0

    #@bc
    const/16 v17, 0x0

    #@be
    invoke-interface/range {v10 .. v17}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@c1
    move-result-object v19

    #@c2
    .line 1161
    .restart local v19    # "c":Landroid/database/Cursor;
    if-eqz v19, :cond_4

    #@c4
    .line 1162
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    #@c7
    move-result v4

    #@c8
    move-object/from16 v0, p0

    #@ca
    iput v4, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    #@cc
    .line 1163
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    #@cf
    .line 1053
    :cond_4
    return-void

    #@d0
    .line 1061
    .end local v18    # "builder":Landroid/net/Uri$Builder;
    .end local v20    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .local v8, "where":Ljava/lang/String;
    .local v9, "selectionArgs":[Ljava/lang/String;
    .local v19, "c":Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    #@d2
    iget-object v4, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    #@d4
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@d7
    goto/16 :goto_0

    #@d9
    .line 1070
    :cond_6
    const-string/jumbo v8, "_id>?"

    #@dc
    .line 1071
    .local v8, "where":Ljava/lang/String;
    const/4 v4, 0x1

    #@dd
    new-array v9, v4, [Ljava/lang/String;

    #@df
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, ""

    #@e2
    const/4 v5, 0x0

    #@e3
    aput-object v4, v9, v5

    #@e5
    .local v9, "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_1

    #@e7
    .line 1106
    .restart local v6    # "limitUri":Landroid/net/Uri;
    .restart local v18    # "builder":Landroid/net/Uri$Builder;
    .local v19, "c":Landroid/database/Cursor;
    .restart local v20    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v26    # "lastId":J
    :cond_7
    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    #@ea
    move-result v30

    #@eb
    .line 1108
    .local v30, "num":I
    if-eqz v30, :cond_2

    #@ed
    .line 1111
    const/4 v4, 0x0

    #@ee
    move-object/from16 v0, p0

    #@f0
    iput-boolean v4, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    #@f2
    .line 1112
    :cond_8
    :goto_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    #@f5
    move-result v4

    #@f6
    if-eqz v4, :cond_0

    #@f8
    .line 1113
    const/4 v4, 0x0

    #@f9
    move-object/from16 v0, v19

    #@fb
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    #@fe
    move-result-wide v34

    #@ff
    .line 1114
    .local v34, "rowId":J
    const/4 v4, 0x1

    #@100
    move-object/from16 v0, v19

    #@102
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@105
    move-result-object v32

    #@106
    .line 1115
    .local v32, "path":Ljava/lang/String;
    const/4 v4, 0x2

    #@107
    move-object/from16 v0, v19

    #@109
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    #@10c
    move-result v24

    #@10d
    .line 1116
    .local v24, "format":I
    const/4 v4, 0x3

    #@10e
    move-object/from16 v0, v19

    #@110
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    #@113
    move-result-wide v28

    #@114
    .line 1117
    .local v28, "lastModified":J
    move-wide/from16 v26, v34

    #@116
    .line 1122
    if-eqz v32, :cond_8

    #@118
    const-string/jumbo v4, "/"

    #@11b
    move-object/from16 v0, v32

    #@11d
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@120
    move-result v4

    #@121
    if-eqz v4, :cond_8

    #@123
    .line 1123
    const/16 v22, 0x0

    #@125
    .line 1125
    .local v22, "exists":Z
    :try_start_2
    sget v4, Landroid/system/OsConstants;->F_OK:I

    #@127
    move-object/from16 v0, v32

    #@129
    invoke-static {v0, v4}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@12c
    move-result v22

    #@12d
    .line 1128
    .end local v22    # "exists":Z
    :goto_3
    if-nez v22, :cond_8

    #@12f
    :try_start_3
    invoke-static/range {v24 .. v24}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    #@132
    move-result v4

    #@133
    if-nez v4, :cond_8

    #@135
    .line 1133
    invoke-static/range {v32 .. v32}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    #@138
    move-result-object v25

    #@139
    .line 1134
    .local v25, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v25, :cond_a

    #@13b
    const/16 v23, 0x0

    #@13d
    .line 1136
    .local v23, "fileType":I
    :goto_4
    invoke-static/range {v23 .. v23}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    #@140
    move-result v4

    #@141
    if-nez v4, :cond_8

    #@143
    .line 1137
    move-object/from16 v0, v20

    #@145
    move-wide/from16 v1, v34

    #@147
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    #@14a
    .line 1138
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@14c
    move-object/from16 v0, v32

    #@14e
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@151
    move-result-object v4

    #@152
    const-string/jumbo v5, "/.nomedia"

    #@155
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@158
    move-result v4

    #@159
    if-eqz v4, :cond_8

    #@15b
    .line 1139
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    #@15e
    .line 1140
    new-instance v4, Ljava/io/File;

    #@160
    move-object/from16 v0, v32

    #@162
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@165
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@168
    move-result-object v31

    #@169
    .line 1141
    .local v31, "parent":Ljava/lang/String;
    move-object/from16 v0, p0

    #@16b
    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@16d
    move-object/from16 v0, p0

    #@16f
    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@171
    const-string/jumbo v7, "unhide"

    #@174
    .line 1142
    const/4 v10, 0x0

    #@175
    .line 1141
    move-object/from16 v0, v31

    #@177
    invoke-interface {v4, v5, v7, v0, v10}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@17a
    goto/16 :goto_2

    #@17c
    .line 1151
    .end local v6    # "limitUri":Landroid/net/Uri;
    .end local v19    # "c":Landroid/database/Cursor;
    .end local v23    # "fileType":I
    .end local v24    # "format":I
    .end local v25    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .end local v28    # "lastModified":J
    .end local v30    # "num":I
    .end local v31    # "parent":Ljava/lang/String;
    .end local v32    # "path":Ljava/lang/String;
    .end local v34    # "rowId":J
    :catchall_0
    move-exception v4

    #@17d
    .line 1152
    if-eqz v19, :cond_9

    #@17f
    .line 1153
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    #@182
    .line 1155
    :cond_9
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    #@185
    .line 1151
    throw v4

    #@186
    .line 1134
    .restart local v6    # "limitUri":Landroid/net/Uri;
    .restart local v19    # "c":Landroid/database/Cursor;
    .restart local v24    # "format":I
    .restart local v25    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v28    # "lastModified":J
    .restart local v30    # "num":I
    .restart local v32    # "path":Ljava/lang/String;
    .restart local v34    # "rowId":J
    :cond_a
    :try_start_4
    move-object/from16 v0, v25

    #@188
    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    #@18a
    move/from16 v23, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@18c
    .restart local v23    # "fileType":I
    goto :goto_4

    #@18d
    .line 1126
    .end local v23    # "fileType":I
    .end local v25    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v22    # "exists":Z
    :catch_0
    move-exception v21

    #@18e
    .local v21, "e1":Landroid/system/ErrnoException;
    goto :goto_3
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
    .line 1626
    const/4 v8, -0x1

    #@2
    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@5
    .line 1627
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    #@8
    move-result v8

    #@9
    if-eqz v8, :cond_1

    #@b
    .line 1628
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    #@e
    move-result-wide v6

    #@f
    .line 1629
    .local v6, "rowId":J
    const/4 v8, 0x1

    #@10
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 1630
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v6, v7, v0}, Landroid/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    #@17
    move-result v8

    #@18
    if-eqz v8, :cond_0

    #@1a
    .line 1635
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "rowId":J
    :cond_1
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v5

    #@20
    .line 1636
    .local v5, "len":I
    const/4 v4, 0x0

    #@21
    .line 1637
    .local v4, "index":I
    const/4 v3, 0x0

    #@22
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    #@24
    .line 1638
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/media/MediaScanner$PlaylistEntry;

    #@2c
    .line 1639
    .local v2, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v8, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    #@2e
    if-lez v8, :cond_2

    #@30
    .line 1641
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    #@33
    .line 1642
    const-string/jumbo v8, "play_order"

    #@36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v9

    #@3a
    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@3d
    .line 1643
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
    .line 1644
    iget-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@4b
    iget-object v9, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@4d
    invoke-interface {v8, v9, p3, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 1645
    add-int/lit8 v4, v4, 0x1

    #@52
    .line 1637
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@54
    goto :goto_0

    #@55
    .line 1646
    :catch_0
    move-exception v1

    #@56
    .line 1647
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "MediaScanner"

    #@59
    const-string/jumbo v9, "RemoteException in MediaScanner.processCachedPlaylist()"

    #@5c
    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5f
    .line 1648
    return-void

    #@60
    .line 1652
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    :cond_3
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@62
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@65
    .line 1625
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
    .line 1657
    const/4 v3, 0x0

    #@1
    .line 1659
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    #@3
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6
    .line 1660
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_2

    #@c
    .line 1661
    new-instance v4, Ljava/io/BufferedReader;

    #@e
    .line 1662
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
    .line 1661
    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 1663
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@20
    .end local v3    # "reader":Ljava/io/BufferedReader;
    move-result-object v2

    #@21
    .line 1664
    .local v2, "line":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@26
    .line 1665
    :goto_0
    if-eqz v2, :cond_1

    #@28
    .line 1667
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
    .line 1668
    invoke-direct {p0, v2, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    .line 1670
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    goto :goto_0

    #@3f
    .line 1673
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@42
    move-object v3, v4

    #@43
    .line 1679
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v3, :cond_3

    #@45
    .line 1680
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@48
    .line 1656
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    #@49
    .line 1681
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    #@4a
    .line 1682
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "MediaScanner"

    #@4d
    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    #@50
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    goto :goto_1

    #@54
    .line 1675
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    #@55
    .line 1676
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
    .line 1679
    if-eqz v3, :cond_3

    #@60
    .line 1680
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@63
    goto :goto_1

    #@64
    .line 1681
    :catch_2
    move-exception v0

    #@65
    .line 1682
    const-string/jumbo v5, "MediaScanner"

    #@68
    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    #@6b
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6e
    goto :goto_1

    #@6f
    .line 1677
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@70
    .line 1679
    :goto_3
    if-eqz v3, :cond_4

    #@72
    .line 1680
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@75
    .line 1677
    :cond_4
    :goto_4
    throw v5

    #@76
    .line 1681
    :catch_3
    move-exception v0

    #@77
    .line 1682
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "MediaScanner"

    #@7a
    const-string/jumbo v7, "IOException in MediaScanner.processM3uPlayList()"

    #@7d
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@80
    goto :goto_4

    #@81
    .line 1677
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
    .line 1675
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
    .locals 20
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "fileList"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1785
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    #@4
    move-object/from16 v17, v0

    #@6
    .line 1786
    .local v17, "path":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    #@8
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    #@b
    .line 1787
    .local v5, "values":Landroid/content/ContentValues;
    const/16 v2, 0x2f

    #@d
    move-object/from16 v0, v17

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@12
    move-result v14

    #@13
    .line 1788
    .local v14, "lastSlash":I
    if-gez v14, :cond_0

    #@15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v6, "bad path "

    #@1f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    move-object/from16 v0, v17

    #@25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v2

    #@31
    .line 1790
    :cond_0
    move-object/from16 v0, p1

    #@33
    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    #@35
    move-wide/from16 v18, v0

    #@37
    .line 1793
    .local v18, "rowId":J
    const-string/jumbo v2, "name"

    #@3a
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v16

    #@3e
    .line 1794
    .local v16, "name":Ljava/lang/String;
    if-nez v16, :cond_1

    #@40
    .line 1795
    const-string/jumbo v2, "title"

    #@43
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v16

    #@47
    .line 1796
    if-nez v16, :cond_1

    #@49
    .line 1798
    const/16 v2, 0x2e

    #@4b
    move-object/from16 v0, v17

    #@4d
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@50
    move-result v13

    #@51
    .line 1799
    .local v13, "lastDot":I
    if-gez v13, :cond_3

    #@53
    add-int/lit8 v2, v14, 0x1

    #@55
    move-object/from16 v0, v17

    #@57
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5a
    move-result-object v16

    #@5b
    .line 1804
    .end local v13    # "lastDot":I
    :cond_1
    :goto_0
    const-string/jumbo v2, "name"

    #@5e
    move-object/from16 v0, v16

    #@60
    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@63
    .line 1805
    const-string/jumbo v2, "date_modified"

    #@66
    move-object/from16 v0, p1

    #@68
    iget-wide v6, v0, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    #@6a
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6d
    move-result-object v3

    #@6e
    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@71
    .line 1807
    const-wide/16 v2, 0x0

    #@73
    cmp-long v2, v18, v2

    #@75
    if-nez v2, :cond_4

    #@77
    .line 1808
    const-string/jumbo v2, "_data"

    #@7a
    move-object/from16 v0, v17

    #@7c
    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7f
    .line 1809
    move-object/from16 v0, p0

    #@81
    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@83
    move-object/from16 v0, p0

    #@85
    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@87
    move-object/from16 v0, p0

    #@89
    iget-object v6, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    #@8b
    invoke-interface {v2, v3, v6, v5}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@8e
    move-result-object v4

    #@8f
    .line 1810
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@92
    move-result-wide v18

    #@93
    .line 1811
    const-string/jumbo v2, "members"

    #@96
    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@99
    move-result-object v9

    #@9a
    .line 1821
    .local v9, "membersUri":Landroid/net/Uri;
    :goto_1
    add-int/lit8 v2, v14, 0x1

    #@9c
    const/4 v3, 0x0

    #@9d
    move-object/from16 v0, v17

    #@9f
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a2
    move-result-object v8

    #@a3
    .line 1822
    .local v8, "playListDirectory":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    #@a6
    move-result-object v15

    #@a7
    .line 1823
    .local v15, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v15, :cond_5

    #@a9
    const/4 v12, 0x0

    #@aa
    .line 1825
    .local v12, "fileType":I
    :goto_2
    const/16 v2, 0x29

    #@ac
    if-ne v12, v2, :cond_6

    #@ae
    move-object/from16 v6, p0

    #@b0
    move-object/from16 v7, v17

    #@b2
    move-object v10, v5

    #@b3
    move-object/from16 v11, p2

    #@b5
    .line 1826
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    #@b8
    .line 1784
    :cond_2
    :goto_3
    return-void

    #@b9
    .line 1800
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v8    # "playListDirectory":Ljava/lang/String;
    .end local v9    # "membersUri":Landroid/net/Uri;
    .end local v12    # "fileType":I
    .end local v15    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v13    # "lastDot":I
    :cond_3
    add-int/lit8 v2, v14, 0x1

    #@bb
    move-object/from16 v0, v17

    #@bd
    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c0
    move-result-object v16

    #@c1
    goto :goto_0

    #@c2
    .line 1813
    .end local v13    # "lastDot":I
    :cond_4
    move-object/from16 v0, p0

    #@c4
    iget-object v2, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    #@c6
    move-wide/from16 v0, v18

    #@c8
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@cb
    move-result-object v4

    #@cc
    .line 1814
    .restart local v4    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@ce
    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@d0
    move-object/from16 v0, p0

    #@d2
    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@d4
    const/4 v6, 0x0

    #@d5
    const/4 v7, 0x0

    #@d6
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@d9
    .line 1817
    const-string/jumbo v2, "members"

    #@dc
    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@df
    move-result-object v9

    #@e0
    .line 1818
    .restart local v9    # "membersUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@e2
    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@e4
    move-object/from16 v0, p0

    #@e6
    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@e8
    const/4 v6, 0x0

    #@e9
    const/4 v7, 0x0

    #@ea
    invoke-interface {v2, v3, v9, v6, v7}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@ed
    goto :goto_1

    #@ee
    .line 1823
    .restart local v8    # "playListDirectory":Ljava/lang/String;
    .restart local v15    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_5
    iget v12, v15, Landroid/media/MediaFile$MediaFileType;->fileType:I

    #@f0
    .restart local v12    # "fileType":I
    goto :goto_2

    #@f1
    .line 1827
    :cond_6
    const/16 v2, 0x2a

    #@f3
    if-ne v12, v2, :cond_7

    #@f5
    move-object/from16 v6, p0

    #@f7
    move-object/from16 v7, v17

    #@f9
    move-object v10, v5

    #@fa
    move-object/from16 v11, p2

    #@fc
    .line 1828
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    #@ff
    goto :goto_3

    #@100
    .line 1829
    :cond_7
    const/16 v2, 0x2b

    #@102
    if-ne v12, v2, :cond_2

    #@104
    move-object/from16 v6, p0

    #@106
    move-object/from16 v7, v17

    #@108
    move-object v10, v5

    #@109
    move-object/from16 v11, p2

    #@10b
    .line 1830
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    #@10e
    goto :goto_3
.end method

.method private processPlayLists()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1835
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v11

    #@6
    .line 1836
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileEntry;>;"
    const/4 v10, 0x0

    #@7
    .line 1840
    .local v10, "fileList":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@9
    iget-object v1, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@b
    iget-object v2, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    #@d
    sget-object v3, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    #@f
    .line 1841
    const-string/jumbo v4, "media_type=2"

    #@12
    const/4 v5, 0x0

    #@13
    const/4 v6, 0x0

    #@14
    const/4 v7, 0x0

    #@15
    .line 1840
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@18
    move-result-object v10

    #@19
    .line 1842
    .local v10, "fileList":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 1843
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v9

    #@23
    check-cast v9, Landroid/media/MediaScanner$FileEntry;

    #@25
    .line 1845
    .local v9, "entry":Landroid/media/MediaScanner$FileEntry;
    iget-boolean v0, v9, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 1846
    invoke-direct {p0, v9, v10}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 1849
    .end local v9    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v10    # "fileList":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    #@2e
    .line 1851
    .local v8, "e1":Landroid/os/RemoteException;
    if-eqz v10, :cond_1

    #@30
    .line 1852
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@33
    .line 1834
    .end local v8    # "e1":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void

    #@34
    .line 1851
    .restart local v10    # "fileList":Landroid/database/Cursor;
    :cond_2
    if-eqz v10, :cond_1

    #@36
    .line 1852
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@39
    goto :goto_1

    #@3a
    .line 1850
    .end local v10    # "fileList":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    #@3b
    .line 1851
    if-eqz v10, :cond_3

    #@3d
    .line 1852
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@40
    .line 1850
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
    .line 1689
    const/4 v4, 0x0

    #@1
    .line 1691
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@3
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6
    .line 1692
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@9
    move-result v6

    #@a
    if-eqz v6, :cond_2

    #@c
    .line 1693
    new-instance v5, Ljava/io/BufferedReader;

    #@e
    .line 1694
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
    .line 1693
    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 1695
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@20
    .end local v4    # "reader":Ljava/io/BufferedReader;
    move-result-object v3

    #@21
    .line 1696
    .local v3, "line":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@26
    .line 1697
    :goto_0
    if-eqz v3, :cond_1

    #@28
    .line 1699
    const-string/jumbo v6, "File"

    #@2b
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_0

    #@31
    .line 1700
    const/16 v6, 0x3d

    #@33
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    #@36
    move-result v1

    #@37
    .line 1701
    .local v1, "equals":I
    if-lez v1, :cond_0

    #@39
    .line 1702
    add-int/lit8 v6, v1, 0x1

    #@3b
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    invoke-direct {p0, v6, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    #@42
    .line 1705
    .end local v1    # "equals":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    goto :goto_0

    #@47
    .line 1708
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4a
    move-object v4, v5

    #@4b
    .line 1714
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v4, :cond_3

    #@4d
    .line 1715
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@50
    .line 1688
    .end local v2    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    #@51
    .line 1716
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    #@52
    .line 1717
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "MediaScanner"

    #@55
    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    #@58
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    goto :goto_1

    #@5c
    .line 1710
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    #@5d
    .line 1711
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
    .line 1714
    if-eqz v4, :cond_3

    #@68
    .line 1715
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@6b
    goto :goto_1

    #@6c
    .line 1716
    :catch_2
    move-exception v0

    #@6d
    .line 1717
    const-string/jumbo v6, "MediaScanner"

    #@70
    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    #@73
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@76
    goto :goto_1

    #@77
    .line 1712
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@78
    .line 1714
    :goto_3
    if-eqz v4, :cond_4

    #@7a
    .line 1715
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@7d
    .line 1712
    :cond_4
    :goto_4
    throw v6

    #@7e
    .line 1716
    :catch_3
    move-exception v0

    #@7f
    .line 1717
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "MediaScanner"

    #@82
    const-string/jumbo v8, "IOException in MediaScanner.processPlsPlayList()"

    #@85
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@88
    goto :goto_4

    #@89
    .line 1712
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
    .line 1710
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
    .line 1758
    const/4 v3, 0x0

    #@1
    .line 1760
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@3
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6
    .line 1761
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 1762
    new-instance v4, Ljava/io/FileInputStream;

    #@e
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 1764
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    #@13
    .end local v3    # "fis":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@16
    .line 1765
    const-string/jumbo v5, "UTF-8"

    #@19
    invoke-static {v5}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    #@1c
    move-result-object v5

    #@1d
    .line 1766
    new-instance v6, Landroid/media/MediaScanner$WplHandler;

    #@1f
    invoke-direct {v6, p0, p2, p3, p5}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    #@22
    invoke-virtual {v6}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    #@25
    move-result-object v6

    #@26
    .line 1765
    invoke-static {v4, v5, v6}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    #@29
    .line 1768
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2c
    move-object v3, v4

    #@2d
    .line 1776
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v3, :cond_1

    #@2f
    .line 1777
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@32
    .line 1757
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    #@33
    .line 1778
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    #@34
    .line 1779
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "MediaScanner"

    #@37
    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    #@3a
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    goto :goto_0

    #@3e
    .line 1772
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    #@3f
    .line 1773
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    .line 1776
    if-eqz v3, :cond_1

    #@44
    .line 1777
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@47
    goto :goto_0

    #@48
    .line 1778
    :catch_2
    move-exception v0

    #@49
    .line 1779
    const-string/jumbo v5, "MediaScanner"

    #@4c
    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    #@4f
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@52
    goto :goto_0

    #@53
    .line 1770
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    #@54
    .line 1771
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Lorg/xml/sax/SAXException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@57
    .line 1776
    if-eqz v3, :cond_1

    #@59
    .line 1777
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@5c
    goto :goto_0

    #@5d
    .line 1778
    :catch_4
    move-exception v0

    #@5e
    .line 1779
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "MediaScanner"

    #@61
    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    #@64
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@67
    goto :goto_0

    #@68
    .line 1774
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v5

    #@69
    .line 1776
    :goto_3
    if-eqz v3, :cond_2

    #@6b
    .line 1777
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@6e
    .line 1774
    :cond_2
    :goto_4
    throw v5

    #@6f
    .line 1778
    :catch_5
    move-exception v0

    #@70
    .line 1779
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "MediaScanner"

    #@73
    const-string/jumbo v7, "IOException in MediaScanner.processWplPlayList()"

    #@76
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@79
    goto :goto_4

    #@7a
    .line 1774
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
    .line 1770
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
    .line 1772
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
    .locals 19

    #@0
    .prologue
    .line 1178
    new-instance v13, Ljava/util/HashSet;

    #@2
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 1179
    .local v13, "existingFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v10, "/sdcard/DCIM/.thumbnails"

    #@8
    .line 1180
    .local v10, "directory":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@a
    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    #@10
    move-result-object v16

    #@11
    .line 1181
    .local v16, "files":[Ljava/lang/String;
    const/4 v9, 0x0

    #@12
    .line 1182
    .local v9, "c":Landroid/database/Cursor;
    if-nez v16, :cond_0

    #@14
    .line 1183
    const/4 v1, 0x0

    #@15
    new-array v0, v1, [Ljava/lang/String;

    #@17
    move-object/from16 v16, v0

    #@19
    .line 1185
    :cond_0
    const/16 v18, 0x0

    #@1b
    .local v18, "i":I
    :goto_0
    move-object/from16 v0, v16

    #@1d
    array-length v1, v0

    #@1e
    move/from16 v0, v18

    #@20
    if-ge v0, v1, :cond_1

    #@22
    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, "/"

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    aget-object v2, v16, v18

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v17

    #@3c
    .line 1187
    .local v17, "fullPathString":Ljava/lang/String;
    move-object/from16 v0, v17

    #@3e
    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@41
    .line 1185
    add-int/lit8 v18, v18, 0x1

    #@43
    goto :goto_0

    #@44
    .line 1191
    .end local v17    # "fullPathString":Ljava/lang/String;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    #@46
    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@48
    .line 1192
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@4c
    .line 1193
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    #@50
    .line 1194
    const/4 v4, 0x1

    #@51
    new-array v4, v4, [Ljava/lang/String;

    #@53
    const-string/jumbo v5, "_data"

    #@56
    const/4 v6, 0x0

    #@57
    aput-object v5, v4, v6

    #@59
    .line 1195
    const/4 v5, 0x0

    #@5a
    .line 1196
    const/4 v6, 0x0

    #@5b
    .line 1197
    const/4 v7, 0x0

    #@5c
    const/4 v8, 0x0

    #@5d
    .line 1191
    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@60
    move-result-object v9

    #@61
    .line 1198
    .local v9, "c":Landroid/database/Cursor;
    const-string/jumbo v1, "MediaScanner"

    #@64
    new-instance v2, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v3, "pruneDeadThumbnailFiles... "

    #@6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v2

    #@78
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 1199
    if-eqz v9, :cond_3

    #@7d
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    #@80
    move-result v1

    #@81
    if-eqz v1, :cond_3

    #@83
    .line 1201
    :cond_2
    const/4 v1, 0x0

    #@84
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@87
    move-result-object v17

    #@88
    .line 1202
    .restart local v17    # "fullPathString":Ljava/lang/String;
    move-object/from16 v0, v17

    #@8a
    invoke-virtual {v13, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@8d
    .line 1203
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    #@90
    move-result v1

    #@91
    if-nez v1, :cond_2

    #@93
    .line 1206
    .end local v17    # "fullPathString":Ljava/lang/String;
    :cond_3
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@96
    move-result-object v15

    #@97
    .local v15, "fileToDelete$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@9a
    move-result v1

    #@9b
    if-eqz v1, :cond_4

    #@9d
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a0
    move-result-object v14

    #@a1
    check-cast v14, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a3
    .line 1210
    .local v14, "fileToDelete":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/File;

    #@a5
    invoke-direct {v1, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@a8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ab
    goto :goto_1

    #@ac
    .line 1211
    :catch_0
    move-exception v12

    #@ad
    .local v12, "ex":Ljava/lang/SecurityException;
    goto :goto_1

    #@ae
    .line 1215
    .end local v12    # "ex":Ljava/lang/SecurityException;
    .end local v14    # "fileToDelete":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string/jumbo v1, "MediaScanner"

    #@b1
    new-instance v2, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v3, "/pruneDeadThumbnailFiles... "

    #@b9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v2

    #@bd
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v2

    #@c1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v2

    #@c5
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c8
    .line 1219
    if-eqz v9, :cond_5

    #@ca
    .line 1220
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@cd
    .line 1177
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v15    # "fileToDelete$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    return-void

    #@ce
    .line 1216
    :catch_1
    move-exception v11

    #@cf
    .line 1219
    .local v11, "e":Landroid/os/RemoteException;
    if-eqz v9, :cond_5

    #@d1
    .line 1220
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@d4
    goto :goto_2

    #@d5
    .line 1218
    .end local v11    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@d6
    .line 1219
    if-eqz v9, :cond_6

    #@d8
    .line 1220
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@db
    .line 1218
    :cond_6
    throw v1
.end method

.method private releaseResources()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1280
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1281
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    #@7
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    #@a
    .line 1282
    iput-object v1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    #@c
    .line 1278
    :cond_0
    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    #@0
    .prologue
    .line 404
    const-string/jumbo v0, "ro.config.ringtone"

    #@3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    #@9
    .line 406
    const-string/jumbo v0, "ro.config.notification_sound"

    #@c
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    #@12
    .line 408
    const-string/jumbo v0, "ro.config.alarm_alert"

    #@15
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    #@1b
    .line 403
    return-void
.end method


# virtual methods
.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 1879
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@8
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@b
    .line 1880
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    #@e
    .line 1878
    return-void
.end method

.method makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
    .locals 15
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1528
    const/4 v13, 0x0

    #@1
    .line 1530
    .local v13, "c":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v4, "_data=?"

    #@4
    .line 1531
    .local v4, "where":Ljava/lang/String;
    const/4 v0, 0x1

    #@5
    new-array v5, v0, [Ljava/lang/String;

    #@7
    const/4 v0, 0x0

    #@8
    aput-object p1, v5, v0

    #@a
    .line 1532
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@c
    iget-object v1, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@e
    iget-object v2, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    #@10
    sget-object v3, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    #@12
    .line 1533
    const/4 v6, 0x0

    #@13
    const/4 v7, 0x0

    #@14
    .line 1532
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@17
    move-result-object v13

    #@18
    .line 1534
    .local v13, "c":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 1535
    const/4 v0, 0x0

    #@1f
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    #@22
    move-result-wide v7

    #@23
    .line 1536
    .local v7, "rowId":J
    const/4 v0, 0x2

    #@24
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    #@27
    move-result v12

    #@28
    .line 1537
    .local v12, "format":I
    const/4 v0, 0x3

    #@29
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    #@2c
    move-result-wide v10

    #@2d
    .line 1538
    .local v10, "lastModified":J
    new-instance v6, Landroid/media/MediaScanner$FileEntry;

    #@2f
    move-object/from16 v9, p1

    #@31
    invoke-direct/range {v6 .. v12}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 1542
    if-eqz v13, :cond_0

    #@36
    .line 1543
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@39
    .line 1538
    :cond_0
    return-object v6

    #@3a
    .line 1542
    .end local v7    # "rowId":J
    .end local v10    # "lastModified":J
    .end local v12    # "format":I
    :cond_1
    if-eqz v13, :cond_2

    #@3c
    .line 1543
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@3f
    .line 1546
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    #@40
    return-object v0

    #@41
    .line 1540
    :catch_0
    move-exception v14

    #@42
    .line 1542
    .local v14, "e":Landroid/os/RemoteException;
    if-eqz v13, :cond_2

    #@44
    .line 1543
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@47
    goto :goto_0

    #@48
    .line 1541
    .end local v14    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@49
    .line 1542
    if-eqz v13, :cond_3

    #@4b
    .line 1543
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@4e
    .line 1541
    :cond_3
    throw v0
.end method

.method public release()V
    .locals 0

    #@0
    .prologue
    .line 1874
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    #@3
    .line 1873
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1308
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v12

    #@4
    .line 1309
    .local v12, "start":J
    move-object/from16 v0, p0

    #@6
    move-object/from16 v1, p2

    #@8
    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    #@b
    .line 1310
    const/4 v14, 0x0

    #@c
    const/4 v15, 0x1

    #@d
    move-object/from16 v0, p0

    #@f
    invoke-direct {v0, v14, v15}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    #@12
    .line 1311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@15
    move-result-wide v8

    #@16
    .line 1315
    .local v8, "prescan":J
    new-instance v14, Landroid/media/MediaInserter;

    #@18
    move-object/from16 v0, p0

    #@1a
    iget-object v15, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@20
    move-object/from16 v16, v0

    #@22
    const/16 v17, 0x1f4

    #@24
    invoke-direct/range {v14 .. v17}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V

    #@27
    move-object/from16 v0, p0

    #@29
    iput-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    #@2b
    .line 1318
    const/4 v5, 0x0

    #@2c
    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p1

    #@2e
    array-length v14, v0

    #@2f
    if-ge v5, v14, :cond_0

    #@31
    .line 1319
    aget-object v14, p1, v5

    #@33
    move-object/from16 v0, p0

    #@35
    iget-object v15, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    #@37
    move-object/from16 v0, p0

    #@39
    invoke-direct {v0, v14, v15}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    #@3c
    .line 1318
    add-int/lit8 v5, v5, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 1324
    :cond_0
    move-object/from16 v0, p0

    #@41
    iget-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    #@43
    invoke-virtual {v14}, Landroid/media/MediaInserter;->flushAll()V

    #@46
    .line 1325
    const/4 v14, 0x0

    #@47
    move-object/from16 v0, p0

    #@49
    iput-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    #@4b
    .line 1328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4e
    move-result-wide v10

    #@4f
    .line 1329
    .local v10, "scan":J
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    #@52
    .line 1330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    move-result-wide v6

    #@56
    .line 1347
    .local v6, "end":J
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@59
    .line 1306
    .end local v5    # "i":I
    .end local v6    # "end":J
    .end local v8    # "prescan":J
    .end local v10    # "scan":J
    .end local v12    # "start":J
    :goto_1
    return-void

    #@5a
    .line 1344
    :catch_0
    move-exception v3

    #@5b
    .line 1345
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v14, "MediaScanner"

    #@5e
    const-string/jumbo v15, "RemoteException in MediaScanner.scan()"

    #@61
    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    .line 1347
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@67
    goto :goto_1

    #@68
    .line 1341
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    #@69
    .line 1343
    .local v4, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_2
    const-string/jumbo v14, "MediaScanner"

    #@6c
    const-string/jumbo v15, "UnsupportedOperationException in MediaScanner.scan()"

    #@6f
    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@72
    .line 1347
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@75
    goto :goto_1

    #@76
    .line 1338
    .end local v4    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v2

    #@77
    .line 1340
    .local v2, "e":Landroid/database/SQLException;
    :try_start_3
    const-string/jumbo v14, "MediaScanner"

    #@7a
    const-string/jumbo v15, "SQLException in MediaScanner.scan()"

    #@7d
    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@80
    .line 1347
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@83
    goto :goto_1

    #@84
    .line 1346
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v14

    #@85
    .line 1347
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@88
    .line 1346
    throw v14
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 27
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "objectHandle"    # I
    .param p4, "format"    # I

    #@0
    .prologue
    .line 1468
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p2

    #@4
    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    #@7
    .line 1469
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    #@a
    move-result-object v26

    #@b
    .line 1470
    .local v26, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v26, :cond_3

    #@d
    const/16 v25, 0x0

    #@f
    .line 1471
    .local v25, "fileType":I
    :goto_0
    new-instance v23, Ljava/io/File;

    #@11
    move-object/from16 v0, v23

    #@13
    move-object/from16 v1, p1

    #@15
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@18
    .line 1472
    .local v23, "file":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->lastModified()J

    #@1b
    move-result-wide v4

    #@1c
    const-wide/16 v10, 0x3e8

    #@1e
    div-long v14, v4, v10

    #@20
    .line 1474
    .local v14, "lastModifiedSeconds":J
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@23
    move-result v4

    #@24
    if-nez v4, :cond_0

    #@26
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_4

    #@2c
    .line 1492
    :cond_0
    move/from16 v0, p3

    #@2e
    move-object/from16 v1, p0

    #@30
    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    #@32
    .line 1493
    const/16 v24, 0x0

    #@34
    .line 1495
    .local v24, "fileList":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_5

    #@3a
    .line 1497
    const/4 v4, 0x0

    #@3b
    const/4 v5, 0x1

    #@3c
    move-object/from16 v0, p0

    #@3e
    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    #@41
    .line 1499
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    #@44
    move-result-object v22

    #@45
    .line 1500
    .local v22, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v22, :cond_1

    #@47
    .line 1501
    move-object/from16 v0, p0

    #@49
    iget-object v10, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget-object v11, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@4f
    move-object/from16 v0, p0

    #@51
    iget-object v12, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    #@53
    .line 1502
    sget-object v13, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    #@55
    const/4 v14, 0x0

    #@56
    const/4 v15, 0x0

    #@57
    const/16 v16, 0x0

    #@59
    const/16 v17, 0x0

    #@5b
    .line 1501
    invoke-interface/range {v10 .. v17}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@5e
    .end local v14    # "lastModifiedSeconds":J
    move-result-object v24

    #@5f
    .line 1503
    .local v24, "fileList":Landroid/database/Cursor;
    move-object/from16 v0, p0

    #@61
    move-object/from16 v1, v22

    #@63
    move-object/from16 v2, v24

    #@65
    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    .line 1516
    .end local v22    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v24    # "fileList":Landroid/database/Cursor;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    #@69
    move-object/from16 v0, p0

    #@6b
    iput v4, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    #@6d
    .line 1517
    if-eqz v24, :cond_2

    #@6f
    .line 1518
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    #@72
    .line 1520
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@75
    .line 1467
    :goto_2
    return-void

    #@76
    .line 1470
    .end local v23    # "file":Ljava/io/File;
    .end local v25    # "fileType":I
    :cond_3
    move-object/from16 v0, v26

    #@78
    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    #@7a
    move/from16 v25, v0

    #@7c
    .restart local v25    # "fileType":I
    goto :goto_0

    #@7d
    .line 1475
    .restart local v14    # "lastModifiedSeconds":J
    .restart local v23    # "file":Ljava/io/File;
    :cond_4
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@80
    move-result v4

    #@81
    if-nez v4, :cond_0

    #@83
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    #@86
    move-result v4

    #@87
    if-nez v4, :cond_0

    #@89
    .line 1476
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    #@8c
    move-result v4

    #@8d
    if-nez v4, :cond_0

    #@8f
    .line 1479
    new-instance v7, Landroid/content/ContentValues;

    #@91
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    #@94
    .line 1480
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "_size"

    #@97
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    #@9a
    move-result-wide v10

    #@9b
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9e
    move-result-object v5

    #@9f
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@a2
    .line 1481
    const-string/jumbo v4, "date_modified"

    #@a5
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a8
    move-result-object v5

    #@a9
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@ac
    .line 1483
    const/4 v4, 0x1

    #@ad
    :try_start_1
    new-array v9, v4, [Ljava/lang/String;

    #@af
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@b2
    move-result-object v4

    #@b3
    const/4 v5, 0x0

    #@b4
    aput-object v4, v9, v5

    #@b6
    .line 1484
    .local v9, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@b8
    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    #@ba
    move-object/from16 v0, p0

    #@bc
    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    #@be
    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    #@c1
    move-result-object v6

    #@c2
    .line 1485
    const-string/jumbo v8, "_id=?"

    #@c5
    .line 1484
    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@c8
    .line 1489
    .end local v9    # "whereArgs":[Ljava/lang/String;
    :goto_3
    return-void

    #@c9
    .line 1486
    :catch_0
    move-exception v21

    #@ca
    .line 1487
    .local v21, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MediaScanner"

    #@cd
    const-string/jumbo v5, "RemoteException in scanMtpFile"

    #@d0
    move-object/from16 v0, v21

    #@d2
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@d5
    goto :goto_3

    #@d6
    .line 1507
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v21    # "e":Landroid/os/RemoteException;
    .local v24, "fileList":Landroid/database/Cursor;
    :cond_5
    const/4 v4, 0x0

    #@d7
    :try_start_2
    move-object/from16 v0, p0

    #@d9
    move-object/from16 v1, p1

    #@db
    invoke-direct {v0, v1, v4}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    #@de
    .line 1510
    move-object/from16 v0, p0

    #@e0
    iget-object v11, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    #@e2
    move-object/from16 v0, v26

    #@e4
    iget-object v13, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    #@e6
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    #@e9
    move-result-wide v16

    #@ea
    .line 1511
    const/16 v4, 0x3001

    #@ec
    move/from16 v0, p4

    #@ee
    if-ne v0, v4, :cond_7

    #@f0
    const/16 v18, 0x1

    #@f2
    :goto_4
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    #@f5
    move-result v20

    #@f6
    const/16 v19, 0x1

    #@f8
    move-object/from16 v12, p1

    #@fa
    .line 1510
    invoke-virtual/range {v11 .. v20}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@fd
    goto/16 :goto_1

    #@ff
    .line 1513
    .end local v14    # "lastModifiedSeconds":J
    .end local v24    # "fileList":Landroid/database/Cursor;
    :catch_1
    move-exception v21

    #@100
    .line 1514
    .restart local v21    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaScanner"

    #@103
    const-string/jumbo v5, "RemoteException in MediaScanner.scanFile()"

    #@106
    move-object/from16 v0, v21

    #@108
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@10b
    .line 1516
    const/4 v4, 0x0

    #@10c
    move-object/from16 v0, p0

    #@10e
    iput v4, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    #@110
    .line 1517
    if-eqz v24, :cond_6

    #@112
    .line 1518
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    #@115
    .line 1520
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@118
    goto/16 :goto_2

    #@11a
    .line 1511
    .end local v21    # "e":Landroid/os/RemoteException;
    .restart local v14    # "lastModifiedSeconds":J
    .restart local v24    # "fileList":Landroid/database/Cursor;
    :cond_7
    const/16 v18, 0x0

    #@11c
    goto :goto_4

    #@11d
    .line 1515
    .end local v14    # "lastModifiedSeconds":J
    .end local v24    # "fileList":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    #@11e
    .line 1516
    const/4 v5, 0x0

    #@11f
    move-object/from16 v0, p0

    #@121
    iput v5, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    #@123
    .line 1517
    if-eqz v24, :cond_8

    #@125
    .line 1518
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    #@128
    .line 1520
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@12b
    .line 1515
    throw v4
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1354
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    #@3
    .line 1355
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p1, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    #@7
    .line 1357
    new-instance v11, Ljava/io/File;

    #@9
    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@c
    .line 1358
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 1359
    const/4 v1, 0x0

    #@13
    .line 1372
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@16
    .line 1359
    return-object v1

    #@17
    .line 1363
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    #@1a
    move-result-wide v2

    #@1b
    const-wide/16 v6, 0x3e8

    #@1d
    div-long v4, v2, v6

    #@1f
    .line 1366
    .local v4, "lastModifiedSeconds":J
    iget-object v1, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    #@21
    invoke-virtual {v11}, Ljava/io/File;->length()J

    #@24
    move-result-wide v6

    #@25
    .line 1367
    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    #@28
    move-result v10

    #@29
    const/4 v8, 0x0

    #@2a
    const/4 v9, 0x1

    #@2b
    move-object v2, p1

    #@2c
    move-object v3, p3

    #@2d
    .line 1366
    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    move-result-object v1

    #@31
    .line 1372
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@34
    .line 1366
    return-object v1

    #@35
    .line 1368
    .end local v4    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    #@36
    .line 1369
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "MediaScanner"

    #@39
    const-string/jumbo v2, "RemoteException in MediaScanner.scanFile()"

    #@3c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    .line 1370
    const/4 v1, 0x0

    #@40
    .line 1372
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@43
    .line 1370
    return-object v1

    #@44
    .line 1371
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@45
    .line 1372
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    #@48
    .line 1371
    throw v1
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method
