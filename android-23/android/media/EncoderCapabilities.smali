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
.field private static final TAG:Ljava/lang/String; = "EncoderCapabilities"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 103
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 104
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_init()V

    #@9
    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAudioEncoders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/EncoderCapabilities$AudioEncoderCap;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 142
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_get_num_audio_encoders()I

    #@3
    move-result v2

    #@4
    .line 143
    .local v2, "nEncoders":I
    if-nez v2, :cond_0

    #@6
    const/4 v3, 0x0

    #@7
    return-object v3

    #@8
    .line 145
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 146
    .local v0, "encoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$AudioEncoderCap;>;"
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@10
    .line 147
    invoke-static {v1}, Landroid/media/EncoderCapabilities;->native_get_audio_encoder_cap(I)Landroid/media/EncoderCapabilities$AudioEncoderCap;

    #@13
    move-result-object v3

    #@14
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    .line 146
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 149
    :cond_1
    return-object v0
.end method

.method public static getOutputFileFormats()[I
    .locals 4

    #@0
    .prologue
    .line 112
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_get_num_file_formats()I

    #@3
    move-result v2

    #@4
    .line 113
    .local v2, "nFormats":I
    if-nez v2, :cond_0

    #@6
    const/4 v3, 0x0

    #@7
    return-object v3

    #@8
    .line 115
    :cond_0
    new-array v0, v2, [I

    #@a
    .line 116
    .local v0, "formats":[I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@d
    .line 117
    invoke-static {v1}, Landroid/media/EncoderCapabilities;->native_get_file_format(I)I

    #@10
    move-result v3

    #@11
    aput v3, v0, v1

    #@13
    .line 116
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 119
    :cond_1
    return-object v0
.end method

.method public static getVideoEncoders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/EncoderCapabilities$VideoEncoderCap;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 127
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_get_num_video_encoders()I

    #@3
    move-result v2

    #@4
    .line 128
    .local v2, "nEncoders":I
    if-nez v2, :cond_0

    #@6
    const/4 v3, 0x0

    #@7
    return-object v3

    #@8
    .line 130
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 131
    .local v0, "encoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@10
    .line 132
    invoke-static {v1}, Landroid/media/EncoderCapabilities;->native_get_video_encoder_cap(I)Landroid/media/EncoderCapabilities$VideoEncoderCap;

    #@13
    move-result-object v3

    #@14
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    .line 131
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 134
    :cond_1
    return-object v0
.end method

.method private static final native native_get_audio_encoder_cap(I)Landroid/media/EncoderCapabilities$AudioEncoderCap;
.end method

.method private static final native native_get_file_format(I)I
.end method

.method private static final native native_get_num_audio_encoders()I
.end method

.method private static final native native_get_num_file_formats()I
.end method

.method private static final native native_get_num_video_encoders()I
.end method

.method private static final native native_get_video_encoder_cap(I)Landroid/media/EncoderCapabilities$VideoEncoderCap;
.end method

.method private static final native native_init()V
.end method
