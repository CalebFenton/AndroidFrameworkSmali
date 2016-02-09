.class public Lcom/google/android/mms/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"


# static fields
.field public static final APP_DRM_CONTENT:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field public static final APP_DRM_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field public static final APP_SMIL:Ljava/lang/String; = "application/smil"

.field public static final APP_WAP_XHTML:Ljava/lang/String; = "application/vnd.wap.xhtml+xml"

.field public static final APP_XHTML:Ljava/lang/String; = "application/xhtml+xml"

.field public static final AUDIO_3GPP:Ljava/lang/String; = "audio/3gpp"

.field public static final AUDIO_AAC:Ljava/lang/String; = "audio/aac"

.field public static final AUDIO_AMR:Ljava/lang/String; = "audio/amr"

.field public static final AUDIO_IMELODY:Ljava/lang/String; = "audio/imelody"

.field public static final AUDIO_MID:Ljava/lang/String; = "audio/mid"

.field public static final AUDIO_MIDI:Ljava/lang/String; = "audio/midi"

.field public static final AUDIO_MP3:Ljava/lang/String; = "audio/mp3"

.field public static final AUDIO_MP4:Ljava/lang/String; = "audio/mp4"

.field public static final AUDIO_MPEG:Ljava/lang/String; = "audio/mpeg"

.field public static final AUDIO_MPEG3:Ljava/lang/String; = "audio/mpeg3"

.field public static final AUDIO_MPG:Ljava/lang/String; = "audio/mpg"

.field public static final AUDIO_OGG:Ljava/lang/String; = "application/ogg"

.field public static final AUDIO_UNSPECIFIED:Ljava/lang/String; = "audio/*"

.field public static final AUDIO_X_MID:Ljava/lang/String; = "audio/x-mid"

.field public static final AUDIO_X_MIDI:Ljava/lang/String; = "audio/x-midi"

.field public static final AUDIO_X_MP3:Ljava/lang/String; = "audio/x-mp3"

.field public static final AUDIO_X_MPEG:Ljava/lang/String; = "audio/x-mpeg"

.field public static final AUDIO_X_MPEG3:Ljava/lang/String; = "audio/x-mpeg3"

.field public static final AUDIO_X_MPG:Ljava/lang/String; = "audio/x-mpg"

.field public static final AUDIO_X_WAV:Ljava/lang/String; = "audio/x-wav"

.field public static final IMAGE_GIF:Ljava/lang/String; = "image/gif"

.field public static final IMAGE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final IMAGE_JPG:Ljava/lang/String; = "image/jpg"

.field public static final IMAGE_PNG:Ljava/lang/String; = "image/png"

.field public static final IMAGE_UNSPECIFIED:Ljava/lang/String; = "image/*"

.field public static final IMAGE_WBMP:Ljava/lang/String; = "image/vnd.wap.wbmp"

.field public static final IMAGE_X_MS_BMP:Ljava/lang/String; = "image/x-ms-bmp"

.field public static final MMS_GENERIC:Ljava/lang/String; = "application/vnd.wap.mms-generic"

.field public static final MMS_MESSAGE:Ljava/lang/String; = "application/vnd.wap.mms-message"

.field public static final MULTIPART_ALTERNATIVE:Ljava/lang/String; = "application/vnd.wap.multipart.alternative"

.field public static final MULTIPART_MIXED:Ljava/lang/String; = "application/vnd.wap.multipart.mixed"

.field public static final MULTIPART_RELATED:Ljava/lang/String; = "application/vnd.wap.multipart.related"

.field public static final TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final TEXT_VCALENDAR:Ljava/lang/String; = "text/x-vCalendar"

.field public static final TEXT_VCARD:Ljava/lang/String; = "text/x-vCard"

.field public static final VIDEO_3G2:Ljava/lang/String; = "video/3gpp2"

.field public static final VIDEO_3GPP:Ljava/lang/String; = "video/3gpp"

.field public static final VIDEO_H263:Ljava/lang/String; = "video/h263"

.field public static final VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field public static final VIDEO_UNSPECIFIED:Ljava/lang/String; = "video/*"

