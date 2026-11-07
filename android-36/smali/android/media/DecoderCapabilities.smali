.class public Landroid/media/DecoderCapabilities;
.super Ljava/lang/Object;
.source "DecoderCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/DecoderCapabilities$VideoDecoder;,
        Landroid/media/DecoderCapabilities$AudioDecoder;
    }
.end annotation


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Landroid/media/DecoderCapabilities;->native_init()V

    .line 52
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getAudioDecoders()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/DecoderCapabilities$AudioDecoder;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "decoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-static {}, Landroid/media/DecoderCapabilities;->native_get_num_audio_decoders()I

    move-result v1

    .line 76
    .local v1, "nDecoders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1c

    .line 77
    invoke-static {}, Landroid/media/DecoderCapabilities$AudioDecoder;->values()[Landroid/media/DecoderCapabilities$AudioDecoder;

    move-result-object v3

    invoke-static {v2}, Landroid/media/DecoderCapabilities;->native_get_audio_decoder_type(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 79
    .end local v2    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static greylist getVideoDecoders()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/DecoderCapabilities$VideoDecoder;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "decoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-static {}, Landroid/media/DecoderCapabilities;->native_get_num_video_decoders()I

    move-result v1

    .line 62
    .local v1, "nDecoders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1c

    .line 63
    invoke-static {}, Landroid/media/DecoderCapabilities$VideoDecoder;->values()[Landroid/media/DecoderCapabilities$VideoDecoder;

    move-result-object v3

    invoke-static {v2}, Landroid/media/DecoderCapabilities;->native_get_video_decoder_type(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 65
    .end local v2    # "i":I
    :cond_1c
    return-object v0
.end method

.method private static final native greylist-max-o native_get_audio_decoder_type(I)I
.end method

.method private static final native greylist-max-o native_get_num_audio_decoders()I
.end method

.method private static final native greylist-max-o native_get_num_video_decoders()I
.end method

.method private static final native greylist-max-o native_get_video_decoder_type(I)I
.end method

.method private static final native greylist-max-o native_init()V
.end method
