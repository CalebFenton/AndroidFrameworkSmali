.class public Landroid/media/audiofx/Equalizer;
.super Landroid/media/audiofx/AudioEffect;
.source "Equalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Equalizer$OnParameterChangeListener;,
        Landroid/media/audiofx/Equalizer$BaseParameterListener;,
        Landroid/media/audiofx/Equalizer$Settings;
    }
.end annotation


# static fields
.field public static final PARAM_BAND_FREQ_RANGE:I = 0x4

.field public static final PARAM_BAND_LEVEL:I = 0x2

.field public static final PARAM_CENTER_FREQ:I = 0x3

.field public static final PARAM_CURRENT_PRESET:I = 0x6

.field public static final PARAM_GET_BAND:I = 0x5

.field public static final PARAM_GET_NUM_OF_PRESETS:I = 0x7

.field public static final PARAM_GET_PRESET_NAME:I = 0x8

.field public static final PARAM_LEVEL_RANGE:I = 0x1

.field public static final PARAM_NUM_BANDS:I = 0x0

.field private static final PARAM_PROPERTIES:I = 0x9

.field public static final PARAM_STRING_SIZE_MAX:I = 0x20

.field private static final TAG:Ljava/lang/String; = "Equalizer"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

.field private mNumBands:S

.field private mNumPresets:I

