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
.field public static final PARAM_DECAY_HF_RATIO:I = 0x3

.field public static final PARAM_DECAY_TIME:I = 0x2

.field public static final PARAM_DENSITY:I = 0x9

.field public static final PARAM_DIFFUSION:I = 0x8

.field private static final PARAM_PROPERTIES:I = 0xa

.field public static final PARAM_REFLECTIONS_DELAY:I = 0x5

.field public static final PARAM_REFLECTIONS_LEVEL:I = 0x4

.field public static final PARAM_REVERB_DELAY:I = 0x7

.field public static final PARAM_REVERB_LEVEL:I = 0x6

.field public static final PARAM_ROOM_HF_LEVEL:I = 0x1

.field public static final PARAM_ROOM_LEVEL:I = 0x0

.field private static PROPERTY_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EnvironmentalReverb"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/audiofx/EnvironmentalReverb;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 609
    const/16 v0, 0x1a

    #@2
    sput v0, Landroid/media/audiofx/EnvironmentalReverb;->PROPERTY_SIZE:I

    #@4
    .line 52
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 138
    sget-object v0, Landroid/media/audiofx/EnvironmentalReverb;->EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

    #@3
    sget-object v1, Landroid/media/audiofx/EnvironmentalReverb;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    #@5
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    #@8
    .line 107
    iput-object v2, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    #@a
    .line 113
    iput-object v2, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    #@c
    .line 118
    new-instance v0, Ljava/lang/Object;

    #@e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    #@13
    .line 137
    return-void
.end method


