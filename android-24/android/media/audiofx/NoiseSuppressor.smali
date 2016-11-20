.class public Landroid/media/audiofx/NoiseSuppressor;
.super Landroid/media/audiofx/AudioEffect;
.source "NoiseSuppressor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NoiseSuppressor"


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
    .line 96
    sget-object v0, Landroid/media/audiofx/NoiseSuppressor;->EFFECT_TYPE_NS:Ljava/util/UUID;

    #@2
    sget-object v1, Landroid/media/audiofx/NoiseSuppressor;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    #@8
    .line 95
    return-void
.end method

.method public static create(I)Landroid/media/audiofx/NoiseSuppressor;
    .locals 8
    .param p0, "audioSession"    # I

    #@0
    .prologue
    .line 64
    const/4 v3, 0x0

    #@1
    .line 66
    .local v3, "ns":Landroid/media/audiofx/NoiseSuppressor;
    :try_start_0
    new-instance v4, Landroid/media/audiofx/NoiseSuppressor;

    #@3
    invoke-direct {v4, p0}, Landroid/media/audiofx/NoiseSuppressor;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .end local v3    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    .local v4, "ns":Landroid/media/audiofx/NoiseSuppressor;
    move-object v3, v4

    #@7
    .line 74
    .end local v4    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    :goto_0
    return-object v3

    #@8
    .line 71
    .restart local v3    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    :catch_0
    move-exception v1

    #@9
    .line 72
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "NoiseSuppressor"

    #@c
    const-string/jumbo v6, "not enough memory"

    #@f
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    goto :goto_0

    #@13
    .line 69
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    #@14
    .line 70
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v5, "NoiseSuppressor"

    #@17
    const-string/jumbo v6, "not enough resources"

    #@1a
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    goto :goto_0

    #@1e
    .line 67
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v0

    #@1f
    .line 68
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "NoiseSuppressor"

    #@22
    new-instance v6, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v7, "not implemented on this device "

    #@2a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 52
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    #@2
    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
