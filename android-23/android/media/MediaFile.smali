.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_FL:I = 0x33

.field public static final FILE_TYPE_FLAC:I = 0xa

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_HTML:I = 0x65

.field public static final FILE_TYPE_HTTPLIVE:I = 0x2c

.field public static final FILE_TYPE_IMY:I = 0xd

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xb

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_MS_EXCEL:I = 0x69

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x6a

.field public static final FILE_TYPE_MS_WORD:I = 0x68

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_SMF:I = 0xc

.field public static final FILE_TYPE_TEXT:I = 0x64

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WEBM:I = 0x1e

.field public static final FILE_TYPE_WEBP:I = 0x24

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field public static final FILE_TYPE_XML:I = 0x67

.field public static final FILE_TYPE_ZIP:I = 0x6b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_DRM_FILE_TYPE:I = 0x33

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xb

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xa

.field private static final LAST_DRM_FILE_TYPE:I = 0x33

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x24

.field private static final LAST_MIDI_FILE_TYPE:I = 0xd

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2c

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1e

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x15

    #@2
    const/4 v7, 0x7

    #@3
    const v6, 0xb984

    #@6
    const/16 v5, 0x300b

    #@8
    const/16 v4, 0xb

    #@a
    .line 120
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 119
    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    #@11
    .line 122
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    .line 121
    sput-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    #@18
    .line 125
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    .line 124
    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    #@1f
    .line 128
    new-instance v0, Ljava/util/HashMap;

    #@21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@24
    .line 127
    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    #@26
    .line 131
    new-instance v0, Ljava/util/HashMap;

    #@28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2b
    .line 130
    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    #@2d
    .line 170
    const-string/jumbo v0, "MP3"

    #@30
    const-string/jumbo v1, "audio/mpeg"

    #@33
    const/4 v2, 0x1

    #@34
    const/16 v3, 0x3009

    #@36
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@39
    .line 171
    const-string/jumbo v0, "MPGA"

    #@3c
    const-string/jumbo v1, "audio/mpeg"

    #@3f
    const/4 v2, 0x1

    #@40
    const/16 v3, 0x3009

    #@42
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@45
    .line 172
    const-string/jumbo v0, "M4A"

    #@48
    const-string/jumbo v1, "audio/mp4"

    #@4b
    const/4 v2, 0x2

    #@4c
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@4f
    .line 173
    const-string/jumbo v0, "WAV"

    #@52
    const-string/jumbo v1, "audio/x-wav"

    #@55
    const/4 v2, 0x3

    #@56
    const/16 v3, 0x3008

    #@58
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@5b
    .line 174
    const-string/jumbo v0, "AMR"

    #@5e
    const-string/jumbo v1, "audio/amr"

    #@61
    const/4 v2, 0x4

    #@62
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@65
    .line 175
    const-string/jumbo v0, "AWB"

    #@68
    const-string/jumbo v1, "audio/amr-wb"

    #@6b
    const/4 v2, 0x5

    #@6c
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@6f
    .line 176
    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_0

    #@75
    .line 177
    const-string/jumbo v0, "WMA"

    #@78
    const-string/jumbo v1, "audio/x-ms-wma"

    #@7b
    const/4 v2, 0x6

    #@7c
    const v3, 0xb901

    #@7f
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@82
    .line 179
    :cond_0
    const-string/jumbo v0, "OGG"

    #@85
    const-string/jumbo v1, "audio/ogg"

    #@88
    const v2, 0xb902

    #@8b
    invoke-static {v0, v7, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@8e
    .line 180
    const-string/jumbo v0, "OGG"

    #@91
    const-string/jumbo v1, "application/ogg"

    #@94
    const v2, 0xb902

    #@97
    invoke-static {v0, v7, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@9a
    .line 181
    const-string/jumbo v0, "OGA"

    #@9d
    const-string/jumbo v1, "application/ogg"

    #@a0
    const v2, 0xb902

    #@a3
    invoke-static {v0, v7, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@a6
    .line 182
    const-string/jumbo v0, "AAC"

    #@a9
    const-string/jumbo v1, "audio/aac"

    #@ac
    const/16 v2, 0x8

    #@ae
    const v3, 0xb903

    #@b1
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@b4
    .line 183
    const-string/jumbo v0, "AAC"

    #@b7
    const-string/jumbo v1, "audio/aac-adts"

    #@ba
    const/16 v2, 0x8

    #@bc
    const v3, 0xb903

    #@bf
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@c2
    .line 184
    const-string/jumbo v0, "MKA"

    #@c5
    const-string/jumbo v1, "audio/x-matroska"

    #@c8
    const/16 v2, 0x9

    #@ca
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@cd
    .line 186
    const-string/jumbo v0, "MID"

    #@d0
    const-string/jumbo v1, "audio/midi"

    #@d3
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@d6
    .line 187
    const-string/jumbo v0, "MIDI"

    #@d9
    const-string/jumbo v1, "audio/midi"

    #@dc
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@df
    .line 188
    const-string/jumbo v0, "XMF"

    #@e2
    const-string/jumbo v1, "audio/midi"

    #@e5
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@e8
    .line 189
    const-string/jumbo v0, "RTTTL"

    #@eb
    const-string/jumbo v1, "audio/midi"

    #@ee
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@f1
    .line 190
    const-string/jumbo v0, "SMF"

    #@f4
    const-string/jumbo v1, "audio/sp-midi"

    #@f7
    const/16 v2, 0xc

    #@f9
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@fc
    .line 191
    const-string/jumbo v0, "IMY"

    #@ff
    const-string/jumbo v1, "audio/imelody"

    #@102
    const/16 v2, 0xd

    #@104
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@107
    .line 192
    const-string/jumbo v0, "RTX"

    #@10a
    const-string/jumbo v1, "audio/midi"

    #@10d
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@110
    .line 193
    const-string/jumbo v0, "OTA"

    #@113
    const-string/jumbo v1, "audio/midi"

    #@116
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@119
    .line 194
    const-string/jumbo v0, "MXMF"

    #@11c
    const-string/jumbo v1, "audio/midi"

    #@11f
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@122
    .line 196
    const-string/jumbo v0, "MPEG"

    #@125
    const-string/jumbo v1, "video/mpeg"

    #@128
    invoke-static {v0, v8, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@12b
    .line 197
    const-string/jumbo v0, "MPG"

    #@12e
    const-string/jumbo v1, "video/mpeg"

    #@131
    invoke-static {v0, v8, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@134
    .line 198
    const-string/jumbo v0, "MP4"

    #@137
    const-string/jumbo v1, "video/mp4"

    #@13a
    invoke-static {v0, v8, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@13d
    .line 199
    const-string/jumbo v0, "M4V"

    #@140
    const-string/jumbo v1, "video/mp4"

    #@143
    const/16 v2, 0x16

    #@145
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@148
    .line 200
    const-string/jumbo v0, "3GP"

    #@14b
    const-string/jumbo v1, "video/3gpp"

    #@14e
    const/16 v2, 0x17

    #@150
    invoke-static {v0, v2, v1, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@153
    .line 201
    const-string/jumbo v0, "3GPP"

    #@156
    const-string/jumbo v1, "video/3gpp"

    #@159
    const/16 v2, 0x17

    #@15b
    invoke-static {v0, v2, v1, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@15e
    .line 202
    const-string/jumbo v0, "3G2"

    #@161
    const-string/jumbo v1, "video/3gpp2"

    #@164
    const/16 v2, 0x18

    #@166
    invoke-static {v0, v2, v1, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@169
    .line 203
    const-string/jumbo v0, "3GPP2"

    #@16c
    const-string/jumbo v1, "video/3gpp2"

    #@16f
    const/16 v2, 0x18

    #@171
    invoke-static {v0, v2, v1, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@174
    .line 204
    const-string/jumbo v0, "MKV"

    #@177
    const-string/jumbo v1, "video/x-matroska"

    #@17a
    const/16 v2, 0x1b

    #@17c
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@17f
    .line 205
    const-string/jumbo v0, "WEBM"

    #@182
    const-string/jumbo v1, "video/webm"

    #@185
    const/16 v2, 0x1e

    #@187
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@18a
    .line 206
    const-string/jumbo v0, "TS"

    #@18d
    const-string/jumbo v1, "video/mp2ts"

    #@190
    const/16 v2, 0x1c

    #@192
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@195
    .line 207
    const-string/jumbo v0, "AVI"

    #@198
    const-string/jumbo v1, "video/avi"

    #@19b
    const/16 v2, 0x1d

    #@19d
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@1a0
    .line 209
    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    #@1a3
    move-result v0

    #@1a4
    if-eqz v0, :cond_1

    #@1a6
    .line 210
    const-string/jumbo v0, "WMV"

    #@1a9
    const-string/jumbo v1, "video/x-ms-wmv"

    #@1ac
    const/16 v2, 0x19

    #@1ae
    const v3, 0xb981

    #@1b1
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@1b4
    .line 211
    const-string/jumbo v0, "ASF"

    #@1b7
    const-string/jumbo v1, "video/x-ms-asf"

    #@1ba
    const/16 v2, 0x1a

    #@1bc
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@1bf
    .line 214
    :cond_1
    const-string/jumbo v0, "JPG"

    #@1c2
    const-string/jumbo v1, "image/jpeg"

    #@1c5
    const/16 v2, 0x1f

    #@1c7
    const/16 v3, 0x3801

    #@1c9
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@1cc
    .line 215
    const-string/jumbo v0, "JPEG"

    #@1cf
    const-string/jumbo v1, "image/jpeg"

    #@1d2
    const/16 v2, 0x1f

    #@1d4
    const/16 v3, 0x3801

    #@1d6
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@1d9
    .line 216
    const-string/jumbo v0, "GIF"

    #@1dc
    const-string/jumbo v1, "image/gif"

    #@1df
    const/16 v2, 0x20

    #@1e1
    const/16 v3, 0x3807

    #@1e3
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@1e6
    .line 217
    const-string/jumbo v0, "PNG"

    #@1e9
    const-string/jumbo v1, "image/png"

    #@1ec
    const/16 v2, 0x21

    #@1ee
    const/16 v3, 0x380b

    #@1f0
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@1f3
    .line 218
    const-string/jumbo v0, "BMP"

    #@1f6
    const-string/jumbo v1, "image/x-ms-bmp"

    #@1f9
    const/16 v2, 0x22

    #@1fb
    const/16 v3, 0x3804

    #@1fd
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@200
    .line 219
    const-string/jumbo v0, "WBMP"

    #@203
    const-string/jumbo v1, "image/vnd.wap.wbmp"

    #@206
    const/16 v2, 0x23

    #@208
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@20b
    .line 220
    const-string/jumbo v0, "WEBP"

    #@20e
    const-string/jumbo v1, "image/webp"

    #@211
    const/16 v2, 0x24

    #@213
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@216
    .line 222
    const-string/jumbo v0, "M3U"

    #@219
    const-string/jumbo v1, "audio/x-mpegurl"

    #@21c
    const/16 v2, 0x29

    #@21e
    const v3, 0xba11

    #@221
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@224
    .line 223
    const-string/jumbo v0, "M3U"

    #@227
    const-string/jumbo v1, "application/x-mpegurl"

    #@22a
    const/16 v2, 0x29

    #@22c
    const v3, 0xba11

    #@22f
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@232
    .line 224
    const-string/jumbo v0, "PLS"

    #@235
    const-string/jumbo v1, "audio/x-scpls"

    #@238
    const/16 v2, 0x2a

    #@23a
    const v3, 0xba14

    #@23d
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@240
    .line 225
    const-string/jumbo v0, "WPL"

    #@243
    const-string/jumbo v1, "application/vnd.ms-wpl"

    #@246
    const/16 v2, 0x2b

    #@248
    const v3, 0xba10

    #@24b
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@24e
    .line 226
    const-string/jumbo v0, "M3U8"

    #@251
    const-string/jumbo v1, "application/vnd.apple.mpegurl"

    #@254
    const/16 v2, 0x2c

    #@256
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@259
    .line 227
    const-string/jumbo v0, "M3U8"

    #@25c
    const-string/jumbo v1, "audio/mpegurl"

    #@25f
    const/16 v2, 0x2c

    #@261
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@264
    .line 228
    const-string/jumbo v0, "M3U8"

    #@267
    const-string/jumbo v1, "audio/x-mpegurl"

    #@26a
    const/16 v2, 0x2c

    #@26c
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@26f
    .line 230
    const-string/jumbo v0, "FL"

    #@272
    const-string/jumbo v1, "application/x-android-drm-fl"

    #@275
    const/16 v2, 0x33

    #@277
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@27a
    .line 232
    const-string/jumbo v0, "TXT"

    #@27d
    const-string/jumbo v1, "text/plain"

    #@280
    const/16 v2, 0x64

    #@282
    const/16 v3, 0x3004

    #@284
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@287
    .line 233
    const-string/jumbo v0, "HTM"

    #@28a
    const-string/jumbo v1, "text/html"

    #@28d
    const/16 v2, 0x65

    #@28f
    const/16 v3, 0x3005

    #@291
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@294
    .line 234
    const-string/jumbo v0, "HTML"

    #@297
    const-string/jumbo v1, "text/html"

    #@29a
    const/16 v2, 0x65

    #@29c
    const/16 v3, 0x3005

    #@29e
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@2a1
    .line 235
    const-string/jumbo v0, "PDF"

    #@2a4
    const-string/jumbo v1, "application/pdf"

    #@2a7
    const/16 v2, 0x66

    #@2a9
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@2ac
    .line 236
    const-string/jumbo v0, "DOC"

    #@2af
    const-string/jumbo v1, "application/msword"

    #@2b2
    const/16 v2, 0x68

    #@2b4
    const v3, 0xba83

    #@2b7
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@2ba
    .line 237
    const-string/jumbo v0, "XLS"

    #@2bd
    const-string/jumbo v1, "application/vnd.ms-excel"

    #@2c0
    const/16 v2, 0x69

    #@2c2
    const v3, 0xba85

    #@2c5
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@2c8
    .line 238
    const-string/jumbo v0, "PPT"

    #@2cb
    const-string/jumbo v1, "application/mspowerpoint"

    #@2ce
    const/16 v2, 0x6a

    #@2d0
    const v3, 0xba86

    #@2d3
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@2d6
    .line 239
    const-string/jumbo v0, "FLAC"

    #@2d9
    const-string/jumbo v1, "audio/flac"

    #@2dc
    const/16 v2, 0xa

    #@2de
    const v3, 0xb906

    #@2e1
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@2e4
    .line 240
    const-string/jumbo v0, "ZIP"

    #@2e7
    const-string/jumbo v1, "application/zip"

    #@2ea
    const/16 v2, 0x6b

    #@2ec
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@2ef
    .line 241
    const-string/jumbo v0, "MPG"

    #@2f2
    const-string/jumbo v1, "video/mp2p"

    #@2f5
    const/16 v2, 0xc8

    #@2f7
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@2fa
    .line 242
    const-string/jumbo v0, "MPEG"

    #@2fd
    const-string/jumbo v1, "video/mp2p"

    #@300
    const/16 v2, 0xc8

    #@302
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@305
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    #@2
    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    #@4
    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    #@7
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 135
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 133
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "mtpFormatCode"    # I

    #@0
    .prologue
    .line 139
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@3
    .line 140
    sget-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    #@5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 141
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    #@e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 142
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    #@17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 138
    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 290
    const/16 v2, 0x2f

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@6
    move-result v1

    #@7
    .line 291
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    #@9
    .line 292
    add-int/lit8 v1, v1, 0x1

    #@b
    .line 293
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    if-ge v1, v2, :cond_0

    #@11
    .line 294
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    .line 298
    :cond_0
    const/16 v2, 0x2e

    #@17
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@1a
    move-result v0

    #@1b
    .line 299
    .local v0, "lastDot":I
    if-lez v0, :cond_1

    #@1d
    .line 300
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@20
    move-result-object p0

    #@21
    .line 302
    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 275
    const/16 v1, 0x2e

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@5
    move-result v0

    #@6
    .line 276
    .local v0, "lastDot":I
    if-gez v0, :cond_0

    #@8
    .line 277
    const/4 v1, 0x0

    #@9
    return-object v1

    #@a
    .line 278
    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    #@c
    add-int/lit8 v2, v0, 0x1

    #@e
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/media/MediaFile$MediaFileType;

    #@1e
    return-object v1
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 306
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 307
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@a
    const/4 v1, 0x0

    #@b
    :goto_0
    return v1

    #@c
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v1

    #@10
    goto :goto_0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 316
    if-eqz p1, :cond_0

    #@2
    .line 317
    sget-object v3, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    #@4
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Ljava/lang/Integer;

    #@a
    .line 318
    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    #@c
    .line 319
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v3

    #@10
    return v3

    #@11
    .line 322
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_0
    const/16 v3, 0x2e

    #@13
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@16
    move-result v1

    #@17
    .line 323
    .local v1, "lastDot":I
    if-lez v1, :cond_1

    #@19
    .line 324
    add-int/lit8 v3, v1, 0x1

    #@1b
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 325
    .local v0, "extension":Ljava/lang/String;
    sget-object v3, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    #@27
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Ljava/lang/Integer;

    #@2d
    .line 326
    .restart local v2    # "value":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    #@2f
    .line 327
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@32
    move-result v3

    #@33
    return v3

    #@34
    .line 330
    .end local v0    # "extension":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_1
    const/16 v3, 0x3000

    #@36
    return v3
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 311
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    #@4
    move-result-object v0

    #@5
    .line 312
    .local v0, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    :cond_0
    iget-object v1, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    #@a
    goto :goto_0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 2
    .param p0, "formatCode"    # I

    #@0
    .prologue
    .line 334
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    #@2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    return-object v0
.end method

.method public static isAudioFileType(I)Z
    .locals 3
    .param p0, "fileType"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 246
    if-lt p0, v0, :cond_1

    #@4
    .line 247
    const/16 v2, 0xa

    #@6
    if-gt p0, v2, :cond_1

    #@8
    .line 246
    :cond_0
    :goto_0
    return v0

    #@9
    .line 248
    :cond_1
    const/16 v2, 0xb

    #@b
    if-lt p0, v2, :cond_2

    #@d
    .line 249
    const/16 v2, 0xd

    #@f
    if-le p0, v2, :cond_0

    #@11
    move v0, v1

    #@12
    goto :goto_0

    #@13
    :cond_2
    move v0, v1

    #@14
    .line 248
    goto :goto_0
.end method

.method public static isDrmFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I

    #@0
    .prologue
    const/16 v1, 0x33

    #@2
    const/4 v0, 0x0

    #@3
    .line 270
    if-lt p0, v1, :cond_0

    #@5
    .line 271
    if-gt p0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    .line 270
    :cond_0
    return v0
.end method

.method public static isImageFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 260
    const/16 v1, 0x1f

    #@3
    if-lt p0, v1, :cond_0

    #@5
    .line 261
    const/16 v1, 0x24

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 260
    :cond_0
    return v0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 282
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 283
    .local v0, "fileType":I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 284
    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@13
    move-result v1

    #@14
    .line 283
    if-nez v1, :cond_0

    #@16
    .line 284
    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    #@19
    move-result v1

    #@1a
    .line 283
    :goto_0
    return v1

    #@1b
    :cond_0
    const/4 v1, 0x1

    #@1c
    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 265
    const/16 v1, 0x29

    #@3
    if-lt p0, v1, :cond_0

    #@5
    .line 266
    const/16 v1, 0x2c

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 265
    :cond_0
    return v0
.end method

.method public static isVideoFileType(I)Z
    .locals 4
    .param p0, "fileType"    # I

    #@0
    .prologue
    const/16 v3, 0xc8

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 253
    const/16 v2, 0x15

    #@6
    if-lt p0, v2, :cond_1

    #@8
    .line 254
    const/16 v2, 0x1e

    #@a
    if-gt p0, v2, :cond_1

    #@c
    .line 253
    :cond_0
    :goto_0
    return v0

    #@d
    .line 255
    :cond_1
    if-lt p0, v3, :cond_2

    #@f
    .line 256
    if-le p0, v3, :cond_0

    #@11
    move v0, v1

    #@12
    goto :goto_0

    #@13
    :cond_2
    move v0, v1

    #@14
    .line 255
    goto :goto_0
.end method

.method private static isWMAEnabled()Z
    .locals 5

    #@0
    .prologue
    .line 146
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 147
    .local v2, "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    .line 148
    .local v0, "count":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 149
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/media/DecoderCapabilities$AudioDecoder;

    #@11
    .line 150
    .local v1, "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    #@13
    if-ne v1, v4, :cond_0

    #@15
    .line 151
    const/4 v4, 0x1

    #@16
    return v4

    #@17
    .line 148
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 154
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_1
    const/4 v4, 0x0

    #@1b
    return v4
.end method

.method private static isWMVEnabled()Z
    .locals 5

    #@0
    .prologue
    .line 158
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 159
    .local v2, "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    .line 160
    .local v0, "count":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 161
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/media/DecoderCapabilities$VideoDecoder;

    #@11
    .line 162
    .local v1, "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    #@13
    if-ne v1, v4, :cond_0

    #@15
    .line 163
    const/4 v4, 0x1

    #@16
    return v4

    #@17
    .line 160
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 166
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_1
    const/4 v4, 0x0

    #@1b
    return v4
.end method