.field private mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mPresetNames:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public constructor <init>(II)V
    .locals 9
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 139
    sget-object v5, Landroid/media/audiofx/Equalizer;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    #@4
    sget-object v6, Landroid/media/audiofx/Equalizer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    #@6
    invoke-direct {p0, v5, v6, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    #@9
    .line 96
    iput-short v7, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    #@b
    .line 110
    iput-object v8, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    #@d
    .line 115
    iput-object v8, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    #@f
    .line 120
    new-instance v5, Ljava/lang/Object;

    #@11
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    #@14
    iput-object v5, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    #@16
    .line 141
    if-nez p2, :cond_0

    #@18
    .line 142
    const-string/jumbo v5, "Equalizer"

    #@1b
    const-string/jumbo v6, "WARNING: attaching an Equalizer to global output mix is deprecated!"

    #@1e
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    #@24
    .line 147
    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    #@27
    move-result v5

    #@28
    iput v5, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    #@2a
    .line 149
    iget v5, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    #@2c
    if-eqz v5, :cond_2

    #@2e
    .line 150
    iget v5, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    #@30
    new-array v5, v5, [Ljava/lang/String;

    #@32
    iput-object v5, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    #@34
    .line 151
    const/16 v5, 0x20

    #@36
    new-array v4, v5, [B

    #@38
    .line 152
    .local v4, "value":[B
    const/4 v5, 0x2

    #@39
    new-array v3, v5, [I

    #@3b
    .line 153
    .local v3, "param":[I
    const/16 v5, 0x8

    #@3d
    aput v5, v3, v7

    #@3f
    .line 154
    const/4 v1, 0x0

    #@40
    .local v1, "i":I
    :goto_0
    iget v5, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    #@42
    if-ge v1, v5, :cond_2

    #@44
    .line 155
    const/4 v5, 0x1

    #@45
    aput v1, v3, v5

    #@47
    .line 156
    invoke-virtual {p0, v3, v4}, Landroid/media/audiofx/Equalizer;->getParameter([I[B)I

    #@4a
    move-result v5

    #@4b
    invoke-virtual {p0, v5}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    #@4e
    .line 157
    const/4 v2, 0x0

    #@4f
    .line 158
    .local v2, "length":I
    :goto_1
    aget-byte v5, v4, v2

    #@51
    if-eqz v5, :cond_1

    #@53
    add-int/lit8 v2, v2, 0x1

    #@55
    goto :goto_1

    #@56
    .line 160
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    #@58
    new-instance v6, Ljava/lang/String;

    #@5a
    const-string/jumbo v7, "ISO-8859-1"

    #@5d
    const/4 v8, 0x0

    #@5e
    invoke-direct {v6, v4, v8, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@61
    aput-object v6, v5, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 154
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@65
    goto :goto_0

    #@66
    .line 161
    :catch_0
    move-exception v0

    #@67
    .line 162
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "Equalizer"

    #@6a
    const-string/jumbo v6, "preset name decode error"

    #@6d
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    goto :goto_2

    #@71
    .line 138
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "param":[I
    .end local v4    # "value":[B
    :cond_2
    return-void
.end method


# virtual methods
.method public getBand(I)S
    .locals 5
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 300
    const/4 v2, 0x2

    #@3
    new-array v0, v2, [I

    #@5
    .line 301
    .local v0, "param":[I
    new-array v1, v4, [S

    #@7
    .line 303
    .local v1, "result":[S
    const/4 v2, 0x5

    #@8
    aput v2, v0, v3

    #@a
    .line 304
    aput p1, v0, v4

    #@c
    .line 305
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    #@f
    move-result v2

    #@10
    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    #@13
    .line 307
    aget-short v2, v1, v3

    #@15
    return v2
.end method

.method public getBandFreqRange(S)[I
    .locals 4
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 281
    new-array v0, v2, [I

    #@3
    .line 282
    .local v0, "param":[I
    new-array v1, v2, [I

    #@5
    .line 283
    .local v1, "result":[I
    const/4 v2, 0x4

    #@6
    const/4 v3, 0x0

    #@7
    aput v2, v0, v3

    #@9
    .line 284
    const/4 v2, 0x1

    #@a
    aput p1, v0, v2

    #@c
    .line 285
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->getParameter([I[I)I

    #@f
    move-result v2

    #@10
    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    #@13
    .line 287
    return-object v1
.end method

.method public getBandLevel(S)S
    .locals 5
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 237
    new-array v0, v4, [I

    #@5
    .line 238
    .local v0, "param":[I
    new-array v1, v2, [S

    #@7
    .line 240
    .local v1, "result":[S
    aput v4, v0, v3

    #@9
    .line 241
    aput p1, v0, v2

    #@b
    .line 242
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    #@e
    move-result v2

    #@f
    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    #@12
    .line 244
    aget-short v2, v1, v3

    #@14
    return v2
.end method

.method public getBandLevelRange()[S
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
    .line 199
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [S

    #@3
    .line 200
    .local v0, "result":[S
    const/4 v1, 0x1

    #@4
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    #@b
    .line 201
    return-object v0
.end method

.method public getCenterFreq(S)I
    .locals 5
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 259
    const/4 v2, 0x2

    #@3
    new-array v0, v2, [I

    #@5
    .line 260
    .local v0, "param":[I
    new-array v1, v4, [I

    #@7
    .line 262
    .local v1, "result":[I
    const/4 v2, 0x3

    #@8
    aput v2, v0, v3

    #@a
    .line 263
    aput p1, v0, v4

    #@c
    .line 264
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->getParameter([I[I)I

    #@f
    move-result v2

    #@10
    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    #@13
    .line 266
    aget v2, v1, v3

    #@15
    return v2
.end method

.method public getCurrentPreset()S
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
    .line 319
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [S

    #@3
    .line 320
    .local v0, "result":[S
    const/4 v1, 0x6

    #@4
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    #@b
    .line 321
    const/4 v1, 0x0

    #@c
    aget-short v1, v0, v1

    #@e
    return v1
.end method

.method public getNumberOfBands()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 177
    iget-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 178
    iget-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    #@8
    return v2

    #@9
    .line 180
    :cond_0
    new-array v0, v4, [I

    #@b
    .line 181
    .local v0, "param":[I
    aput v3, v0, v3

    #@d
    .line 182
    new-array v1, v4, [S

    #@f
    .line 183
    .local v1, "result":[S
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    #@12
    move-result v2

    #@13
    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    #@16
    .line 184
    aget-short v2, v1, v3

    #@18
    iput-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    #@1a
    .line 185
    iget-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    #@1c
    return v2
.end method

.method public getNumberOfPresets()S
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
    .line 348
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [S

    #@3
    .line 349
    .local v0, "result":[S
    const/4 v1, 0x7

    #@4
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    #@b
    .line 350
    const/4 v1, 0x0

    #@c
    aget-short v1, v0, v1

    #@e
    return v1
.end method

.method public getPresetName(S)Ljava/lang/String;
    .locals 1
    .param p1, "preset"    # S

    #@0
    .prologue
    .line 363
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 364
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    #@8
    aget-object v0, v0, p1

    #@a
    return-object v0

    #@b
    .line 366
    :cond_0
    const-string/jumbo v0, ""

    #@e
    return-object v0
.end method

.method public getProperties()Landroid/media/audiofx/Equalizer$Settings;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 524
    iget-short v3, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    #@3
    mul-int/lit8 v3, v3, 0x2

    #@5
    add-int/lit8 v3, v3, 0x4

    #@7
    new-array v1, v3, [B

    #@9
    .line 525
    .local v1, "param":[B
    const/16 v3, 0x9

    #@b
    invoke-virtual {p0, v3, v1}, Landroid/media/audiofx/Equalizer;->getParameter(I[B)I

    #@e
    move-result v3

    #@f
    invoke-virtual {p0, v3}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    #@12
    .line 526
    new-instance v2, Landroid/media/audiofx/Equalizer$Settings;

    #@14
    invoke-direct {v2}, Landroid/media/audiofx/Equalizer$Settings;-><init>()V

    #@17
    .line 527
    .local v2, "settings":Landroid/media/audiofx/Equalizer$Settings;
    const/4 v3, 0x0

    #@18
    invoke-static {v1, v3}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    #@1b
    move-result v3

    #@1c
    iput-short v3, v2, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    #@1e
    .line 528
    invoke-static {v1, v4}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    #@21
    move-result v3

    #@22
    iput-short v3, v2, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    #@24
    .line 529
    iget-short v3, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    #@26
    new-array v3, v3, [S

    #@28
    iput-object v3, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    #@2a
    .line 530
    const/4 v0, 0x0

    #@2b
    .local v0, "i":I
    :goto_0
    iget-short v3, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    #@2d
    if-ge v0, v3, :cond_0

    #@2f
    .line 531
    iget-object v3, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    #@31
    mul-int/lit8 v4, v0, 0x2

    #@33
    add-int/lit8 v4, v4, 0x4

    #@35
    invoke-static {v1, v4}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    #@38
    move-result v4

    #@39
    aput-short v4, v3, v0

    #@3b
    .line 530
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 533
    :cond_0
    return-object v2
.end method

.method public setBandLevel(SS)V
    .locals 5
    .param p1, "band"    # S
    .param p2, "level"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 217
    new-array v0, v4, [I

    #@5
    .line 218
    .local v0, "param":[I
    new-array v1, v3, [S

    #@7
    .line 220
    .local v1, "value":[S
    aput v4, v0, v2

    #@9
    .line 221
    aput p1, v0, v3

    #@b
    .line 222
    aput-short p2, v1, v2

    #@d
    .line 223
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->setParameter([I[S)I

    #@10
    move-result v2

    #@11
    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    #@14
    .line 216
    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/Equalizer$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    #@0
    .prologue
    .line 433
    iget-object v1, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 434
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 435
    iput-object p1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    #@9
    .line 436
    new-instance v0, Landroid/media/audiofx/Equalizer$BaseParameterListener;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer$BaseParameterListener;)V

    #@f
    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    #@11
    .line 437
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    #@13
    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v1

    #@17
    .line 432
    return-void

    #@18
    .line 433
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/Equalizer$Settings;)V
    .locals 7
    .param p1, "settings"    # Landroid/media/audiofx/Equalizer$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 546
    iget-short v2, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    #@5
    iget-object v3, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    #@7
    array-length v3, v3

    #@8
    if-ne v2, v3, :cond_0

    #@a
    .line 547
    iget-short v2, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    #@c
    iget-short v3, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    #@e
    if-eq v2, v3, :cond_1

    #@10
    .line 548
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "settings invalid band count: "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    iget-short v4, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2

    #@2c
    .line 551
    :cond_1
    new-array v2, v6, [[B

    #@2e
    iget-short v3, p1, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    #@30
    invoke-static {v3}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    #@33
    move-result-object v3

    #@34
    aput-object v3, v2, v4

    #@36
    .line 552
    iget-short v3, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    #@38
    invoke-static {v3}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    #@3b
    move-result-object v3

    #@3c
    aput-object v3, v2, v5

    #@3e
    .line 551
    invoke-static {v2}, Landroid/media/audiofx/Equalizer;->concatArrays([[B)[B

    #@41
    move-result-object v1

    #@42
    .line 553
    .local v1, "param":[B
    const/4 v0, 0x0

    #@43
    .local v0, "i":I
    :goto_0
    iget-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    #@45
    if-ge v0, v2, :cond_2

    #@47
    .line 554
    new-array v2, v6, [[B

    #@49
    aput-object v1, v2, v4

    #@4b
    .line 555
    iget-object v3, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    #@4d
    aget-short v3, v3, v0

    #@4f
    invoke-static {v3}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    #@52
    move-result-object v3

    #@53
    aput-object v3, v2, v5

    #@55
    .line 554
    invoke-static {v2}, Landroid/media/audiofx/Equalizer;->concatArrays([[B)[B

    #@58
    move-result-object v1

    #@59
    .line 553
    add-int/lit8 v0, v0, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 557
    :cond_2
    const/16 v2, 0x9

    #@5e
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/Equalizer;->setParameter(I[B)I

    #@61
    move-result v2

    #@62
    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    #@65
    .line 545
    return-void
.end method

.method public usePreset(S)V
    .locals 1
    .param p1, "preset"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 335
    const/4 v0, 0x6

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/Equalizer;->setParameter(IS)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    #@8
    .line 334
    return-void
.end method
