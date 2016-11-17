.class public Landroid/media/audiofx/AcousticEchoCanceler;
.super Landroid/media/audiofx/AudioEffect;
.source "AcousticEchoCanceler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AcousticEchoCanceler"


# direct methods
.method private constructor <init>(I)V
    .locals 3
    .param p1, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    sget-object v0, Landroid/media/audiofx/AcousticEchoCanceler;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    #@2
    sget-object v1, Landroid/media/audiofx/AcousticEchoCanceler;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    #@8
    .line 93
    return-void
.end method

.method public static create(I)Landroid/media/audiofx/AcousticEchoCanceler;
    .locals 8
    .param p0, "audioSession"    # I

    #@0
    .prologue
    .line 62
    const/4 v0, 0x0

    #@1
    .line 64
    .local v0, "aec":Landroid/media/audiofx/AcousticEchoCanceler;
    :try_start_0
    new-instance v1, Landroid/media/audiofx/AcousticEchoCanceler;

    #@3
    invoke-direct {v1, p0}, Landroid/media/audiofx/AcousticEchoCanceler;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .end local v0    # "aec":Landroid/media/audiofx/AcousticEchoCanceler;
    .local v1, "aec":Landroid/media/audiofx/AcousticEchoCanceler;
    move-object v0, v1

    #@7
    .line 72
    .end local v1    # "aec":Landroid/media/audiofx/AcousticEchoCanceler;
    :goto_0
    return-object v0

    #@8
    .line 69
    .restart local v0    # "aec":Landroid/media/audiofx/AcousticEchoCanceler;
    :catch_0
    move-exception v3

    #@9
    .line 70
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "AcousticEchoCanceler"

    #@c
    const-string/jumbo v6, "not enough memory"

    #@f
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    goto :goto_0

    #@13
    .line 67
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v4

    #@14
    .line 68
    .local v4, "e":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v5, "AcousticEchoCanceler"

    #@17
    const-string/jumbo v6, "not enough resources"

    #@1a
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    goto :goto_0

    #@1e
    .line 65
    .end local v4    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v2

    #@1f
    .line 66
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "AcousticEchoCanceler"

    #@22
    new-instance v6, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v7, "not implemented on this device"

    #@2a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    goto :goto_0
.end method

.method public static isAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 51
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    #@2
    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
