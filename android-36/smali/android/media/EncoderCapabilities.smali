.class public Landroid/media/EncoderCapabilities;
.super Ljava/lang/Object;
.source "EncoderCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/EncoderCapabilities$VideoEncoderCap;,
        Landroid/media/EncoderCapabilities$AudioEncoderCap;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "EncoderCapabilities"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 115
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_init()V

    .line 117
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o getAudioEncoders()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/EncoderCapabilities$AudioEncoderCap;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_get_num_audio_encoders()I

    move-result v0

    .line 156
    .local v0, "nEncoders":I
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 158
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v1, "encoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$AudioEncoderCap;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_1a

    .line 160
    invoke-static {v2}, Landroid/media/EncoderCapabilities;->native_get_audio_encoder_cap(I)Landroid/media/EncoderCapabilities$AudioEncoderCap;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 162
    .end local v2    # "i":I
    :cond_1a
    return-object v1
.end method

.method public static greylist-max-o getOutputFileFormats()[I
    .registers 4

    .line 124
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_get_num_file_formats()I

    move-result v0

    .line 125
    .local v0, "nFormats":I
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 127
    :cond_8
    new-array v1, v0, [I

    .line 128
    .local v1, "formats":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_16

    .line 129
    invoke-static {v2}, Landroid/media/EncoderCapabilities;->native_get_file_format(I)I

    move-result v3

    aput v3, v1, v2

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 131
    .end local v2    # "i":I
    :cond_16
    return-object v1
.end method

.method public static greylist-max-r getVideoEncoders()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/EncoderCapabilities$VideoEncoderCap;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_get_num_video_encoders()I

    move-result v0

    .line 141
    .local v0, "nEncoders":I
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 143
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, "encoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_1a

    .line 145
    invoke-static {v2}, Landroid/media/EncoderCapabilities;->native_get_video_encoder_cap(I)Landroid/media/EncoderCapabilities$VideoEncoderCap;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 147
    .end local v2    # "i":I
    :cond_1a
    return-object v1
.end method

.method private static final native greylist-max-o native_get_audio_encoder_cap(I)Landroid/media/EncoderCapabilities$AudioEncoderCap;
.end method

.method private static final native greylist-max-o native_get_file_format(I)I
.end method

.method private static final native greylist-max-o native_get_num_audio_encoders()I
.end method

.method private static final native greylist-max-o native_get_num_file_formats()I
.end method

.method private static final native greylist-max-o native_get_num_video_encoders()I
.end method

.method private static final native greylist-max-o native_get_video_encoder_cap(I)Landroid/media/EncoderCapabilities$VideoEncoderCap;
.end method

.method private static final native greylist-max-o native_init()V
.end method
