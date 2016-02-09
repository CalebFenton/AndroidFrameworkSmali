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
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 46
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 47
    invoke-static {}, Landroid/media/DecoderCapabilities;->native_init()V

    #@9
    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAudioDecoders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/DecoderCapabilities$AudioDecoder;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 69
    .local v0, "decoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-static {}, Landroid/media/DecoderCapabilities;->native_get_num_audio_decoders()I

    #@8
    move-result v2

    #@9
    .line 70
    .local v2, "nDecoders":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 71
    invoke-static {}, Landroid/media/DecoderCapabilities$AudioDecoder;->values()[Landroid/media/DecoderCapabilities$AudioDecoder;

    #@f
    move-result-object v3

    #@10
    invoke-static {v1}, Landroid/media/DecoderCapabilities;->native_get_audio_decoder_type(I)I

    #@13
    move-result v4

    #@14
    aget-object v3, v3, v4

    #@16
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 70
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 73
    :cond_0
    return-object v0
.end method

.method public static getVideoDecoders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/DecoderCapabilities$VideoDecoder;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 56
    .local v0, "decoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-static {}, Landroid/media/DecoderCapabilities;->native_get_num_video_decoders()I

    #@8
    move-result v2

    #@9
    .line 57
    .local v2, "nDecoders":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 58
    invoke-static {}, Landroid/media/DecoderCapabilities$VideoDecoder;->values()[Landroid/media/DecoderCapabilities$VideoDecoder;

    #@f
    move-result-object v3

    #@10
    invoke-static {v1}, Landroid/media/DecoderCapabilities;->native_get_video_decoder_type(I)I

    #@13
    move-result v4

    #@14
    aget-object v3, v3, v4

    #@16
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 57
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 60
    :cond_0
    return-object v0
.end method

.method private static final native native_get_audio_decoder_type(I)I
.end method

.method private static final native native_get_num_audio_decoders()I
.end method

.method private static final native native_get_num_video_decoders()I
.end method

.method private static final native native_get_video_decoder_type(I)I
.end method

.method private static final native native_init()V
.end method