# virtual methods
.method public getDecayHFRatio()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [B

    #@3
    .line 249
    .local v0, "param":[B
    const/4 v1, 0x3

    #@4
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@b
    .line 250
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public getDecayTime()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [B

    #@3
    .line 220
    .local v0, "param":[B
    const/4 v1, 0x2

    #@4
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@b
    .line 221
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([B)I

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public getDensity()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 424
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [B

    #@3
    .line 425
    .local v0, "param":[B
    const/16 v1, 0x9

    #@5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@c
    .line 426
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    #@f
    move-result v1

    #@10
    return v1
.end method

.method public getDiffusion()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 391
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [B

    #@3
    .line 392
    .local v0, "param":[B
    const/16 v1, 0x8

    #@5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@c
    .line 393
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    #@f
    move-result v1

    #@10
    return v1
.end method

.method public getProperties()Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    .line 621
    sget v2, Landroid/media/audiofx/EnvironmentalReverb;->PROPERTY_SIZE:I

    #@4
    new-array v0, v2, [B

    #@6
    .line 622
    .local v0, "param":[B
    invoke-virtual {p0, v3, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    #@9
    move-result v2

    #@a
    invoke-virtual {p0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@d
    .line 623
    new-instance v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;

    #@f
    invoke-direct {v1}, Landroid/media/audiofx/EnvironmentalReverb$Settings;-><init>()V

    #@12
    .line 624
    .local v1, "settings":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    const/4 v2, 0x0

    #@13
    invoke-static {v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    #@16
    move-result v2

    #@17
    iput-short v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    #@19
    .line 625
    const/4 v2, 0x2

    #@1a
    invoke-static {v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    #@1d
    move-result v2

    #@1e
    iput-short v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    #@20
    .line 626
    const/4 v2, 0x4

    #@21
    invoke-static {v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    #@24
    move-result v2

    #@25
    iput v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    #@27
    .line 627
    const/16 v2, 0x8

    #@29
    invoke-static {v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    #@2c
    move-result v2

    #@2d
    iput-short v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    #@2f
    .line 628
    invoke-static {v0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    #@32
    move-result v2

    #@33
    iput-short v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    #@35
    .line 629
    const/16 v2, 0xc

    #@37
    invoke-static {v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    #@3a
    move-result v2

    #@3b
    iput v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    #@3d
    .line 630
    const/16 v2, 0x10

    #@3f
    invoke-static {v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    #@42
    move-result v2

    #@43
    iput-short v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    #@45
    .line 631
    const/16 v2, 0x12

    #@47
    invoke-static {v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    #@4a
    move-result v2

    #@4b
    iput v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    #@4d
    .line 632
    const/16 v2, 0x16

    #@4f
    invoke-static {v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    #@52
    move-result v2

    #@53
    iput-short v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    #@55
    .line 633
    const/16 v2, 0x18

    #@57
    invoke-static {v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    #@5a
    move-result v2

    #@5b
    iput-short v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S

    #@5d
    .line 634
    return-object v1
.end method

.method public getReflectionsDelay()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [B

    #@3
    .line 307
    .local v0, "param":[B
    const/4 v1, 0x5

    #@4
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@b
    .line 308
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([B)I

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public getReflectionsLevel()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [B

    #@3
    .line 278
    .local v0, "param":[B
    const/4 v1, 0x4

    #@4
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@b
    .line 279
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public getReverbDelay()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 361
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [B

    #@3
    .line 362
    .local v0, "param":[B
    const/4 v1, 0x7

    #@4
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@b
    .line 363
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([B)I

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public getReverbLevel()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [B

    #@3
    .line 335
    .local v0, "param":[B
    const/4 v1, 0x6

    #@4
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@b
    .line 336
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public getRoomHFLevel()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [B

    #@3
    .line 193
    .local v0, "param":[B
    const/4 v1, 0x1

    #@4
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@b
    .line 194
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public getRoomLevel()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [B

    #@3
    .line 164
    .local v0, "param":[B
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@b
    .line 165
    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public setDecayHFRatio(S)V
    .locals 2
    .param p1, "decayHFRatio"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    #@3
    move-result-object v0

    #@4
    .line 236
    .local v0, "param":[B
    const/4 v1, 0x3

    #@5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@c
    .line 234
    return-void
.end method

.method public setDecayTime(I)V
    .locals 2
    .param p1, "decayTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    #@3
    move-result-object v0

    #@4
    .line 207
    .local v0, "param":[B
    const/4 v1, 0x2

    #@5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@c
    .line 205
    return-void
.end method

.method public setDensity(S)V
    .locals 2
    .param p1, "density"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 411
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    #@3
    move-result-object v0

    #@4
    .line 412
    .local v0, "param":[B
    const/16 v1, 0x9

    #@6
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@d
    .line 410
    return-void
.end method

.method public setDiffusion(S)V
    .locals 2
    .param p1, "diffusion"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 378
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    #@3
    move-result-object v0

    #@4
    .line 379
    .local v0, "param":[B
    const/16 v1, 0x8

    #@6
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@d
    .line 377
    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    #@0
    .prologue
    .line 487
    iget-object v1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 488
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 489
    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    #@9
    .line 490
    new-instance v0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/EnvironmentalReverb;Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;)V

    #@f
    iput-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    #@11
    .line 491
    iget-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    #@13
    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v1

    #@17
    .line 486
    return-void

    #@18
    .line 487
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/EnvironmentalReverb$Settings;)V
    .locals 5
    .param p1, "settings"    # Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0xa

    #@2
    .line 648
    new-array v1, v4, [[B

    #@4
    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    #@6
    invoke-static {v2}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    .line 649
    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    #@f
    invoke-static {v2}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    #@12
    move-result-object v2

    #@13
    const/4 v3, 0x1

    #@14
    aput-object v2, v1, v3

    #@16
    .line 650
    iget v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    #@18
    invoke-static {v2}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    #@1b
    move-result-object v2

    #@1c
    const/4 v3, 0x2

    #@1d
    aput-object v2, v1, v3

    #@1f
    .line 651
    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    #@21
    invoke-static {v2}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    #@24
    move-result-object v2

    #@25
    const/4 v3, 0x3

    #@26
    aput-object v2, v1, v3

    #@28
    .line 652
    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    #@2a
    invoke-static {v2}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    #@2d
    move-result-object v2

    #@2e
    const/4 v3, 0x4

    #@2f
    aput-object v2, v1, v3

    #@31
    .line 653
    iget v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    #@33
    invoke-static {v2}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    #@36
    move-result-object v2

    #@37
    const/4 v3, 0x5

    #@38
    aput-object v2, v1, v3

    #@3a
    .line 654
    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    #@3c
    invoke-static {v2}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    #@3f
    move-result-object v2

    #@40
    const/4 v3, 0x6

    #@41
    aput-object v2, v1, v3

    #@43
    .line 655
    iget v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    #@45
    invoke-static {v2}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    #@48
    move-result-object v2

    #@49
    const/4 v3, 0x7

    #@4a
    aput-object v2, v1, v3

    #@4c
    .line 656
    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    #@4e
    invoke-static {v2}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    #@51
    move-result-object v2

    #@52
    const/16 v3, 0x8

    #@54
    aput-object v2, v1, v3

    #@56
    .line 657
    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S

    #@58
    invoke-static {v2}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    #@5b
    move-result-object v2

    #@5c
    const/16 v3, 0x9

    #@5e
    aput-object v2, v1, v3

    #@60
    .line 648
    invoke-static {v1}, Landroid/media/audiofx/EnvironmentalReverb;->concatArrays([[B)[B

    #@63
    move-result-object v0

    #@64
    .line 659
    .local v0, "param":[B
    invoke-virtual {p0, v4, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    #@67
    move-result v1

    #@68
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@6b
    .line 646
    return-void
.end method

.method public setReflectionsDelay(I)V
    .locals 2
    .param p1, "reflectionsDelay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    #@3
    move-result-object v0

    #@4
    .line 294
    .local v0, "param":[B
    const/4 v1, 0x5

    #@5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@c
    .line 292
    return-void
.end method

.method public setReflectionsLevel(S)V
    .locals 2
    .param p1, "reflectionsLevel"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    #@3
    move-result-object v0

    #@4
    .line 265
    .local v0, "param":[B
    const/4 v1, 0x4

    #@5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@c
    .line 263
    return-void
.end method

.method public setReverbDelay(I)V
    .locals 2
    .param p1, "reverbDelay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 348
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    #@3
    move-result-object v0

    #@4
    .line 349
    .local v0, "param":[B
    const/4 v1, 0x7

    #@5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@c
    .line 347
    return-void
.end method

.method public setReverbLevel(S)V
    .locals 2
    .param p1, "reverbLevel"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 321
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    #@3
    move-result-object v0

    #@4
    .line 322
    .local v0, "param":[B
    const/4 v1, 0x6

    #@5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@c
    .line 320
    return-void
.end method

.method public setRoomHFLevel(S)V
    .locals 2
    .param p1, "roomHF"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    #@3
    move-result-object v0

    #@4
    .line 180
    .local v0, "param":[B
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@c
    .line 178
    return-void
.end method

.method public setRoomLevel(S)V
    .locals 2
    .param p1, "room"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    #@3
    move-result-object v0

    #@4
    .line 151
    .local v0, "param":[B
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    #@c
    .line 149
    return-void
.end method
