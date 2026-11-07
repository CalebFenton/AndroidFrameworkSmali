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
.field private static final greylist FIRST_AUDIO_FILE_TYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist LAST_AUDIO_FILE_TYPE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 103
    const/16 v0, 0x3009

    const-string v1, "audio/mpeg"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 104
    const/16 v0, 0x3008

    const-string v2, "audio/x-wav"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 105
    const v0, 0xb901

    const-string v2, "audio/x-ms-wma"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 106
    const v0, 0xb902

    const-string v2, "audio/ogg"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 107
    const v0, 0xb903

    const-string v2, "audio/aac"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 108
    const v0, 0xb906

    const-string v2, "audio/flac"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 109
    const/16 v0, 0x3007

    const-string v2, "audio/x-aiff"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 110
    const v0, 0xb983

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 112
    const/16 v0, 0x300b

    const-string v1, "video/mpeg"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 113
    const v0, 0xb982

    const-string v1, "video/mp4"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 114
    const-string v0, "video/3gpp"

    const v1, 0xb984

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 115
    const-string v0, "video/3gpp2"

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 116
    const/16 v0, 0x300a

    const-string v1, "video/avi"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 117
    const v0, 0xb981

    const-string v1, "video/x-ms-wmv"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 118
    const/16 v0, 0x300c

    const-string v1, "video/x-ms-asf"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 120
    const/16 v0, 0x3801

    const-string v2, "image/jpeg"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 121
    const/16 v0, 0x3807

    const-string v2, "image/gif"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 122
    const/16 v0, 0x380b

    const-string v2, "image/png"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 123
    const/16 v0, 0x3804

    const-string v2, "image/x-ms-bmp"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 124
    const/16 v0, 0x3812

    const-string v2, "image/heif"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 125
    const/16 v0, 0x3811

    const-string v2, "image/x-adobe-dng"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 126
    const/16 v0, 0x380d

    const-string v2, "image/tiff"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 127
    const-string v3, "image/x-canon-cr2"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 128
    const-string v3, "image/x-nikon-nrw"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 129
    const-string v3, "image/x-sony-arw"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 130
    const-string v3, "image/x-panasonic-rw2"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 131
    const-string v3, "image/x-olympus-orf"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 132
    const-string v3, "image/x-pentax-pef"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 133
    const-string v3, "image/x-samsung-srw"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 134
    const/16 v0, 0x3802

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 135
    const-string v2, "image/x-nikon-nef"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 136
    const/16 v0, 0x380f

    const-string v2, "image/jp2"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 137
    const/16 v0, 0x3810

    const-string v2, "image/jpx"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 139
    const v0, 0xba11

    const-string v2, "audio/x-mpegurl"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 140
    const v0, 0xba14

    const-string v2, "audio/x-scpls"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 141
    const v0, 0xba10

    const-string v2, "application/vnd.ms-wpl"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 142
    const v0, 0xba13

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 144
    const/16 v0, 0x3004

    const-string v1, "text/plain"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 145
    const/16 v0, 0x3005

    const-string v1, "text/html"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 146
    const v0, 0xba82

    const-string v1, "text/xml"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 148
    const-string v0, "application/msword"

    const v1, 0xba83

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 150
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 152
    const-string v0, "application/vnd.ms-excel"

    const v1, 0xba85

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 154
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 156
    const-string v0, "application/vnd.ms-powerpoint"

    const v1, 0xba86

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 158
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-static {v1, v0}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    .line 160
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method private static blacklist addFileType(ILjava/lang/String;)V
    .registers 4
    .param p0, "mtpFormatCode"    # I
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 94
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 95
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_11
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 98
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_26
    return-void
.end method

.method static greylist addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .registers 3
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    return-void
.end method

.method public static blacklist getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 337
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 338
    return-object v0

    .line 340
    :cond_4
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 341
    .local v1, "lastDot":I
    if-ltz v1, :cond_13

    .line 342
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 344
    :cond_13
    return-object v0
.end method