.field private static final sSupportedAudioTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedContentTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedImageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedVideoTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@7
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/mms/ContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    #@e
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    sput-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@15
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    sput-object v0, Lcom/google/android/mms/ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    #@1c
    .line 84
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@1e
    const-string/jumbo v1, "text/plain"

    #@21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 85
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@26
    const-string/jumbo v1, "text/html"

    #@29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 86
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@2e
    const-string/jumbo v1, "text/x-vCalendar"

    #@31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    .line 87
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@36
    const-string/jumbo v1, "text/x-vCard"

    #@39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c
    .line 89
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@3e
    const-string/jumbo v1, "image/jpeg"

    #@41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@44
    .line 90
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@46
    const-string/jumbo v1, "image/gif"

    #@49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    .line 91
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@4e
    const-string/jumbo v1, "image/vnd.wap.wbmp"

    #@51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@54
    .line 92
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@56
    const-string/jumbo v1, "image/png"

    #@59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c
    .line 93
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@5e
    const-string/jumbo v1, "image/jpg"

    #@61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@64
    .line 94
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@66
    const-string/jumbo v1, "image/x-ms-bmp"

    #@69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6c
    .line 97
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@6e
    const-string/jumbo v1, "audio/aac"

    #@71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@74
    .line 98
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@76
    const-string/jumbo v1, "audio/amr"

    #@79
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7c
    .line 99
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@7e
    const-string/jumbo v1, "audio/imelody"

    #@81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@84
    .line 100
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@86
    const-string/jumbo v1, "audio/mid"

    #@89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8c
    .line 101
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@8e
    const-string/jumbo v1, "audio/midi"

    #@91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@94
    .line 102
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@96
    const-string/jumbo v1, "audio/mp3"

    #@99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9c
    .line 103
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@9e
    const-string/jumbo v1, "audio/mp4"

    #@a1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a4
    .line 104
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@a6
    const-string/jumbo v1, "audio/mpeg3"

    #@a9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ac
    .line 105
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@ae
    const-string/jumbo v1, "audio/mpeg"

    #@b1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b4
    .line 106
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@b6
    const-string/jumbo v1, "audio/mpg"

    #@b9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@bc
    .line 107
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@be
    const-string/jumbo v1, "audio/x-mid"

    #@c1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c4
    .line 108
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@c6
    const-string/jumbo v1, "audio/x-midi"

    #@c9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cc
    .line 109
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@ce
    const-string/jumbo v1, "audio/x-mp3"

    #@d1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d4
    .line 110
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@d6
    const-string/jumbo v1, "audio/x-mpeg3"

    #@d9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@dc
    .line 111
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@de
    const-string/jumbo v1, "audio/x-mpeg"

    #@e1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e4
    .line 112
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@e6
    const-string/jumbo v1, "audio/x-mpg"

    #@e9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ec
    .line 113
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@ee
    const-string/jumbo v1, "audio/x-wav"

    #@f1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f4
    .line 114
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@f6
    const-string/jumbo v1, "audio/3gpp"

    #@f9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@fc
    .line 115
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@fe
    const-string/jumbo v1, "application/ogg"

    #@101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@104
    .line 117
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@106
    const-string/jumbo v1, "video/3gpp"

    #@109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10c
    .line 118
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@10e
    const-string/jumbo v1, "video/3gpp2"

    #@111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@114
    .line 119
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@116
    const-string/jumbo v1, "video/h263"

    #@119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11c
    .line 120
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@11e
    const-string/jumbo v1, "video/mp4"

    #@121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@124
    .line 122
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@126
    const-string/jumbo v1, "application/smil"

    #@129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12c
    .line 123
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@12e
    const-string/jumbo v1, "application/vnd.wap.xhtml+xml"

    #@131
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@134
    .line 124
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@136
    const-string/jumbo v1, "application/xhtml+xml"

    #@139
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13c
    .line 126
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@13e
    const-string/jumbo v1, "application/vnd.oma.drm.content"

    #@141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@144
    .line 127
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@146
    const-string/jumbo v1, "application/vnd.oma.drm.message"

    #@149
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14c
    .line 130
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    #@14e
    const-string/jumbo v1, "image/jpeg"

    #@151
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@154
    .line 131
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    #@156
    const-string/jumbo v1, "image/gif"

    #@159
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15c
    .line 132
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    #@15e
    const-string/jumbo v1, "image/vnd.wap.wbmp"

    #@161
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@164
    .line 133
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    #@166
    const-string/jumbo v1, "image/png"

    #@169
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16c
    .line 134
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    #@16e
    const-string/jumbo v1, "image/jpg"

    #@171
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@174
    .line 135
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    #@176
    const-string/jumbo v1, "image/x-ms-bmp"

    #@179
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17c
    .line 138
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@17e
    const-string/jumbo v1, "audio/aac"

    #@181
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@184
    .line 139
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@186
    const-string/jumbo v1, "audio/amr"

    #@189
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18c
    .line 140
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@18e
    const-string/jumbo v1, "audio/imelody"

    #@191
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@194
    .line 141
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@196
    const-string/jumbo v1, "audio/mid"

    #@199
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19c
    .line 142
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@19e
    const-string/jumbo v1, "audio/midi"

    #@1a1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a4
    .line 143
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@1a6
    const-string/jumbo v1, "audio/mp3"

    #@1a9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ac
    .line 144
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@1ae
    const-string/jumbo v1, "audio/mpeg3"

    #@1b1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b4
    .line 145
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@1b6
    const-string/jumbo v1, "audio/mpeg"

    #@1b9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1bc
    .line 146
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@1be
    const-string/jumbo v1, "audio/mpg"

    #@1c1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c4
    .line 147
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@1c6
    const-string/jumbo v1, "audio/mp4"

    #@1c9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1cc
    .line 148
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@1ce
    const-string/jumbo v1, "audio/x-mid"

    #@1d1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d4
    .line 149
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@1d6
    const-string/jumbo v1, "audio/x-midi"

    #@1d9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1dc
    .line 150
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@1de
    const-string/jumbo v1, "audio/x-mp3"

    #@1e1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e4
    .line 151
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@1e6
    const-string/jumbo v1, "audio/x-mpeg3"

    #@1e9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ec
    .line 152
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@1ee
    const-string/jumbo v1, "audio/x-mpeg"

    #@1f1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f4
    .line 153
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@1f6
    const-string/jumbo v1, "audio/x-mpg"

    #@1f9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1fc
    .line 154
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@1fe
    const-string/jumbo v1, "audio/x-wav"

    #@201
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@204
    .line 155
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@206
    const-string/jumbo v1, "audio/3gpp"

    #@209
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20c
    .line 156
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@20e
    const-string/jumbo v1, "application/ogg"

    #@211
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@214
    .line 159
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    #@216
    const-string/jumbo v1, "video/3gpp"

    #@219
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21c
    .line 160
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    #@21e
    const-string/jumbo v1, "video/3gpp2"

    #@221
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@224
    .line 161
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    #@226
    const-string/jumbo v1, "video/h263"

    #@229
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22c
    .line 162
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    #@22e
    const-string/jumbo v1, "video/mp4"

    #@231
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@234
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAudioTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 218
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    return-object v0
.end method

.method public static getImageTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 213
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    return-object v0
.end method

.method public static getSupportedTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 228
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    return-object v0
.end method

.method public static getVideoTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 223
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    return-object v0
.end method

.method public static isAudioType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "audio/"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isDrmType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 202
    if-eqz p0, :cond_1

    #@2
    .line 203
    const-string/jumbo v0, "application/vnd.oma.drm.content"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 204
    const-string/jumbo v0, "application/vnd.oma.drm.message"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    .line 202
    :goto_0
    return v0

    #@13
    .line 203
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 202
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public static isImageType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 190
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "image/"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isSupportedAudioType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 178
    invoke-static {p0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-static {p0}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static isSupportedImageType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 174
    invoke-static {p0}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-static {p0}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static isSupportedType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    if-eqz p0, :cond_0

    #@2
    sget-object v0, Lcom/google/android/mms/ContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public static isSupportedVideoType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 182
    invoke-static {p0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-static {p0}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static isTextType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 186
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "text/"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isUnspecified(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 208
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "*"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isVideoType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 198
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "video/"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
