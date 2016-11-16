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

.field public static final FILE_TYPE_QT:I = 0xc9

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

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xc9

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
    .line 135
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 134
    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    #@11
    .line 137
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    .line 136
    sput-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    #@18
    .line 140
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    .line 139
    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    #@1f
    .line 143
    new-instance v0, Ljava/util/HashMap;

    #@21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@24
    .line 142
    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    #@26
    .line 146
    new-instance v0, Ljava/util/HashMap;

    #@28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2b
    .line 145
    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    #@2d
    .line 185
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
    .line 186
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
    .line 187
    const-string/jumbo v0, "M4A"

    #@48
    const-string/jumbo v1, "audio/mp4"

    #@4b
    const/4 v2, 0x2

    #@4c
    invoke-static {v0, v2, v1, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@4f
    .line 188
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
    .line 189
    const-string/jumbo v0, "AMR"

    #@5e
    const-string/jumbo v1, "audio/amr"

    #@61
    const/4 v2, 0x4

    #@62
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@65
    .line 190
    const-string/jumbo v0, "AWB"

    #@68
    const-string/jumbo v1, "audio/amr-wb"

    #@6b
    const/4 v2, 0x5

    #@6c
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@6f
    .line 191
    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_0

    #@75
    .line 192
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
    .line 194
    :cond_0
    const-string/jumbo v0, "OGG"

    #@85
    const-string/jumbo v1, "audio/ogg"

    #@88
    const v2, 0xb902

    #@8b
    invoke-static {v0, v8, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@8e
    .line 195
    const-string/jumbo v0, "OGG"

    #@91
    const-string/jumbo v1, "application/ogg"

    #@94
    const v2, 0xb902

    #@97
    invoke-static {v0, v8, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@9a
    .line 196
    const-string/jumbo v0, "OGA"

    #@9d
    const-string/jumbo v1, "application/ogg"

    #@a0
    const v2, 0xb902

    #@a3
    invoke-static {v0, v8, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@a6
    .line 197
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
    .line 198
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
    .line 199
    const-string/jumbo v0, "MKA"

    #@c5
    const-string/jumbo v1, "audio/x-matroska"

    #@c8
    const/16 v2, 0x9

    #@ca
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@cd
    .line 201
    const-string/jumbo v0, "MID"

    #@d0
    const-string/jumbo v1, "audio/midi"

    #@d3
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@d6
    .line 202
    const-string/jumbo v0, "MIDI"

    #@d9
    const-string/jumbo v1, "audio/midi"

    #@dc
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@df
    .line 203
    const-string/jumbo v0, "XMF"

    #@e2
    const-string/jumbo v1, "audio/midi"

    #@e5
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@e8
    .line 204
    const-string/jumbo v0, "RTTTL"

    #@eb
    const-string/jumbo v1, "audio/midi"

    #@ee
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@f1
    .line 205
    const-string/jumbo v0, "SMF"

    #@f4
    const-string/jumbo v1, "audio/sp-midi"

    #@f7
    const/16 v2, 0xc

    #@f9
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@fc
    .line 206
    const-string/jumbo v0, "IMY"

    #@ff
    const-string/jumbo v1, "audio/imelody"

    #@102
    const/16 v2, 0xd

    #@104
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@107
    .line 207
    const-string/jumbo v0, "RTX"

    #@10a
    const-string/jumbo v1, "audio/midi"

    #@10d
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@110
    .line 208
    const-string/jumbo v0, "OTA"

    #@113
    const-string/jumbo v1, "audio/midi"

    #@116
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@119
    .line 209
    const-string/jumbo v0, "MXMF"

    #@11c
    const-string/jumbo v1, "audio/midi"

    #@11f
    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@122
    .line 211
    const-string/jumbo v0, "MPEG"

    #@125
    const-string/jumbo v1, "video/mpeg"

    #@128
    const/16 v2, 0x15

    #@12a
    invoke-static {v0, v2, v1, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@12d
    .line 212
    const-string/jumbo v0, "MPG"

    #@130
    const-string/jumbo v1, "video/mpeg"

    #@133
    const/16 v2, 0x15

    #@135
    invoke-static {v0, v2, v1, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@138
    .line 213
    const-string/jumbo v0, "MP4"

    #@13b
    const-string/jumbo v1, "video/mp4"

    #@13e
    const/16 v2, 0x15

    #@140
    invoke-static {v0, v2, v1, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@143
    .line 214
    const-string/jumbo v0, "M4V"

    #@146
    const-string/jumbo v1, "video/mp4"

    #@149
    const/16 v2, 0x16

    #@14b
    invoke-static {v0, v2, v1, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@14e
    .line 215
    const-string/jumbo v0, "MOV"

    #@151
    const-string/jumbo v1, "video/quicktime"

    #@154
    const/16 v2, 0xc9

    #@156
    invoke-static {v0, v2, v1, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@159
    .line 217
    const-string/jumbo v0, "3GP"

    #@15c
    const-string/jumbo v1, "video/3gpp"

    #@15f
    const/16 v2, 0x17

    #@161
    invoke-static {v0, v2, v1, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@164
    .line 218
    const-string/jumbo v0, "3GPP"

    #@167
    const-string/jumbo v1, "video/3gpp"

    #@16a
    const/16 v2, 0x17

    #@16c
    invoke-static {v0, v2, v1, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@16f
    .line 219
    const-string/jumbo v0, "3G2"

    #@172
    const-string/jumbo v1, "video/3gpp2"

    #@175
    const/16 v2, 0x18

    #@177
    invoke-static {v0, v2, v1, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@17a
    .line 220
    const-string/jumbo v0, "3GPP2"

    #@17d
    const-string/jumbo v1, "video/3gpp2"

    #@180
    const/16 v2, 0x18

    #@182
    invoke-static {v0, v2, v1, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@185
    .line 221
    const-string/jumbo v0, "MKV"

    #@188
    const-string/jumbo v1, "video/x-matroska"

    #@18b
    const/16 v2, 0x1b

    #@18d
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@190
    .line 222
    const-string/jumbo v0, "WEBM"

    #@193
    const-string/jumbo v1, "video/webm"

    #@196
    const/16 v2, 0x1e

    #@198
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@19b
    .line 223
    const-string/jumbo v0, "TS"

    #@19e
    const-string/jumbo v1, "video/mp2ts"

    #@1a1
    const/16 v2, 0x1c

    #@1a3
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@1a6
    .line 224
    const-string/jumbo v0, "AVI"

    #@1a9
    const-string/jumbo v1, "video/avi"

    #@1ac
    const/16 v2, 0x1d

    #@1ae
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@1b1
    .line 226
    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    #@1b4
    move-result v0

    #@1b5
    if-eqz v0, :cond_1

    #@1b7
    .line 227
    const-string/jumbo v0, "WMV"

    #@1ba
    const-string/jumbo v1, "video/x-ms-wmv"

    #@1bd
    const/16 v2, 0x19

    #@1bf
    const v3, 0xb981

    #@1c2
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@1c5
    .line 228
    const-string/jumbo v0, "ASF"

    #@1c8
    const-string/jumbo v1, "video/x-ms-asf"

    #@1cb
    const/16 v2, 0x1a

    #@1cd
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@1d0
    .line 231
    :cond_1
    const-string/jumbo v0, "JPG"

    #@1d3
    const-string/jumbo v1, "image/jpeg"

    #@1d6
    const/16 v2, 0x1f

    #@1d8
    const/16 v3, 0x3801

    #@1da
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@1dd
    .line 232
    const-string/jumbo v0, "JPEG"

    #@1e0
    const-string/jumbo v1, "image/jpeg"

    #@1e3
    const/16 v2, 0x1f

    #@1e5
    const/16 v3, 0x3801

    #@1e7
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@1ea
    .line 233
    const-string/jumbo v0, "GIF"

    #@1ed
    const-string/jumbo v1, "image/gif"

    #@1f0
    const/16 v2, 0x20

    #@1f2
    const/16 v3, 0x3807

    #@1f4
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@1f7
    .line 234
    const-string/jumbo v0, "PNG"

    #@1fa
    const-string/jumbo v1, "image/png"

    #@1fd
    const/16 v2, 0x21

    #@1ff
    const/16 v3, 0x380b

    #@201
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@204
    .line 235
    const-string/jumbo v0, "BMP"

    #@207
    const-string/jumbo v1, "image/x-ms-bmp"

    #@20a
    const/16 v2, 0x22

    #@20c
    const/16 v3, 0x3804

    #@20e
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@211
    .line 236
    const-string/jumbo v0, "WBMP"

    #@214
    const-string/jumbo v1, "image/vnd.wap.wbmp"

    #@217
    const/16 v2, 0x23

    #@219
    const/16 v3, 0x3800

    #@21b
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@21e
    .line 237
    const-string/jumbo v0, "WEBP"

    #@221
    const-string/jumbo v1, "image/webp"

    #@224
    const/16 v2, 0x24

    #@226
    const/16 v3, 0x3800

    #@228
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@22b
    .line 239
    const-string/jumbo v0, "DNG"

    #@22e
    const-string/jumbo v1, "image/x-adobe-dng"

    #@231
    const/16 v2, 0x12c

    #@233
    const/16 v3, 0x3811

    #@235
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@238
    .line 240
    const-string/jumbo v0, "CR2"

    #@23b
    const-string/jumbo v1, "image/x-canon-cr2"

    #@23e
    const/16 v2, 0x12d

    #@240
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@243
    .line 241
    const-string/jumbo v0, "NEF"

    #@246
    const-string/jumbo v1, "image/x-nikon-nef"

    #@249
    const/16 v2, 0x12e

    #@24b
    const/16 v3, 0x3802

    #@24d
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@250
    .line 242
    const-string/jumbo v0, "NRW"

    #@253
    const-string/jumbo v1, "image/x-nikon-nrw"

    #@256
    const/16 v2, 0x12f

    #@258
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@25b
    .line 243
    const-string/jumbo v0, "ARW"

    #@25e
    const-string/jumbo v1, "image/x-sony-arw"

    #@261
    const/16 v2, 0x130

    #@263
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@266
    .line 244
    const-string/jumbo v0, "RW2"

    #@269
    const-string/jumbo v1, "image/x-panasonic-rw2"

    #@26c
    const/16 v2, 0x131

    #@26e
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@271
    .line 245
    const-string/jumbo v0, "ORF"

    #@274
    const-string/jumbo v1, "image/x-olympus-orf"

    #@277
    const/16 v2, 0x132

    #@279
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@27c
    .line 246
    const-string/jumbo v0, "RAF"

    #@27f
    const-string/jumbo v1, "image/x-fuji-raf"

    #@282
    const/16 v2, 0x133

    #@284
    const/16 v3, 0x3800

    #@286
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@289
    .line 247
    const-string/jumbo v0, "PEF"

    #@28c
    const-string/jumbo v1, "image/x-pentax-pef"

    #@28f
    const/16 v2, 0x134

    #@291
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@294
    .line 248
    const-string/jumbo v0, "SRW"

    #@297
    const-string/jumbo v1, "image/x-samsung-srw"

    #@29a
    const/16 v2, 0x135

    #@29c
    invoke-static {v0, v2, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@29f
    .line 250
    const-string/jumbo v0, "M3U"

    #@2a2
    const-string/jumbo v1, "audio/x-mpegurl"

    #@2a5
    const/16 v2, 0x29

    #@2a7
    const v3, 0xba11

    #@2aa
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@2ad
    .line 251
    const-string/jumbo v0, "M3U"

    #@2b0
    const-string/jumbo v1, "application/x-mpegurl"

    #@2b3
    const/16 v2, 0x29

    #@2b5
    const v3, 0xba11

    #@2b8
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@2bb
    .line 252
    const-string/jumbo v0, "PLS"

    #@2be
    const-string/jumbo v1, "audio/x-scpls"

    #@2c1
    const/16 v2, 0x2a

    #@2c3
    const v3, 0xba14

    #@2c6
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@2c9
    .line 253
    const-string/jumbo v0, "WPL"

    #@2cc
    const-string/jumbo v1, "application/vnd.ms-wpl"

    #@2cf
    const/16 v2, 0x2b

    #@2d1
    const v3, 0xba10

    #@2d4
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@2d7
    .line 254
    const-string/jumbo v0, "M3U8"

    #@2da
    const-string/jumbo v1, "application/vnd.apple.mpegurl"

    #@2dd
    const/16 v2, 0x2c

    #@2df
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@2e2
    .line 255
    const-string/jumbo v0, "M3U8"

    #@2e5
    const-string/jumbo v1, "audio/mpegurl"

    #@2e8
    const/16 v2, 0x2c

    #@2ea
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@2ed
    .line 256
    const-string/jumbo v0, "M3U8"

    #@2f0
    const-string/jumbo v1, "audio/x-mpegurl"

    #@2f3
    const/16 v2, 0x2c

    #@2f5
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@2f8
    .line 258
    const-string/jumbo v0, "FL"

    #@2fb
    const-string/jumbo v1, "application/x-android-drm-fl"

    #@2fe
    const/16 v2, 0x33

    #@300
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@303
    .line 260
    const-string/jumbo v0, "TXT"

    #@306
    const-string/jumbo v1, "text/plain"

    #@309
    const/16 v2, 0x64

    #@30b
    const/16 v3, 0x3004

    #@30d
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@310
    .line 261
    const-string/jumbo v0, "HTM"

    #@313
    const-string/jumbo v1, "text/html"

    #@316
    const/16 v2, 0x65

    #@318
    const/16 v3, 0x3005

    #@31a
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@31d
    .line 262
    const-string/jumbo v0, "HTML"

    #@320
    const-string/jumbo v1, "text/html"

    #@323
    const/16 v2, 0x65

    #@325
    const/16 v3, 0x3005

    #@327
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@32a
    .line 263
    const-string/jumbo v0, "PDF"

    #@32d
    const-string/jumbo v1, "application/pdf"

    #@330
    const/16 v2, 0x66

    #@332
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@335
    .line 264
    const-string/jumbo v0, "DOC"

    #@338
    const-string/jumbo v1, "application/msword"

    #@33b
    const/16 v2, 0x68

    #@33d
    const v3, 0xba83

    #@340
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@343
    .line 265
    const-string/jumbo v0, "XLS"

    #@346
    const-string/jumbo v1, "application/vnd.ms-excel"

    #@349
    const/16 v2, 0x69

    #@34b
    const v3, 0xba85

    #@34e
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@351
    .line 266
    const-string/jumbo v0, "PPT"

    #@354
    const-string/jumbo v1, "application/mspowerpoint"

    #@357
    const/16 v2, 0x6a

    #@359
    const v3, 0xba86

    #@35c
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@35f
    .line 267
    const-string/jumbo v0, "FLAC"

    #@362
    const-string/jumbo v1, "audio/flac"

    #@365
    const/16 v2, 0xa

    #@367
    const v3, 0xb906

    #@36a
    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    #@36d
    .line 268
    const-string/jumbo v0, "ZIP"

    #@370
    const-string/jumbo v1, "application/zip"

    #@373
    const/16 v2, 0x6b

    #@375
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@378
    .line 269
    const-string/jumbo v0, "MPG"

    #@37b
    const-string/jumbo v1, "video/mp2p"

    #@37e
    const/16 v2, 0xc8

    #@380
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@383
    .line 270
    const-string/jumbo v0, "MPEG"

    #@386
    const-string/jumbo v1, "video/mp2p"

    #@389
    const/16 v2, 0xc8

    #@38b
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@38e
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
    .line 149
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    #@2
    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    #@4
    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    #@7
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 150
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 148
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
    .line 154
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    #@3
    .line 155
    sget-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    #@5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 156
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    #@e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 157
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    #@17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 153
    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 325
    const/16 v2, 0x2f

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@6
    move-result v1

    #@7
    .line 326
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    #@9
    .line 327
    add-int/lit8 v1, v1, 0x1

    #@b
    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    if-ge v1, v2, :cond_0

    #@11
    .line 329
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    .line 333
    :cond_0
    const/16 v2, 0x2e

    #@17
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@1a
    move-result v0

    #@1b
    .line 334
    .local v0, "lastDot":I
    if-lez v0, :cond_1

    #@1d
    .line 335
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@20
    move-result-object p0

    #@21
    .line 337
    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 310
    const/16 v1, 0x2e

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@5
    move-result v0

    #@6
    .line 311
    .local v0, "lastDot":I
    if-gez v0, :cond_0

    #@8
    .line 312
    const/4 v1, 0x0

    #@9
    return-object v1

    #@a
    .line 313
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
    .line 341
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 342
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
    .line 351
    if-eqz p1, :cond_0

    #@2
    .line 352
    sget-object v3, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    #@4
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Ljava/lang/Integer;

    #@a
    .line 353
    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    #@c
    .line 354
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v3

    #@10
    return v3

    #@11
    .line 357
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_0
    const/16 v3, 0x2e

    #@13
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@16
    move-result v1

    #@17
    .line 358
    .local v1, "lastDot":I
    if-lez v1, :cond_1

    #@19
    .line 359
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
    .line 360
    .local v0, "extension":Ljava/lang/String;
    sget-object v3, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    #@27
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Ljava/lang/Integer;

    #@2d
    .line 361
    .restart local v2    # "value":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    #@2f
    .line 362
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@32
    move-result v3

    #@33
    return v3

    #@34
    .line 365
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
    .line 346
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    #@4
    move-result-object v0

    #@5
    .line 347
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
    .line 369
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
    .line 274
    if-lt p0, v0, :cond_1

    #@4
    .line 275
    const/16 v2, 0xa

    #@6
    if-gt p0, v2, :cond_1

    #@8
    .line 274
    :cond_0
    :goto_0
    return v0

    #@9
    .line 276
    :cond_1
    const/16 v2, 0xb

    #@b
    if-lt p0, v2, :cond_2

    #@d
    .line 277
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
    .line 276
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
    .line 305
    if-lt p0, v1, :cond_0

    #@5
    .line 306
    if-gt p0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    .line 305
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
    .line 288
    const/16 v2, 0x1f

    #@4
    if-lt p0, v2, :cond_1

    #@6
    .line 289
    const/16 v2, 0x24

    #@8
    if-gt p0, v2, :cond_1

    #@a
    .line 288
    :cond_0
    :goto_0
    return v0

    #@b
    .line 290
    :cond_1
    const/16 v2, 0x12c

    #@d
    if-lt p0, v2, :cond_2

    #@f
    .line 291
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
    .line 290
    goto :goto_0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 317
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 318
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
    .line 319
    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    #@13
    move-result v1

    #@14
    .line 318
    if-nez v1, :cond_0

    #@16
    .line 319
    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    #@19
    move-result v1

    #@1a
    .line 318
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
    .line 300
    const/16 v1, 0x29

    #@3
    if-lt p0, v1, :cond_0

    #@5
    .line 301
    const/16 v1, 0x2c

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 300
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
    .line 295
    const/16 v1, 0x12c

    #@3
    if-lt p0, v1, :cond_0

    #@5
    .line 296
    const/16 v1, 0x135

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 295
    :cond_0
    return v0
.end method

.method public static isVideoFileType(I)Z
    .locals 3
    .param p0, "fileType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 281
    const/16 v2, 0x15

    #@4
    if-lt p0, v2, :cond_1

    #@6
    .line 282
    const/16 v2, 0x1e

    #@8
    if-gt p0, v2, :cond_1

    #@a
    .line 281
    :cond_0
    :goto_0
    return v0

    #@b
    .line 283
    :cond_1
    const/16 v2, 0xc8

    #@d
    if-lt p0, v2, :cond_2

    #@f
    .line 284
    const/16 v2, 0xc9

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
    .line 283
    goto :goto_0
.end method

.method private static isWMAEnabled()Z
    .locals 5

    #@0
    .prologue
    .line 161
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 162
    .local v2, "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    .line 163
    .local v0, "count":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 164
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/media/DecoderCapabilities$AudioDecoder;

    #@11
    .line 165
    .local v1, "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    #@13
    if-ne v1, v4, :cond_0

    #@15
    .line 166
    const/4 v4, 0x1

    #@16
    return v4

    #@17
    .line 163
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 169
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
    .line 173
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 174
    .local v2, "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    .line 175
    .local v0, "count":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 176
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/media/DecoderCapabilities$VideoDecoder;

    #@11
    .line 177
    .local v1, "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    #@13
    if-ne v1, v4, :cond_0

    #@15
    .line 178
    const/4 v4, 0x1

    #@16
    return v4

    #@17
    .line 175
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 181
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_1
    const/4 v4, 0x0

    #@1b
    return v4
.end method
