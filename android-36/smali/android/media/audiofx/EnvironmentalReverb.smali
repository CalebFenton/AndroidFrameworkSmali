.class public Landroid/media/audiofx/EnvironmentalReverb;
.super Landroid/media/audiofx/AudioEffect;
.source "EnvironmentalReverb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;,
        Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;,
        Landroid/media/audiofx/EnvironmentalReverb$Settings;
    }
.end annotation


# static fields
.field public static final whitelist PARAM_DECAY_HF_RATIO:I = 0x3

.field public static final whitelist PARAM_DECAY_TIME:I = 0x2

.field public static final whitelist PARAM_DENSITY:I = 0x9

.field public static final whitelist PARAM_DIFFUSION:I = 0x8

.field private static final greylist-max-o PARAM_PROPERTIES:I = 0xa

.field public static final whitelist PARAM_REFLECTIONS_DELAY:I = 0x5

.field public static final whitelist PARAM_REFLECTIONS_LEVEL:I = 0x4

.field public static final whitelist PARAM_REVERB_DELAY:I = 0x7

.field public static final whitelist PARAM_REVERB_LEVEL:I = 0x6

.field public static final whitelist PARAM_ROOM_HF_LEVEL:I = 0x1

.field public static final whitelist PARAM_ROOM_LEVEL:I = 0x0

.field private static greylist-max-o PROPERTY_SIZE:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "EnvironmentalReverb"


# instance fields
.field private greylist-max-o mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

.field private greylist-max-o mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

.field private final greylist-max-o mParamListenerLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmParamListener(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/EnvironmentalReverb;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 609
    const/16 v0, 0x1a

    sput v0, Landroid/media/audiofx/EnvironmentalReverb;->PROPERTY_SIZE:I

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 5
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 138
    sget-object v0, Landroid/media/audiofx/EnvironmentalReverb;->EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/EnvironmentalReverb;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    .line 113
    iput-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    .line 139
    return-void
.end method


# virtual methods
.method public whitelist getDecayHFRatio()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 248
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 249
    .local v0, "param":[B
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 250
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public whitelist getDecayTime()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 219
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 220
    .local v0, "param":[B
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 221
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([B)I

    move-result v1

    return v1
.end method

.method public whitelist getDensity()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 424
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 425
    .local v0, "param":[B
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 426
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public whitelist getDiffusion()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 391
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 392
    .local v0, "param":[B
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 393
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public whitelist getProperties()Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 621
    sget v0, Landroid/media/audiofx/EnvironmentalReverb;->PROPERTY_SIZE:I

    new-array v0, v0, [B

    .line 622
    .local v0, "param":[B
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 623
    new-instance v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;

    invoke-direct {v2}, Landroid/media/audiofx/EnvironmentalReverb$Settings;-><init>()V

    .line 624
    .local v2, "settings":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    .line 625
    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    .line 626
    const/4 v3, 0x4

    invoke-static {v0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    move-result v3

    iput v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    .line 627
    const/16 v3, 0x8

    invoke-static {v0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    .line 628
    invoke-static {v0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    .line 629
    const/16 v1, 0xc

    invoke-static {v0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    move-result v1

    iput v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    .line 630
    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    .line 631
    const/16 v1, 0x12

    invoke-static {v0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    move-result v1

    iput v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    .line 632
    const/16 v1, 0x16

    invoke-static {v0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    .line 633
    const/16 v1, 0x18

    invoke-static {v0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S

    .line 634
    return-object v2
.end method

.method public whitelist getReflectionsDelay()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 306
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 307
    .local v0, "param":[B
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 308
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([B)I

    move-result v1

    return v1
.end method

.method public whitelist getReflectionsLevel()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 277
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 278
    .local v0, "param":[B
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 279
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public whitelist getReverbDelay()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 361
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 362
    .local v0, "param":[B
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 363
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([B)I

    move-result v1

    return v1
.end method

.method public whitelist getReverbLevel()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 334
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 335
    .local v0, "param":[B
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 336
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public whitelist getRoomHFLevel()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 193
    .local v0, "param":[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 194
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public whitelist getRoomLevel()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 164
    .local v0, "param":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 165
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public whitelist setDecayHFRatio(S)V
    .registers 4
    .param p1, "decayHFRatio"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 235
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    .line 236
    .local v0, "param":[B
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 237
    return-void
.end method

.method public whitelist setDecayTime(I)V
    .registers 4
    .param p1, "decayTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 206
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v0

    .line 207
    .local v0, "param":[B
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 208
    return-void
.end method

.method public whitelist setDensity(S)V
    .registers 4
    .param p1, "density"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 411
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    .line 412
    .local v0, "param":[B
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 413
    return-void
.end method

.method public whitelist setDiffusion(S)V
    .registers 4
    .param p1, "diffusion"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 378
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    .line 379
    .local v0, "param":[B
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 380
    return-void
.end method

.method public whitelist setParameterListener(Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    .line 487
    iget-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_3
    iget-object v1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    if-nez v1, :cond_16

    .line 489
    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    .line 490
    new-instance v1, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/EnvironmentalReverb;Landroid/media/audiofx/EnvironmentalReverb-IA;)V

    iput-object v1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    .line 491
    iget-object v1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    invoke-super {p0, v1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 493
    :cond_16
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist setProperties(Landroid/media/audiofx/EnvironmentalReverb$Settings;)V
    .registers 13
    .param p1, "settings"    # Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 648
    iget-short v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v1

    iget-short v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    .line 649
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v2

    iget v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    .line 650
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v3

    iget-short v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    .line 651
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v4

    iget-short v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    .line 652
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v5

    iget v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    .line 653
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v6

    iget-short v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    .line 654
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v7

    iget v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    .line 655
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v8

    iget-short v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    .line 656
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v9

    iget-short v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S

    .line 657
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [[B

    move-result-object v0

    .line 648
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->concatArrays([[B)[B

    move-result-object v0

    .line 659
    .local v0, "param":[B
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 660
    return-void
.end method

.method public whitelist setReflectionsDelay(I)V
    .registers 4
    .param p1, "reflectionsDelay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 293
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v0

    .line 294
    .local v0, "param":[B
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 295
    return-void
.end method

.method public whitelist setReflectionsLevel(S)V
    .registers 4
    .param p1, "reflectionsLevel"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 264
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    .line 265
    .local v0, "param":[B
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 266
    return-void
.end method

.method public whitelist setReverbDelay(I)V
    .registers 4
    .param p1, "reverbDelay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 348
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v0

    .line 349
    .local v0, "param":[B
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 350
    return-void
.end method

.method public whitelist setReverbLevel(S)V
    .registers 4
    .param p1, "reverbLevel"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 321
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    .line 322
    .local v0, "param":[B
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 323
    return-void
.end method

.method public whitelist setRoomHFLevel(S)V
    .registers 4
    .param p1, "roomHF"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 179
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    .line 180
    .local v0, "param":[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 181
    return-void
.end method

.method public whitelist setRoomLevel(S)V
    .registers 4
    .param p1, "room"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 150
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    .line 151
    .local v0, "param":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    .line 152
    return-void
.end method
