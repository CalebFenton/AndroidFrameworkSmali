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

.field public static final FILE_TYPE_ARW:I = 0x130

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_CR2:I = 0x12d

.field public static final FILE_TYPE_DNG:I = 0x12c

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

.field public static final FILE_TYPE_NEF:I = 0x12e

.field public static final FILE_TYPE_NRW:I = 0x12f

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_ORF:I = 0x132

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PEF:I = 0x134

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_RAF:I = 0x133

.field public static final FILE_TYPE_RW2:I = 0x131

.field public static final FILE_TYPE_SMF:I = 0xc

.field public static final FILE_TYPE_SRW:I = 0x135

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

.field private static final FIRST_RAW_IMAGE_FILE_TYPE:I = 0x12c

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xa

.field private static final LAST_DRM_FILE_TYPE:I = 0x33

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x24

.field private static final LAST_MIDI_FILE_TYPE:I = 0xd

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2c

.field private static final LAST_RAW_IMAGE_FILE_TYPE:I = 0x135

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
    const/4 v8, 0x7

    #@1
    const v7, 0xb984

    #@4
    const/16 v6, 0x300b

    #@6
    const/16 v5, 0x380d

    #@8
    const/16 v4, 0xb

    #@a
    .line 134
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 133
    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    #@11
    .line 136
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    .line 135
    sput-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    #@18
    .line 139
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    .line 138
    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    #@1f
    .line 142
    new-instance v0, Ljava/util/HashMap;

    #@21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@24
    .line 141
    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    #@26
    .line 145
    new-instance v0, Ljava/util/HashMap;

    #@28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2b
    .line 144
    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    #@2d
    .line 184
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
    .line 185
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
    .line 186
    const-string/jumbo v0, "M4A"

    #@48
    const-string/jumbo v1, "audio/mp4"

    #@4b
    const/4 v2, 0x2

    #@4c
    invoke-static {v0, v2, v1, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@4f
    .line 187
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
    .line 188
    const-string/jumbo v0, "AMR"

    #@5e
    const-string/jumbo v1, "audio/amr"

    #@61
    const/4 v2, 0x4

    #@62
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@65
    .line 189
    const-string/jumbo v0, "AWB"

    #@68
    const-string/jumbo v1, "audio/amr-wb"

    #@6b
    const/4 v2, 0x5

    #@6c
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@6f
    .line 190
    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_0

    #@75
    .line 191
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
    .line 193
    :cond_0
    const-string/jumbo v0, "OGG"

    #@85
    const-string/jumbo v1, "audio/ogg"

    #@88
    const v2, 0xb902

    #@8b
    invoke-static {v0, v8, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@8e
    .line 194
    const-string/jumbo v0, "OGG"

    #@91
    const-string/jumbo v1, "application/ogg"

    #@94
    const v2, 0xb902

    #@97
    invoke-static {v0, v8, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@9a
    .line 195
    const-string/jumbo v0, "OGA"

    #@9d
    const-string/jumbo v1, "application/ogg"

    #@a0
    const v2, 0xb902

    #@a3
    invoke-static {v0, v8, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@a6
    .line 196
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
    .line 197
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
    .line 198
    const-string/jumbo v0, "MKA"

    #@c5
    const-string/jumbo v1, "audio/x-matroska"

    #@c8
    const/16 v2, 0x9

    #@ca
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@cd
    .line 200
    const-string/jumbo v0, "MID"

    #@d0
    const-string/jumbo v1, "audio/midi"

    #@d3
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@d6
    .line 201
    const-string/jumbo v0, "MIDI"

    #@d9
    const-string/jumbo v1, "audio/midi"

    #@dc
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@df
    .line 202
    const-string/jumbo v0, "XMF"

    #@e2
    const-string/jumbo v1, "audio/midi"

    #@e5
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@e8
    .line 203
    const-string/jumbo v0, "RTTTL"

    #@eb
    const-string/jumbo v1, "audio/midi"

    #@ee
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@f1
    .line 204
    const-string/jumbo v0, "SMF"

    #@f4
    const-string/jumbo v1, "audio/sp-midi"

    #@f7
    const/16 v2, 0xc

    #@f9
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@fc
    .line 205
    const-string/jumbo v0, "IMY"

    #@ff
    const-string/jumbo v1, "audio/imelody"

    #@102
    const/16 v2, 0xd

    #@104
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@107
    .line 206
    const-string/jumbo v0, "RTX"

    #@10a
    const-string/jumbo v1, "audio/midi"

    #@10d
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@110
    .line 207
    const-string/jumbo v0, "OTA"

    #@113
    const-string/jumbo v1, "audio/midi"

    #@116
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@119
    .line 208
    const-string/jumbo v0, "MXMF"

    #@11c
    const-string/jumbo v1, "audio/midi"

    #@11f
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@122
    .line 210
    const-string/jumbo v0, "MPEG"

    #@125
    const-string/jumbo v1, "video/mpeg"

    #@128
    const/16 v2, 0x15

    #@12a
    invoke-static {v0, v2, v1, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@12d
    .line 211
    const-string/jumbo v0, "MPG"

    #@130
    const-string/jumbo v1, "video/mpeg"

    #@133
    const/16 v2, 0x15

    #@135
    invoke-static {v0, v2, v1, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@138
    .line 212
    const-string/jumbo v0, "MP4"

    #@13b
    const-string/jumbo v1, "video/mp4"

    #@13e
    const/16 v2, 0x15

    #@140
    invoke-static {v0, v2, v1, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@143
    .line 213
    const-string/jumbo v0, "M4V"

    #@146
    const-string/jumbo v1, "video/mp4"

    #@149
    const/16 v2, 0x16

    #@14b
    invoke-static {v0, v2, v1, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@14e
    .line 214
    const-string/jumbo v0, "3GP"

    #@151
    const-string/jumbo v1, "video/3gpp"

    #@154
    const/16 v2, 0x17

    #@156
    invoke-static {v0, v2, v1, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@159
    .line 215
    const-string/jumbo v0, "3GPP"

    #@15c
    const-string/jumbo v1, "video/3gpp"

    #@15f
    const/16 v2, 0x17

    #@161
    invoke-static {v0, v2, v1, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@164
    .line 216
    const-string/jumbo v0, "3G2"

    #@167
    const-string/jumbo v1, "video/3gpp2"

    #@16a
    const/16 v2, 0x18

    #@16c
    invoke-static {v0, v2, v1, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@16f
    .line 217
    const-string/jumbo v0, "3GPP2"

    #@172
    const-string/jumbo v1, "video/3gpp2"

    #@175
    const/16 v2, 0x18

    #@177
    invoke-static {v0, v2, v1, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@17a
    .line 218
    const-string/jumbo v0, "MKV"

    #@17d
    const-string/jumbo v1, "video/x-matroska"

    #@180
    const/16 v2, 0x1b

    #@182
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@185
    .line 219
    const-string/jumbo v0, "WEBM"

    #@188
    const-string/jumbo v1, "video/webm"

    #@18b
    const/16 v2, 0x1e

    #@18d
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@190
    .line 220
    const-string/jumbo v0, "TS"

    #@193
    const-string/jumbo v1, "video/mp2ts"

    #@196
    const/16 v2, 0x1c

    #@198
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@19b
    .line 221
    const-string/jumbo v0, "AVI"

    #@19e
    const-string/jumbo v1, "video/avi"

    #@1a1
    const/16 v2, 0x1d

    #@1a3
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@1a6
    .line 223
    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    #@1a9
    move-result v0

    #@1aa
    if-eqz v0, :cond_1

    #@1ac
    .line 224
    const-string/jumbo v0, "WMV"

    #@1af
    const-string/jumbo v1, "video/x-ms-wmv"

    #@1b2
    const/16 v2, 0x19

    #@1b4
    const v3, 0xb981

    #@1b7
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@1ba
    .line 225
    const-string/jumbo v0, "ASF"

    #@1bd
    const-string/jumbo v1, "video/x-ms-asf"

    #@1c0
    const/16 v2, 0x1a

    #@1c2
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@1c5
    .line 228
    :cond_1
    const-string/jumbo v0, "JPG"

    #@1c8
    const-string/jumbo v1, "image/jpeg"

    #@1cb
    const/16 v2, 0x1f

    #@1cd
    const/16 v3, 0x3801

    #@1cf
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@1d2
    .line 229
    const-string/jumbo v0, "JPEG"

    #@1d5
    const-string/jumbo v1, "image/jpeg"

    #@1d8
    const/16 v2, 0x1f

    #@1da
    const/16 v3, 0x3801

    #@1dc
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@1df
    .line 230
    const-string/jumbo v0, "GIF"

    #@1e2
    const-string/jumbo v1, "image/gif"

    #@1e5
    const/16 v2, 0x20

    #@1e7
    const/16 v3, 0x3807

    #@1e9
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@1ec
    .line 231
    const-string/jumbo v0, "PNG"

    #@1ef
    const-string/jumbo v1, "image/png"

    #@1f2
    const/16 v2, 0x21

    #@1f4
    const/16 v3, 0x380b

    #@1f6
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@1f9
    .line 232
    const-string/jumbo v0, "BMP"

    #@1fc
    const-string/jumbo v1, "image/x-ms-bmp"

    #@1ff
    const/16 v2, 0x22

    #@201
    const/16 v3, 0x3804

    #@203
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@206
    .line 233
    const-string/jumbo v0, "WBMP"

    #@209
    const-string/jumbo v1, "image/vnd.wap.wbmp"

    #@20c
    const/16 v2, 0x23

    #@20e
    const/16 v3, 0x3800

    #@210
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@213
    .line 234
    const-string/jumbo v0, "WEBP"

    #@216
    const-string/jumbo v1, "image/webp"

    #@219
    const/16 v2, 0x24

    #@21b
    const/16 v3, 0x3800

    #@21d
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@220
    .line 236
    const-string/jumbo v0, "DNG"

    #@223
    const-string/jumbo v1, "image/x-adobe-dng"

    #@226
    const/16 v2, 0x12c

    #@228
    const/16 v3, 0x3811

    #@22a
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@22d
    .line 237
    const-string/jumbo v0, "CR2"

    #@230
    const-string/jumbo v1, "image/x-canon-cr2"

    #@233
    const/16 v2, 0x12d

    #@235
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@238
    .line 238
    const-string/jumbo v0, "NEF"

    #@23b
    const-string/jumbo v1, "image/x-nikon-nef"

    #@23e
    const/16 v2, 0x12e

    #@240
    const/16 v3, 0x3802

    #@242
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@245
    .line 239
    const-string/jumbo v0, "NRW"

    #@248
    const-string/jumbo v1, "image/x-nikon-nrw"

    #@24b
    const/16 v2, 0x12f

    #@24d
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@250
    .line 240
    const-string/jumbo v0, "ARW"

    #@253
    const-string/jumbo v1, "image/x-sony-arw"

    #@256
    const/16 v2, 0x130

    #@258
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@25b
    .line 241
    const-string/jumbo v0, "RW2"

    #@25e
    const-string/jumbo v1, "image/x-panasonic-rw2"

    #@261
    const/16 v2, 0x131

    #@263
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@266
    .line 242
    const-string/jumbo v0, "ORF"

    #@269
    const-string/jumbo v1, "image/x-olympus-orf"

    #@26c
    const/16 v2, 0x132

    #@26e
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@271
    .line 243
    const-string/jumbo v0, "RAF"

    #@274
    const-string/jumbo v1, "image/x-fuji-raf"

    #@277
    const/16 v2, 0x133

    #@279
    const/16 v3, 0x3800

    #@27b
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@27e
    .line 244
    const-string/jumbo v0, "PEF"

    #@281
    const-string/jumbo v1, "image/x-pentax-pef"

    #@284
    const/16 v2, 0x134

    #@286
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@289
    .line 245
    const-string/jumbo v0, "SRW"

    #@28c
    const-string/jumbo v1, "image/x-samsung-srw"

    #@28f
    const/16 v2, 0x135

    #@291
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@294
    .line 247
    const-string/jumbo v0, "M3U"

    #@297
    const-string/jumbo v1, "audio/x-mpegurl"

    #@29a
    const/16 v2, 0x29

    #@29c
    const v3, 0xba11

    #@29f
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@2a2
    .line 248
    const-string/jumbo v0, "M3U"

    #@2a5
    const-string/jumbo v1, "application/x-mpegurl"

    #@2a8
    const/16 v2, 0x29

    #@2aa
    const v3, 0xba11

    #@2ad
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@2b0
    .line 249
    const-string/jumbo v0, "PLS"

    #@2b3
    const-string/jumbo v1, "audio/x-scpls"

    #@2b6
    const/16 v2, 0x2a

    #@2b8
    const v3, 0xba14

    #@2bb
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@2be
    .line 250
    const-string/jumbo v0, "WPL"

    #@2c1
    const-string/jumbo v1, "application/vnd.ms-wpl"

    #@2c4
    const/16 v2, 0x2b

    #@2c6
    const v3, 0xba10

    #@2c9
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@2cc
    .line 251
    const-string/jumbo v0, "M3U8"

    #@2cf
    const-string/jumbo v1, "application/vnd.apple.mpegurl"

    #@2d2
    const/16 v2, 0x2c

    #@2d4
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@2d7
    .line 252
    const-string/jumbo v0, "M3U8"

    #@2da
    const-string/jumbo v1, "audio/mpegurl"

    #@2dd
    const/16 v2, 0x2c

    #@2df
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@2e2
    .line 253
    const-string/jumbo v0, "M3U8"

    #@2e5
    const-string/jumbo v1, "audio/x-mpegurl"

    #@2e8
    const/16 v2, 0x2c

    #@2ea
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@2ed
    .line 255
    const-string/jumbo v0, "FL"

    #@2f0
    const-string/jumbo v1, "application/x-android-drm-fl"

    #@2f3
    const/16 v2, 0x33

    #@2f5
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@2f8
    .line 257
    const-string/jumbo v0, "TXT"

    #@2fb
    const-string/jumbo v1, "text/plain"

    #@2fe
    const/16 v2, 0x64

    #@300
    const/16 v3, 0x3004

    #@302
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@305
    .line 258
    const-string/jumbo v0, "HTM"

    #@308
    const-string/jumbo v1, "text/html"

    #@30b
    const/16 v2, 0x65

    #@30d
    const/16 v3, 0x3005

    #@30f
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@312
    .line 259
    const-string/jumbo v0, "HTML"

    #@315
    const-string/jumbo v1, "text/html"

    #@318
    const/16 v2, 0x65

    #@31a
    const/16 v3, 0x3005

    #@31c
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@31f
    .line 260
    const-string/jumbo v0, "PDF"

    #@322
    const-string/jumbo v1, "application/pdf"

    #@325
    const/16 v2, 0x66

    #@327
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@32a
    .line 261
    const-string/jumbo v0, "DOC"

    #@32d
    const-string/jumbo v1, "application/msword"

    #@330
    const/16 v2, 0x68

    #@332
    const v3, 0xba83

    #@335
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@338
    .line 262
    const-string/jumbo v0, "XLS"

    #@33b
    const-string/jumbo v1, "application/vnd.ms-excel"

    #@33e
    const/16 v2, 0x69

    #@340
    const v3, 0xba85

    #@343
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@346
    .line 263
    const-string/jumbo v0, "PPT"

    #@349
    const-string/jumbo v1, "application/mspowerpoint"

    #@34c
    const/16 v2, 0x6a

    #@34e
    const v3, 0xba86

    #@351
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@354
    .line 264
    const-string/jumbo v0, "FLAC"

    #@357
    const-string/jumbo v1, "audio/flac"

    #@35a
    const/16 v2, 0xa

    #@35c
    const v3, 0xb906

    #@35f
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@362
    .line 265
    const-string/jumbo v0, "ZIP"

    #@365
    const-string/jumbo v1, "application/zip"

    #@368
    const/16 v2, 0x6b

    #@36a
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@36d
    .line 266
    const-string/jumbo v0, "MPG"

    #@370
    const-string/jumbo v1, "video/mp2p"

    #@373
    const/16 v2, 0xc8

    #@375
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@378
    .line 267
    const-string/jumbo v0, "MPEG"

    #@37b
    const-string/jumbo v1, "video/mp2p"

    #@37e
    const/16 v2, 0xc8

    #@380
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@383
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
    .line 148
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    #@2
    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    #@4
    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    #@7
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 149
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 147
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
    .line 153
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@3
    .line 154
    sget-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    #@5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 155
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    #@e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 156
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    #@17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 152
    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 322
    const/16 v2, 0x2f

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@6
    move-result v1

    #@7
    .line 323
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    #@9
    .line 324
    add-int/lit8 v1, v1, 0x1

    #@b
    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    if-ge v1, v2, :cond_0

    #@11
    .line 326
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    .line 330
    :cond_0
    const/16 v2, 0x2e

    #@17
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@1a
    move-result v0

    #@1b
    .line 331
    .local v0, "lastDot":I
    if-lez v0, :cond_1

    #@1d
    .line 332
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@20
    move-result-object p0

    #@21
    .line 334
    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 307
    const/16 v1, 0x2e

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@5
    move-result v0

    #@6
    .line 308
    .local v0, "lastDot":I
    if-gez v0, :cond_0

    #@8
    .line 309
    const/4 v1, 0x0

    #@9
    return-object v1

    #@a
    .line 310
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
    .line 338
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 339
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
    .line 348
    if-eqz p1, :cond_0

    #@2
    .line 349
    sget-object v3, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    #@4
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Ljava/lang/Integer;

    #@a
    .line 350
    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    #@c
    .line 351
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v3

    #@10
    return v3

    #@11
    .line 354
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_0
    const/16 v3, 0x2e

    #@13
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@16
    move-result v1

    #@17
    .line 355
    .local v1, "lastDot":I
    if-lez v1, :cond_1

    #@19
    .line 356
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
    .line 357
    .local v0, "extension":Ljava/lang/String;
    sget-object v3, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    #@27
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Ljava/lang/Integer;

    #@2d
    .line 358
    .restart local v2    # "value":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    #@2f
    .line 359
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@32
    move-result v3

    #@33
    return v3

    #@34
    .line 362
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
    .line 343
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    #@4
    move-result-object v0

    #@5
    .line 344
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
    .line 366
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
    .line 271
    if-lt p0, v0, :cond_1

    #@4
    .line 272
    const/16 v2, 0xa

    #@6
    if-gt p0, v2, :cond_1

    #@8
    .line 271
    :cond_0
    :goto_0
    return v0

    #@9
    .line 273
    :cond_1
    const/16 v2, 0xb

    #@b
    if-lt p0, v2, :cond_2

    #@d
    .line 274
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
    .line 273
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
    .line 302
    if-lt p0, v1, :cond_0

    #@5
    .line 303
    if-gt p0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    .line 302
    :cond_0
    return v0
.end method

.method public static isImageFileType(I)Z
    .locals 3
    .param p0, "fileType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 285
    const/16 v2, 0x1f

    #@4
    if-lt p0, v2, :cond_1

    #@6
    .line 286
    const/16 v2, 0x24

    #@8
    if-gt p0, v2, :cond_1

    #@a
    .line 285
    :cond_0
    :goto_0
    return v0

    #@b
    .line 287
    :cond_1
    const/16 v2, 0x12c

    #@d
    if-lt p0, v2, :cond_2

    #@f
    .line 288
    const/16 v2, 0x135

    #@11
    if-le p0, v2, :cond_0

    #@13
    move v0, v1

    #@14
    goto :goto_0

    #@15
    :cond_2
    move v0, v1

    #@16
    .line 287
    goto :goto_0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 314
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 315
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
    .line 316
    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@13
    move-result v1

    #@14
    .line 315
    if-nez v1, :cond_0

    #@16
    .line 316
    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    #@19
    move-result v1

    #@1a
    .line 315
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
    .line 297
    const/16 v1, 0x29

    #@3
    if-lt p0, v1, :cond_0

    #@5
    .line 298
    const/16 v1, 0x2c

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 297
    :cond_0
    return v0
.end method

.method public static isRawImageFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 292
    const/16 v1, 0x12c

    #@3
    if-lt p0, v1, :cond_0

    #@5
    .line 293
    const/16 v1, 0x135

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 292
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
    .line 278
    const/16 v2, 0x15

    #@6
    if-lt p0, v2, :cond_1

    #@8
    .line 279
    const/16 v2, 0x1e

    #@a
    if-gt p0, v2, :cond_1

    #@c
    .line 278
    :cond_0
    :goto_0
    return v0

    #@d
    .line 280
    :cond_1
    if-lt p0, v3, :cond_2

    #@f
    .line 281
    if-le p0, v3, :cond_0

    #@11
    move v0, v1

    #@12
    goto :goto_0

    #@13
    :cond_2
    move v0, v1

    #@14
    .line 280
    goto :goto_0
.end method

.method private static isWMAEnabled()Z
    .locals 5

    #@0
    .prologue
    .line 160
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 161
    .local v2, "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    .line 162
    .local v0, "count":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 163
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/media/DecoderCapabilities$AudioDecoder;

    #@11
    .line 164
    .local v1, "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    #@13
    if-ne v1, v4, :cond_0

    #@15
    .line 165
    const/4 v4, 0x1

    #@16
    return v4

    #@17
    .line 162
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 168
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
    .line 172
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 173
    .local v2, "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    .line 174
    .local v0, "count":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 175
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/media/DecoderCapabilities$VideoDecoder;

    #@11
    .line 176
    .local v1, "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    #@13
    if-ne v1, v4, :cond_0

    #@15
    .line 177
    const/4 v4, 0x1

    #@16
    return v4

    #@17
    .line 174
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 180
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_1
    const/4 v4, 0x0

    #@1b
    return v4
.end method
