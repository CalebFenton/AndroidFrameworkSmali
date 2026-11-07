.class public Landroid/media/audiofx/NoiseSuppressor;
.super Landroid/media/audiofx/AudioEffect;
.source "NoiseSuppressor.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "NoiseSuppressor"


# direct methods
.method private constructor greylist-max-o <init>(I)V
    .registers 5
    .param p1, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 96
    sget-object v0, Landroid/media/audiofx/NoiseSuppressor;->EFFECT_TYPE_NS:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/NoiseSuppressor;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 97
    return-void
.end method

.method public static whitelist create(I)Landroid/media/audiofx/NoiseSuppressor;
    .registers 6
    .param p0, "audioSession"    # I

    .line 64
    const-string v0, "NoiseSuppressor"

    const/4 v1, 0x0

    .line 66
    .local v1, "ns":Landroid/media/audiofx/NoiseSuppressor;
    :try_start_3
    new-instance v2, Landroid/media/audiofx/NoiseSuppressor;

    invoke-direct {v2, p0}, Landroid/media/audiofx/NoiseSuppressor;-><init>(I)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_8} :catch_18
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_8} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_8} :catch_a

    move-object v1, v2

    .line 73
    :goto_9
    goto :goto_30

    .line 71
    :catch_a
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "not enough memory"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 69
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_11
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    const-string v3, "not enough resources"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_9

    .line 67
    :catch_18
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not implemented on this device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_9

    .line 74
    :goto_30
    return-object v1
.end method

.method public static whitelist isAvailable()Z
    .registers 1

    .line 52
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method
