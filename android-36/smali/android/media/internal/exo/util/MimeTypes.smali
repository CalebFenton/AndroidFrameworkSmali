.class public final Landroid/media/internal/exo/util/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/util/MimeTypes$Mp4aObjectType;
    }
.end annotation


# static fields
.field private static final blacklist MP4A_RFC_6381_CODEC_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist customMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/internal/exo/util/MimeTypes;->customMimeTypes:Ljava/util/ArrayList;

    .line 149
    const-string v0, "^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$"

    .line 150
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/util/MimeTypes;->MP4A_RFC_6381_CODEC_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static blacklist getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_52

    const/16 v0, 0x21

    if-eq p0, v0, :cond_4f

    const/16 v0, 0x23

    if-eq p0, v0, :cond_4c

    const/16 v0, 0x40

    if-eq p0, v0, :cond_49

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_46

    const/16 v0, 0xb1

    if-eq p0, v0, :cond_43

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_40

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_3d

    packed-switch p0, :pswitch_data_56

    packed-switch p0, :pswitch_data_72

    const/4 p0, 0x0

    return-object p0

    .line 490
    :pswitch_28
    const-string p0, "audio/ac4"

    return-object p0

    .line 488
    :pswitch_2b
    const-string p0, "audio/opus"

    return-object p0

    .line 486
    :pswitch_2e
    const-string p0, "audio/vnd.dts.hd"

    return-object p0

    .line 483
    :pswitch_31
    const-string p0, "audio/vnd.dts"

    return-object p0

    .line 464
    :pswitch_34
    const-string p0, "video/mpeg"

    return-object p0

    .line 467
    :pswitch_37
    const-string p0, "audio/mpeg"

    return-object p0

    .line 462
    :pswitch_3a
    const-string p0, "video/mpeg2"

    return-object p0

    .line 480
    :cond_3d
    const-string p0, "audio/eac3"

    return-object p0

    .line 478
    :cond_40
    const-string p0, "audio/ac3"

    return-object p0

    .line 471
    :cond_43
    const-string p0, "video/x-vnd.on2.vp9"

    return-object p0

    .line 469
    :cond_46
    const-string p0, "video/wvc1"

    return-object p0

    .line 476
    :cond_49
    :pswitch_49
    const-string p0, "audio/mp4a-latm"

    return-object p0

    .line 455
    :cond_4c
    const-string p0, "video/hevc"

    return-object p0

    .line 453
    :cond_4f
    const-string p0, "video/avc"

    return-object p0

    .line 451
    :cond_52
    const-string p0, "video/mp4v-es"

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x60
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_37
        :pswitch_34
        :pswitch_37
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0xa9
        :pswitch_31
        :pswitch_2e
        :pswitch_2e
        :pswitch_31
        :pswitch_2b
        :pswitch_28
    .end packed-switch
.end method

.method static blacklist getObjectTypeFromMp4aRFC6381CodecString(Ljava/lang/String;)Landroid/media/internal/exo/util/MimeTypes$Mp4aObjectType;
    .registers 4

    .line 674
    sget-object v0, Landroid/media/internal/exo/util/MimeTypes;->MP4A_RFC_6381_CODEC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 675
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    const/4 v0, 0x1

    .line 678
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x2

    .line 679
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x10

    .line 683
    :try_start_20
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p0, :cond_2b

    .line 685
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2a} :catch_31

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    .line 690
    :goto_2c
    new-instance v1, Landroid/media/internal/exo/util/MimeTypes$Mp4aObjectType;

    invoke-direct {v1, v0, p0}, Landroid/media/internal/exo/util/MimeTypes$Mp4aObjectType;-><init>(II)V

    :catch_31
    return-object v1
.end method

.method private static blacklist getTopLevelType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/16 v1, 0x2f

    .line 620
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    return-object v0

    :cond_e
    const/4 v0, 0x0

    .line 624
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist isAudio(Ljava/lang/String;)Z
    .registers 2

    .line 177
    const-string v0, "audio"

    invoke-static {p0}, Landroid/media/internal/exo/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isVideo(Ljava/lang/String;)Z
    .registers 2

    .line 182
    const-string v0, "video"

    invoke-static {p0}, Landroid/media/internal/exo/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