.method public static greylist getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 321
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 322
    .local v0, "lastSlash":I
    if-ltz v0, :cond_14

    .line 323
    add-int/lit8 v0, v0, 0x1

    .line 324
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 325
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 329
    :cond_14
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 330
    .local v1, "lastDot":I
    if-lez v1, :cond_21

    .line 331
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 333
    :cond_21
    return-object p0
.end method

.method public static greylist getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist getFileTypeForMimeType(Ljava/lang/String;)I
    .registers 2
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 389
    invoke-static {p1}, Landroid/media/MediaFile;->getFormatCodeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 390
    .local v0, "formatCode":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_9

    .line 391
    return v0

    .line 395
    :cond_9
    invoke-static {p0}, Landroid/media/MediaFile;->getFormatCodeForFile(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static blacklist getFormatCodeForFile(Ljava/lang/String;)I
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 399
    invoke-static {p0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaFile;->getFormatCodeForMimeType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist getFormatCodeForMimeType(Ljava/lang/String;)I
    .registers 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 403
    const/16 v0, 0x3000

    if-nez p0, :cond_5

    .line 404
    return v0

    .line 408
    :cond_5
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 409
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_14

    .line 410
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 414
    :cond_14
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 415
    sget-object v2, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    .line 416
    if-eqz v1, :cond_28

    .line 417
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 418
    :cond_28
    const-string v2, "audio/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 419
    const v0, 0xb900

    return v0

    .line 420
    :cond_34
    const-string v2, "video/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 421
    const v0, 0xb980

    return v0

    .line 422
    :cond_40
    const-string v2, "image/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 423
    const/16 v0, 0x3800

    return v0

    .line 425
    :cond_4b
    return v0
.end method

.method public static blacklist getMimeType(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "formatCode"    # I

    .line 361
    invoke-static {p0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "application/octet-stream"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 363
    return-object v0

    .line 367
    :cond_d
    invoke-static {p1}, Landroid/media/MediaFile;->getMimeTypeForFormatCode(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 372
    invoke-static {p0}, Landroid/media/MediaFile;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "ext":Ljava/lang/String;
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "mimeType":Ljava/lang/String;
    if-eqz v1, :cond_10

    move-object v2, v1

    goto :goto_12

    :cond_10
    const-string v2, "application/octet-stream"

    :goto_12
    return-object v2
.end method

.method public static greylist-max-o getMimeTypeForFormatCode(I)Ljava/lang/String;
    .registers 3
    .param p0, "formatCode"    # I

    .line 378
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 379
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_10

    move-object v1, v0

    goto :goto_12

    :cond_10
    const-string v1, "application/octet-stream"

    :goto_12
    return-object v1
.end method

.method public static greylist isAudioFileType(I)Z
    .registers 2
    .param p0, "fileType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isAudioMimeType(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 288
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDocumentMimeType(Ljava/lang/String;)Z
    .registers 6
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 211
    return v0

    .line 214
    :cond_4
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "normalizedMimeType":Ljava/lang/String;
    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    .line 216
    return v3

    .line 219
    :cond_12
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2b6

    :cond_1f
    goto/16 :goto_2b0

    :sswitch_21
    const-string v4, "application/vnd.oasis.opendocument.database"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x11

    goto/16 :goto_2b1

    :sswitch_2d
    const-string v4, "application/vnd.ms-excel.addin.macroenabled.12"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x5

    goto/16 :goto_2b1

    :sswitch_38
    const-string v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x20

    goto/16 :goto_2b1

    :sswitch_44
    const-string v4, "application/vnd.ms-powerpoint.presentation.macroenabled.12"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0xb

    goto/16 :goto_2b1

    :sswitch_50
    const-string v4, "application/vnd.stardivision.writer"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x2b

    goto/16 :goto_2b1

    :sswitch_5c
    const-string v4, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x17

    goto/16 :goto_2b1

    :sswitch_68
    const-string v4, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x1e

    goto/16 :goto_2b1

    :sswitch_74
    const-string v4, "application/vnd.oasis.opendocument.text-master"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x1a

    goto/16 :goto_2b1

    :sswitch_80
    const-string v4, "application/vnd.oasis.opendocument.presentation"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x15

    goto/16 :goto_2b1

    :sswitch_8c
    const-string v4, "application/vnd.sun.xml.impress"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x31

    goto/16 :goto_2b1

    :sswitch_98
    const-string v4, "application/vnd.ms-word.template.macroenabled.12"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0xf

    goto/16 :goto_2b1

    :sswitch_a4
    const-string v4, "application/vnd.oasis.opendocument.graphics-template"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x14

    goto/16 :goto_2b1

    :sswitch_b0
    const-string v4, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x23

    goto/16 :goto_2b1

    :sswitch_bc
    const-string v4, "application/msword"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v3

    goto/16 :goto_2b1

    :sswitch_c7
    const-string v4, "application/vnd.stardivision.impress-packed"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x28

    goto/16 :goto_2b1

    :sswitch_d3
    const-string v4, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x1f

    goto/16 :goto_2b1

    :sswitch_df
    const-string v4, "application/vnd.stardivision.impress"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x27

    goto/16 :goto_2b1

    :sswitch_eb
    const-string v4, "application/vnd.stardivision.writer-global"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x2c

    goto/16 :goto_2b1

    :sswitch_f7
    const-string v4, "application/vnd.oasis.opendocument.graphics"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x13

    goto/16 :goto_2b1

    :sswitch_103
    const-string v4, "application/vnd.ms-powerpoint.template.macroenabled.12"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0xd

    goto/16 :goto_2b1

    :sswitch_10f
    const-string v4, "application/vnd.oasis.opendocument.spreadsheet-template"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x18

    goto/16 :goto_2b1

    :sswitch_11b
    const-string v4, "application/vnd.ms-powerpoint.addin.macroenabled.12"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0xa

    goto/16 :goto_2b1

    :sswitch_127
    const-string v4, "application/vnd.oasis.opendocument.presentation-template"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x16

    goto/16 :goto_2b1

    :sswitch_133
    const-string v4, "application/vnd.ms-excel.sheet.binary.macroenabled.12"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x6

    goto/16 :goto_2b1

    :sswitch_13e
    const-string v4, "application/vnd.ms-excel"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x4

    goto/16 :goto_2b1

    :sswitch_149
    const-string v4, "application/vnd.sun.xml.impress.template"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x32

    goto/16 :goto_2b1

    :sswitch_155
    const-string v4, "application/vnd.sun.xml.writer.global"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x35

    goto/16 :goto_2b1

    :sswitch_161
    const-string v4, "application/x-mspublisher"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x37

    goto/16 :goto_2b1

    :sswitch_16d
    const-string v4, "application/vnd.oasis.opendocument.text-web"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x1c

    goto/16 :goto_2b1

    :sswitch_179
    const-string v4, "application/vnd.sun.xml.math"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x33

    goto/16 :goto_2b1

    :sswitch_185
    const-string v4, "application/vnd.sun.xml.draw"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x2f

    goto/16 :goto_2b1

    :sswitch_191
    const-string v4, "application/vnd.sun.xml.calc"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x2d

    goto/16 :goto_2b1

    :sswitch_19d
    const-string v4, "application/vnd.ms-excel.template.macroenabled.12"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x8

    goto/16 :goto_2b1

    :sswitch_1a9
    const-string v4, "application/vnd.oasis.opendocument.formula"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x12

    goto/16 :goto_2b1

    :sswitch_1b5
    const-string v4, "application/vnd.sun.xml.draw.template"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x30

    goto/16 :goto_2b1

    :sswitch_1c1
    const-string v4, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x22

    goto/16 :goto_2b1

    :sswitch_1cd
    const-string v4, "application/vnd.ms-powerpoint"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x9

    goto/16 :goto_2b1

    :sswitch_1d9
    const-string v4, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x1d

    goto/16 :goto_2b1

    :sswitch_1e5
    const-string v4, "application/vnd.ms-powerpoint.slideshow.macroenabled.12"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0xc

    goto/16 :goto_2b1

    :sswitch_1f1
    const-string v4, "application/rtf"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x3

    goto/16 :goto_2b1

    :sswitch_1fc
    const-string v4, "application/pdf"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x2

    goto/16 :goto_2b1

    :sswitch_207
    const-string v4, "application/vnd.ms-word.document.macroenabled.12"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0xe

    goto/16 :goto_2b1

    :sswitch_213
    const-string v4, "application/vnd.oasis.opendocument.text-template"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x1b

    goto/16 :goto_2b1

    :sswitch_21f
    const-string v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x21

    goto/16 :goto_2b1

    :sswitch_22b
    const-string v4, "application/vnd.sun.xml.calc.template"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x2e

    goto/16 :goto_2b1

    :sswitch_237
    const-string v4, "application/vnd.sun.xml.writer"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x34

    goto/16 :goto_2b1

    :sswitch_243
    const-string v4, "application/vnd.ms-excel.sheet.macroenabled.12"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x7

    goto/16 :goto_2b1

    :sswitch_24e
    const-string v4, "application/vnd.oasis.opendocument.text"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x19

    goto :goto_2b1

    :sswitch_259
    const-string v4, "application/vnd.sun.xml.writer.template"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x36

    goto :goto_2b1

    :sswitch_264
    const-string v4, "application/vnd.stardivision.chart"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x25

    goto :goto_2b1

    :sswitch_26f
    const-string v4, "application/vnd.oasis.opendocument.chart"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x10

    goto :goto_2b1

    :sswitch_27a
    const-string v4, "application/epub+zip"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v0

    goto :goto_2b1

    :sswitch_284
    const-string v4, "application/vnd.stardivision.math"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x2a

    goto :goto_2b1

    :sswitch_28f
    const-string v4, "application/vnd.stardivision.mail"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x29

    goto :goto_2b1

    :sswitch_29a
    const-string v4, "application/vnd.stardivision.draw"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x26

    goto :goto_2b1

    :sswitch_2a5
    const-string v4, "application/vnd.stardivision.calc"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x24

    goto :goto_2b1

    :goto_2b0
    const/4 v2, -0x1

    :goto_2b1
    packed-switch v2, :pswitch_data_398

    .line 278
    return v0

    .line 276
    :pswitch_2b5
    return v3

    :sswitch_data_2b6
    .sparse-switch
        -0x7f44465d -> :sswitch_2a5
        -0x7f43936e -> :sswitch_29a
        -0x7f3fbafb -> :sswitch_28f
        -0x7f3fb9aa -> :sswitch_284
        -0x77b8a693 -> :sswitch_27a
        -0x6a428d87 -> :sswitch_26f
        -0x69417db0 -> :sswitch_264
        -0x68255665 -> :sswitch_259
        -0x667e94ce -> :sswitch_24e
        -0x62888ad2 -> :sswitch_243
        -0x610e9853 -> :sswitch_237
        -0x5ed1e487 -> :sswitch_22b
        -0x59c3e1a9 -> :sswitch_21f
        -0x4e7ea34b -> :sswitch_213
        -0x4d189f3b -> :sswitch_207
        -0x4a68144d -> :sswitch_1fc
        -0x4a680adb -> :sswitch_1f1
        -0x4151d343 -> :sswitch_1e5
        -0x3ffe58cb -> :sswitch_1d9
        -0x3fe2a28f -> :sswitch_1cd
        -0x3ea35d2d -> :sswitch_1c1
        -0x3d99ba96 -> :sswitch_1b5
        -0x38434ebf -> :sswitch_1a9
        -0x3464229d -> :sswitch_19d
        -0x2e7d3bf1 -> :sswitch_191
        -0x2e7c8902 -> :sswitch_185
        -0x2e78af3e -> :sswitch_179
        -0x28553dc7 -> :sswitch_16d
        -0x1cb6d53e -> :sswitch_161
        -0x1c904afc -> :sswitch_155
        -0x17a6095d -> :sswitch_149
        -0x15d566cf -> :sswitch_13e
        -0x11ed9627 -> :sswitch_133
        -0x11654d98 -> :sswitch_127
        -0x901206b -> :sswitch_11b
        -0x6850aa0 -> :sswitch_10f
        0x3e26123 -> :sswitch_103
        0x198f4610 -> :sswitch_f7
        0x22098aaf -> :sswitch_eb
        0x27e80391 -> :sswitch_df
        0x2967ba15 -> :sswitch_d3
        0x2e45be34 -> :sswitch_c7
        0x35ebd34f -> :sswitch_bc
        0x3f3a9e32 -> :sswitch_b0
        0x5218db97 -> :sswitch_a4
        0x5278be24 -> :sswitch_98
        0x527dd1a5 -> :sswitch_8c
        0x55a6501f -> :sswitch_80
        0x57208d5d -> :sswitch_74
        0x5e059df3 -> :sswitch_68
        0x61f85627 -> :sswitch_5c
        0x63c34841 -> :sswitch_50
        0x68571d43 -> :sswitch_44
        0x76d7a0a2 -> :sswitch_38
        0x7cd0cb55 -> :sswitch_2d
        0x7e37ad00 -> :sswitch_21
    .end sparse-switch

    :pswitch_data_398
    .packed-switch 0x0
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2b5
    .end packed-switch
.end method

.method public static greylist isDrmFileType(I)Z
    .registers 2
    .param p0, "fileType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isDrmMimeType(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 314
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-android-drm-fl"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isExifMimeType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 284
    invoke-static {p0}, Landroid/media/MediaFile;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist isImageFileType(I)Z
    .registers 2
    .param p0, "fileType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isImageMimeType(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 296
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist isPlayListFileType(I)Z
    .registers 2
    .param p0, "fileType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isPlayListMimeType(Ljava/lang/String;)Z
    .registers 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 300
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_50

    :cond_d
    goto :goto_4a

    :sswitch_e
    const-string v1, "application/vnd.ms-wpl"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_4b

    :sswitch_18
    const-string v1, "audio/x-mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_4b

    :sswitch_22
    const-string v1, "audio/mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_4b

    :sswitch_2c
    const-string v1, "application/vnd.apple.mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    goto :goto_4b

    :sswitch_36
    const-string v1, "application/x-mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_4b

    :sswitch_40
    const-string v1, "audio/x-scpls"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    goto :goto_4b

    :goto_4a
    const/4 v0, -0x1

    :goto_4b
    packed-switch v0, :pswitch_data_6a

    .line 309
    return v2

    .line 307
    :pswitch_4f
    return v3

    :sswitch_data_50
    .sparse-switch
        -0x45784127 -> :sswitch_40
        -0x3a5bd08a -> :sswitch_36
        -0x251f4d8b -> :sswitch_2c
        -0x19cb7f6f -> :sswitch_22
        0xfbfd67c -> :sswitch_18
        0x6f9869ad -> :sswitch_e
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
    .end packed-switch
.end method

.method public static greylist isVideoFileType(I)Z
    .registers 2
    .param p0, "fileType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isVideoMimeType(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 292
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 435
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    .line 436
    .local v0, "mimeMap":Llibcore/content/type/MimeMap;
    invoke-virtual {v0, p0}, Llibcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "extension":Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 438
    invoke-virtual {v0, v1}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "extensionMimeType":Ljava/lang/String;
    if-eqz v2, :cond_11

    .line 440
    return-object v2

    .line 443
    .end local v2    # "extensionMimeType":Ljava/lang/String;
    :cond_11
    if-eqz p0, :cond_15

    move-object v2, p0

    goto :goto_17

    :cond_15
    const-string v2, "application/octet-stream"

    :goto_17
    return-object v2
.end method
