.class public final Landroid/media/audiofx/DynamicsProcessing;
.super Landroid/media/audiofx/AudioEffect;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/DynamicsProcessing$Config;,
        Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;,
        Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;,
        Landroid/media/audiofx/DynamicsProcessing$Channel;,
        Landroid/media/audiofx/DynamicsProcessing$Eq;,
        Landroid/media/audiofx/DynamicsProcessing$EqBand;,
        Landroid/media/audiofx/DynamicsProcessing$Mbc;,
        Landroid/media/audiofx/DynamicsProcessing$MbcBand;,
        Landroid/media/audiofx/DynamicsProcessing$Limiter;,
        Landroid/media/audiofx/DynamicsProcessing$Settings;,
        Landroid/media/audiofx/DynamicsProcessing$BandBase;,
        Landroid/media/audiofx/DynamicsProcessing$BandStage;,
        Landroid/media/audiofx/DynamicsProcessing$Stage;
    }
.end annotation


# static fields
.field private static final greylist-max-o CHANNEL_COUNT_MAX:I = 0x20

.field private static final greylist-max-o CHANNEL_DEFAULT_INPUT_GAIN:F = 0.0f

.field private static final greylist-max-o CONFIG_DEFAULT_MBC_BANDS:I = 0x6

.field private static final greylist-max-o CONFIG_DEFAULT_POSTEQ_BANDS:I = 0x6

.field private static final greylist-max-o CONFIG_DEFAULT_PREEQ_BANDS:I = 0x6

.field private static final greylist-max-o CONFIG_DEFAULT_USE_LIMITER:Z = true

.field private static final greylist-max-o CONFIG_DEFAULT_USE_MBC:Z = true

.field private static final greylist-max-o CONFIG_DEFAULT_USE_POSTEQ:Z = true

.field private static final greylist-max-o CONFIG_DEFAULT_USE_PREEQ:Z = true

.field private static final greylist-max-o CONFIG_DEFAULT_VARIANT:I = 0x0

.field private static final greylist-max-o CONFIG_PREFERRED_FRAME_DURATION_MS:F = 10.0f

.field private static final greylist-max-o DEFAULT_MAX_FREQUENCY:F = 20000.0f

.field private static final greylist-max-o DEFAULT_MIN_FREQUENCY:F = 220.0f

.field private static final greylist-max-o EQ_DEFAULT_GAIN:F = 0.0f

.field private static final greylist-max-o LIMITER_DEFAULT_ATTACK_TIME:F = 1.0f

.field private static final greylist-max-o LIMITER_DEFAULT_ENABLED:Z = true

.field private static final greylist-max-o LIMITER_DEFAULT_LINK_GROUP:I = 0x0

.field private static final greylist-max-o LIMITER_DEFAULT_POST_GAIN:F = 0.0f

.field private static final greylist-max-o LIMITER_DEFAULT_RATIO:F = 10.0f

.field private static final greylist-max-o LIMITER_DEFAULT_RELEASE_TIME:F = 60.0f

.field private static final greylist-max-o LIMITER_DEFAULT_THRESHOLD:F = -2.0f

.field private static final greylist-max-o MBC_DEFAULT_ATTACK_TIME:F = 3.0f

.field private static final greylist-max-o MBC_DEFAULT_ENABLED:Z = true

.field private static final greylist-max-o MBC_DEFAULT_EXPANDER_RATIO:F = 1.0f

.field private static final greylist-max-o MBC_DEFAULT_KNEE_WIDTH:F = 0.0f

.field private static final greylist-max-o MBC_DEFAULT_NOISE_GATE_THRESHOLD:F = -90.0f

.field private static final greylist-max-o MBC_DEFAULT_POST_GAIN:F = 0.0f

.field private static final greylist-max-o MBC_DEFAULT_PRE_GAIN:F = 0.0f

.field private static final greylist-max-o MBC_DEFAULT_RATIO:F = 1.0f

.field private static final greylist-max-o MBC_DEFAULT_RELEASE_TIME:F = 80.0f

.field private static final greylist-max-o MBC_DEFAULT_THRESHOLD:F = -45.0f

.field private static final greylist-max-o PARAM_ENGINE_ARCHITECTURE:I = 0x30

.field private static final greylist-max-o PARAM_GET_CHANNEL_COUNT:I = 0x10

.field private static final greylist-max-o PARAM_INPUT_GAIN:I = 0x20

.field private static final greylist-max-o PARAM_LIMITER:I = 0x70

.field private static final greylist-max-o PARAM_MBC:I = 0x50

.field private static final greylist-max-o PARAM_MBC_BAND:I = 0x55

.field private static final greylist-max-o PARAM_POST_EQ:I = 0x60

.field private static final greylist-max-o PARAM_POST_EQ_BAND:I = 0x65

.field private static final greylist-max-o PARAM_PRE_EQ:I = 0x40

.field private static final greylist-max-o PARAM_PRE_EQ_BAND:I = 0x45

.field private static final greylist-max-o POSTEQ_DEFAULT_ENABLED:Z = true

.field private static final greylist-max-o PREEQ_DEFAULT_ENABLED:Z = true

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DynamicsProcessing"

.field public static final whitelist VARIANT_FAVOR_FREQUENCY_RESOLUTION:I = 0x0

.field public static final whitelist VARIANT_FAVOR_TIME_RESOLUTION:I = 0x1

.field private static final greylist-max-o mMaxFreqLog:F

.field private static final greylist-max-o mMinFreqLog:F


# instance fields
.field private greylist-max-o mBaseParamListener:Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;

.field private greylist-max-o mChannelCount:I

.field private greylist-max-o mParamListener:Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

.field private final greylist-max-o mParamListenerLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmParamListener(Landroid/media/audiofx/DynamicsProcessing;)Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListener:Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/DynamicsProcessing;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmMaxFreqLog()F
    .registers 1

    sget v0, Landroid/media/audiofx/DynamicsProcessing;->mMaxFreqLog:F

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmMinFreqLog()F
    .registers 1

    sget v0, Landroid/media/audiofx/DynamicsProcessing;->mMinFreqLog:F

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 303
    const-wide v0, 0x406b800000000000L    # 220.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/media/audiofx/DynamicsProcessing;->mMinFreqLog:F

    .line 304
    const-wide v0, 0x40d3880000000000L    # 20000.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/media/audiofx/DynamicsProcessing;->mMaxFreqLog:F

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "audioSession"    # I

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;-><init>(II)V

    .line 150
    return-void
.end method

.method public constructor greylist-max-o <init>(II)V
    .registers 4
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/audiofx/DynamicsProcessing;-><init>(IILandroid/media/audiofx/DynamicsProcessing$Config;)V

    .line 165
    return-void
.end method

.method public constructor whitelist <init>(IILandroid/media/audiofx/DynamicsProcessing$Config;)V
    .registers 15
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .param p3, "cfg"    # Landroid/media/audiofx/DynamicsProcessing$Config;

    .line 183
    sget-object v0, Landroid/media/audiofx/DynamicsProcessing;->EFFECT_TYPE_DYNAMICS_PROCESSING:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/DynamicsProcessing;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListener:Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    .line 136
    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mBaseParamListener:Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListenerLock:Ljava/lang/Object;

    .line 184
    if-nez p2, :cond_1f

    .line 185
    const-string v0, "DynamicsProcessing"

    const-string v1, "WARNING: attaching a DynamicsProcessing to global output mix isdeprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1f
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing;->getChannelCount()I

    move-result v0

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    .line 190
    if-nez p3, :cond_3b

    .line 192
    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    iget v3, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    const/4 v9, 0x6

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v10}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;-><init>(IIZIZIZIZ)V

    .line 203
    .local v1, "builder":Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->build()Landroid/media/audiofx/DynamicsProcessing$Config;

    move-result-object v0

    .line 204
    .end local v1    # "builder":Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .local v0, "config":Landroid/media/audiofx/DynamicsProcessing$Config;
    goto :goto_42

    .line 206
    .end local v0    # "config":Landroid/media/audiofx/DynamicsProcessing$Config;
    :cond_3b
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Config;

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    invoke-direct {v0, v1, p3}, Landroid/media/audiofx/DynamicsProcessing$Config;-><init>(ILandroid/media/audiofx/DynamicsProcessing$Config;)V

    .line 210
    .restart local v0    # "config":Landroid/media/audiofx/DynamicsProcessing$Config;
    :goto_42
    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Config;->getVariant()I

    move-result v2

    .line 211
    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Config;->getPreferredFrameDuration()F

    move-result v3

    .line 212
    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Config;->isPreEqInUse()Z

    move-result v4

    .line 213
    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Config;->getPreEqBandCount()I

    move-result v5

    .line 214
    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Config;->isMbcInUse()Z

    move-result v6

    .line 215
    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Config;->getMbcBandCount()I

    move-result v7

    .line 216
    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Config;->isPostEqInUse()Z

    move-result v8

    .line 217
    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Config;->getPostEqBandCount()I

    move-result v9

    .line 218
    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Config;->isLimiterInUse()Z

    move-result v10

    .line 210
    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Landroid/media/audiofx/DynamicsProcessing;->setEngineArchitecture(IFZIZIZIZ)V

    .line 220
    const/4 v2, 0x0

    .local v2, "ch":I
    :goto_6b
    iget v3, v1, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v2, v3, :cond_79

    .line 221
    invoke-virtual {v0, v2}, Landroid/media/audiofx/DynamicsProcessing$Config;->getChannelByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineChannelByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    .line 223
    .end local v2    # "ch":I
    :cond_79
    return-void
.end method

.method private greylist-max-o byteArrayToNumberArray([B[Ljava/lang/Number;)V
    .registers 8
    .param p1, "valuesIn"    # [B
    .param p2, "valuesOut"    # [Ljava/lang/Number;

    .line 2178
    const/4 v0, 0x0

    .line 2179
    .local v0, "inIndex":I
    const/4 v1, 0x0

    .line 2180
    .local v1, "outIndex":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_53

    array-length v2, p2

    if-ge v1, v2, :cond_53

    .line 2181
    aget-object v2, p2, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 2182
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "outIndex":I
    .local v2, "outIndex":I
    invoke-static {p1, v0}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToInt([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    .line 2183
    add-int/lit8 v0, v0, 0x4

    move v1, v2

    goto :goto_2

    .line 2184
    .end local v2    # "outIndex":I
    .restart local v1    # "outIndex":I
    :cond_1e
    aget-object v2, p2, v1

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_34

    .line 2185
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "outIndex":I
    .restart local v2    # "outIndex":I
    invoke-static {p1, v0}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToFloat([BI)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, p2, v1

    .line 2186
    add-int/lit8 v0, v0, 0x4

    move v1, v2

    goto :goto_2

    .line 2188
    .end local v2    # "outIndex":I
    .restart local v1    # "outIndex":I
    :cond_34
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v1

    .line 2189
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2192
    :cond_53
    array-length v2, p2

    if-ne v1, v2, :cond_57

    .line 2196
    return-void

    .line 2193
    :cond_57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "only converted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " values out of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o getOneInt(I)I
    .registers 5
    .param p1, "param"    # I

    .line 2138
    filled-new-array {p1}, [I

    move-result-object v0

    .line 2139
    .local v0, "params":[I
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 2141
    .local v1, "result":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/DynamicsProcessing;->checkStatus(I)V

    .line 2142
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method private greylist-max-o getTwoFloat(II)F
    .registers 6
    .param p1, "param"    # I
    .param p2, "paramA"    # I

    .line 2205
    filled-new-array {p1, p2}, [I

    move-result-object v0

    .line 2206
    .local v0, "params":[I
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 2208
    .local v1, "result":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/DynamicsProcessing;->checkStatus(I)V

    .line 2209
    invoke-static {v1}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToFloat([B)F

    move-result v2

    return v2
.end method

.method private greylist-max-o numberArrayToByteArray([Ljava/lang/Number;)[B
    .registers 7
    .param p1, "values"    # [Ljava/lang/Number;

    .line 2154
    const/4 v0, 0x0

    .line 2155
    .local v0, "expectedBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_38

    .line 2156
    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_e

    .line 2157
    add-int/lit8 v0, v0, 0x4

    goto :goto_16

    .line 2158
    :cond_e
    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_19

    .line 2159
    add-int/lit8 v0, v0, 0x4

    .line 2155
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2161
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown value type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    .line 2162
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2165
    .end local v1    # "i":I
    :cond_38
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2166
    .local v1, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2167
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_44
    array-length v3, p1

    if-ge v2, v3, :cond_69

    .line 2168
    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_57

    .line 2169
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_66

    .line 2170
    :cond_57
    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/lang/Float;

    if-eqz v3, :cond_66

    .line 2171
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 2167
    :cond_66
    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 2174
    .end local v2    # "i":I
    :cond_69
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o queryEngineByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;
    .registers 15
    .param p1, "channelIndex"    # I

    .line 2103
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->getTwoFloat(II)F

    move-result v2

    .line 2104
    .local v2, "inputGain":F
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v0

    .line 2105
    .local v0, "preEq":Landroid/media/audiofx/DynamicsProcessing$Eq;
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineMbcByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object v10

    .line 2106
    .local v10, "mbc":Landroid/media/audiofx/DynamicsProcessing$Mbc;
    const/16 v1, 0x60

    invoke-direct {p0, v1, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v11

    .line 2107
    .local v11, "postEq":Landroid/media/audiofx/DynamicsProcessing$Eq;
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineLimiterByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Limiter;

    move-result-object v12

    .line 2109
    .local v12, "limiter":Landroid/media/audiofx/DynamicsProcessing$Limiter;
    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$Channel;

    .line 2110
    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v3

    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v4

    .line 2111
    invoke-virtual {v10}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v5

    invoke-virtual {v10}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v6

    .line 2112
    invoke-virtual {v11}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v7

    invoke-virtual {v11}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v8

    .line 2113
    invoke-virtual {v12}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->isInUse()Z

    move-result v9

    invoke-direct/range {v1 .. v9}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(FZIZIZIZ)V

    .line 2114
    .local v1, "channel":Landroid/media/audiofx/DynamicsProcessing$Channel;
    invoke-virtual {v1, v2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setInputGain(F)V

    .line 2115
    invoke-virtual {v1, v0}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPreEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 2116
    invoke-virtual {v1, v10}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setMbc(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    .line 2117
    invoke-virtual {v1, v11}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPostEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 2118
    invoke-virtual {v1, v12}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setLimiter(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    .line 2119
    return-object v1
.end method

.method private greylist-max-o queryEngineEqBandByChannelIndex(III)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .registers 13
    .param p1, "param"    # I
    .param p2, "channelIndex"    # I
    .param p3, "bandIndex"    # I

    .line 1942
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Number;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1943
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 1944
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 1945
    .local v1, "params":[Ljava/lang/Number;
    new-array v0, v0, [Ljava/lang/Number;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    .line 1946
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v4

    .line 1947
    aput-object v2, v0, v5

    .line 1949
    .local v0, "values":[Ljava/lang/Number;
    invoke-direct {p0, v1}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v2

    .line 1950
    .local v2, "paramBytes":[B
    invoke-direct {p0, v0}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v6

    .line 1951
    .local v6, "valueBytes":[B
    invoke-virtual {p0, v2, v6}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    .line 1953
    invoke-direct {p0, v6, v0}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    .line 1955
    new-instance v7, Landroid/media/audiofx/DynamicsProcessing$EqBand;

    aget-object v8, v0, v3

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-lez v8, :cond_42

    move v3, v4

    :cond_42
    aget-object v4, v0, v4

    .line 1956
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    aget-object v5, v0, v5

    .line 1957
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-direct {v7, v3, v4, v5}, Landroid/media/audiofx/DynamicsProcessing$EqBand;-><init>(ZFF)V

    .line 1955
    return-object v7
.end method

.method private greylist-max-o queryEngineEqByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$Eq;
    .registers 14
    .param p1, "param"    # I
    .param p2, "channelIndex"    # I

    .line 1921
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Number;

    const/16 v2, 0x40

    if-ne p1, v2, :cond_9

    move v3, v2

    goto :goto_b

    :cond_9
    const/16 v3, 0x60

    :goto_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 1922
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    .line 1923
    .local v1, "params":[Ljava/lang/Number;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 1924
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1925
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v0

    .line 1926
    .local v3, "values":[Ljava/lang/Number;
    invoke-direct {p0, v1}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v6

    .line 1927
    .local v6, "paramBytes":[B
    invoke-direct {p0, v3}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v7

    .line 1928
    .local v7, "valueBytes":[B
    invoke-virtual {p0, v6, v7}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    .line 1929
    invoke-direct {p0, v7, v3}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    .line 1930
    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1931
    .local v0, "bandCount":I
    new-instance v8, Landroid/media/audiofx/DynamicsProcessing$Eq;

    aget-object v9, v3, v4

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-lez v9, :cond_4e

    move v9, v5

    goto :goto_4f

    :cond_4e
    move v9, v4

    :goto_4f
    aget-object v10, v3, v5

    .line 1932
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-lez v10, :cond_58

    move v4, v5

    :cond_58
    invoke-direct {v8, v9, v4, v0}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(ZZI)V

    .line 1934
    .local v8, "eq":Landroid/media/audiofx/DynamicsProcessing$Eq;
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_5c
    if-ge v4, v0, :cond_6f

    .line 1935
    if-ne p1, v2, :cond_63

    .line 1936
    const/16 v5, 0x45

    goto :goto_65

    :cond_63
    const/16 v5, 0x65

    .line 1935
    :goto_65
    invoke-direct {p0, v5, p2, v4}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqBandByChannelIndex(III)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v5

    .line 1937
    .local v5, "eqBand":Landroid/media/audiofx/DynamicsProcessing$EqBand;
    invoke-virtual {v8, v4, v5}, Landroid/media/audiofx/DynamicsProcessing$Eq;->setBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    .line 1934
    .end local v5    # "eqBand":Landroid/media/audiofx/DynamicsProcessing$EqBand;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 1939
    .end local v4    # "b":I
    :cond_6f
    return-object v8
.end method

.method private greylist-max-o queryEngineLimiterByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Limiter;
    .registers 24
    .param p1, "channelIndex"    # I

    .line 2076
    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Number;

    const/16 v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    .line 2078
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2076
    aput-object v3, v2, v4

    .line 2077
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v2, v6

    .line 2078
    .local v2, "params":[Ljava/lang/Number;
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Number;

    aput-object v5, v3, v4

    .line 2079
    aput-object v5, v3, v6

    .line 2080
    aput-object v5, v3, v1

    .line 2081
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v3, v7

    .line 2082
    const/4 v8, 0x4

    aput-object v5, v3, v8

    .line 2083
    const/4 v9, 0x5

    aput-object v5, v3, v9

    .line 2084
    const/4 v10, 0x6

    aput-object v5, v3, v10

    .line 2085
    const/4 v11, 0x7

    aput-object v5, v3, v11

    .line 2087
    .local v3, "values":[Ljava/lang/Number;
    invoke-direct {v0, v2}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v5

    .line 2088
    .local v5, "paramBytes":[B
    invoke-direct {v0, v3}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v12

    .line 2089
    .local v12, "valueBytes":[B
    invoke-virtual {v0, v5, v12}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    .line 2090
    invoke-direct {v0, v12, v3}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    .line 2092
    new-instance v13, Landroid/media/audiofx/DynamicsProcessing$Limiter;

    aget-object v14, v3, v4

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    if-lez v14, :cond_51

    move v14, v6

    goto :goto_52

    :cond_51
    move v14, v4

    :goto_52
    aget-object v15, v3, v6

    .line 2093
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    if-lez v15, :cond_5c

    move v15, v6

    goto :goto_5d

    :cond_5c
    move v15, v4

    :goto_5d
    aget-object v1, v3, v1

    .line 2094
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v16

    aget-object v1, v3, v7

    .line 2095
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v17

    aget-object v1, v3, v8

    .line 2096
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v18

    aget-object v1, v3, v9

    .line 2097
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v19

    aget-object v1, v3, v10

    .line 2098
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v20

    aget-object v1, v3, v11

    .line 2099
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v21

    invoke-direct/range {v13 .. v21}, Landroid/media/audiofx/DynamicsProcessing$Limiter;-><init>(ZZIFFFFF)V

    .line 2092
    return-object v13
.end method

.method private greylist-max-o queryEngineMbcBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    .registers 31
    .param p1, "channelIndex"    # I
    .param p2, "bandIndex"    # I

    .line 1995
    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Number;

    const/16 v3, 0x55

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1996
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 1997
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 1998
    .local v2, "params":[Ljava/lang/Number;
    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    .line 1999
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v3, v5

    .line 2000
    aput-object v7, v3, v6

    .line 2001
    aput-object v7, v3, v1

    .line 2002
    const/4 v8, 0x4

    aput-object v7, v3, v8

    .line 2003
    const/4 v9, 0x5

    aput-object v7, v3, v9

    .line 2004
    const/4 v10, 0x6

    aput-object v7, v3, v10

    .line 2005
    const/4 v11, 0x7

    aput-object v7, v3, v11

    .line 2006
    const/16 v12, 0x8

    aput-object v7, v3, v12

    .line 2007
    const/16 v13, 0x9

    aput-object v7, v3, v13

    .line 2008
    const/16 v14, 0xa

    aput-object v7, v3, v14

    .line 2010
    .local v3, "values":[Ljava/lang/Number;
    invoke-direct {v0, v2}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v7

    .line 2011
    .local v7, "paramBytes":[B
    invoke-direct {v0, v3}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v15

    .line 2012
    .local v15, "valueBytes":[B
    invoke-virtual {v0, v7, v15}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    .line 2014
    invoke-direct {v0, v15, v3}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    .line 2016
    new-instance v16, Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    aget-object v17, v3, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    move-result v17

    if-lez v17, :cond_64

    move/from16 v17, v5

    goto :goto_66

    :cond_64
    move/from16 v17, v4

    :goto_66
    aget-object v4, v3, v5

    .line 2017
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v18

    aget-object v4, v3, v6

    .line 2018
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v19

    aget-object v1, v3, v1

    .line 2019
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v20

    aget-object v1, v3, v8

    .line 2020
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v21

    aget-object v1, v3, v9

    .line 2021
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v22

    aget-object v1, v3, v10

    .line 2022
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v23

    aget-object v1, v3, v11

    .line 2023
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v24

    aget-object v1, v3, v12

    .line 2024
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v25

    aget-object v1, v3, v13

    .line 2025
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v26

    aget-object v1, v3, v14

    .line 2026
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v27

    invoke-direct/range {v16 .. v27}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;-><init>(ZFFFFFFFFFF)V

    .line 2016
    return-object v16
.end method

.method private greylist-max-o queryEngineMbcByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Mbc;
    .registers 12
    .param p1, "channelIndex"    # I

    .line 1975
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Number;

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    .line 1977
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1975
    aput-object v2, v1, v3

    .line 1976
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    .line 1977
    .local v1, "params":[Ljava/lang/Number;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Number;

    aput-object v4, v2, v3

    .line 1978
    aput-object v4, v2, v5

    .line 1979
    aput-object v4, v2, v0

    .line 1980
    .local v2, "values":[Ljava/lang/Number;
    invoke-direct {p0, v1}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v4

    .line 1981
    .local v4, "paramBytes":[B
    invoke-direct {p0, v2}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v6

    .line 1982
    .local v6, "valueBytes":[B
    invoke-virtual {p0, v4, v6}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    .line 1983
    invoke-direct {p0, v6, v2}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    .line 1984
    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1985
    .local v0, "bandCount":I
    new-instance v7, Landroid/media/audiofx/DynamicsProcessing$Mbc;

    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-lez v8, :cond_40

    move v8, v5

    goto :goto_41

    :cond_40
    move v8, v3

    :goto_41
    aget-object v9, v2, v5

    .line 1986
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-lez v9, :cond_4a

    move v3, v5

    :cond_4a
    invoke-direct {v7, v8, v3, v0}, Landroid/media/audiofx/DynamicsProcessing$Mbc;-><init>(ZZI)V

    .line 1988
    .local v7, "mbc":Landroid/media/audiofx/DynamicsProcessing$Mbc;
    const/4 v3, 0x0

    .local v3, "b":I
    :goto_4e
    if-ge v3, v0, :cond_5a

    .line 1989
    invoke-direct {p0, p1, v3}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineMbcBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    move-result-object v5

    .line 1990
    .local v5, "mbcBand":Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    invoke-virtual {v7, v3, v5}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->setBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    .line 1988
    .end local v5    # "mbcBand":Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 1992
    .end local v3    # "b":I
    :cond_5a
    return-object v7
.end method

.method private greylist-max-o setEngineArchitecture(IFZIZIZIZ)V
    .registers 15
    .param p1, "variant"    # I
    .param p2, "preferredFrameDuration"    # F
    .param p3, "preEqInUse"    # Z
    .param p4, "preEqBandCount"    # I
    .param p5, "mbcInUse"    # Z
    .param p6, "mbcBandCount"    # I
    .param p7, "postEqInUse"    # Z
    .param p8, "postEqBandCount"    # I
    .param p9, "limiterInUse"    # Z

    .line 1896
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Number;

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1897
    .local v1, "params":[Ljava/lang/Number;
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Number;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1898
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1899
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 1900
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 1901
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v2, v3

    .line 1902
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v2, v3

    .line 1903
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x6

    aput-object v0, v2, v3

    .line 1904
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v2, v3

    .line 1905
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x8

    aput-object v0, v2, v3

    .line 1906
    .local v2, "values":[Ljava/lang/Number;
    invoke-direct {p0, v1, v2}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    .line 1907
    return-void
.end method

.method private greylist-max-o setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V
    .registers 6
    .param p1, "params"    # [Ljava/lang/Number;
    .param p2, "values"    # [Ljava/lang/Number;

    .line 2199
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v0

    .line 2200
    .local v0, "paramBytes":[B
    invoke-direct {p0, p2}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v1

    .line 2201
    .local v1, "valueBytes":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing;->setParameter([B[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/DynamicsProcessing;->checkStatus(I)V

    .line 2202
    return-void
.end method

.method private greylist-max-o setTwoFloat(IIF)V
    .registers 7
    .param p1, "param"    # I
    .param p2, "paramA"    # I
    .param p3, "valueSet"    # F

    .line 2146
    filled-new-array {p1, p2}, [I

    move-result-object v0

    .line 2149
    .local v0, "params":[I
    invoke-static {p3}, Landroid/media/audiofx/DynamicsProcessing;->floatToByteArray(F)[B

    move-result-object v1

    .line 2150
    .local v1, "value":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing;->setParameter([I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/DynamicsProcessing;->checkStatus(I)V

    .line 2151
    return-void
.end method

.method private greylist-max-o updateEffectArchitecture()V
    .registers 2

    .line 2233
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing;->getChannelCount()I

    move-result v0

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    .line 2234
    return-void
.end method

.method private greylist-max-o updateEngineChannelByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V
    .registers 7
    .param p1, "channelIndex"    # I
    .param p2, "channel"    # Landroid/media/audiofx/DynamicsProcessing$Channel;

    .line 2124
    const/16 v0, 0x20

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getInputGain()F

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Landroid/media/audiofx/DynamicsProcessing;->setTwoFloat(IIF)V

    .line 2125
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v0

    .line 2126
    .local v0, "preEq":Landroid/media/audiofx/DynamicsProcessing$Eq;
    const/16 v1, 0x40

    invoke-direct {p0, v1, p1, v0}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 2127
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getMbc()Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object v1

    .line 2128
    .local v1, "mbc":Landroid/media/audiofx/DynamicsProcessing$Mbc;
    invoke-direct {p0, p1, v1}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V

    .line 2129
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v2

    .line 2130
    .local v2, "postEq":Landroid/media/audiofx/DynamicsProcessing$Eq;
    const/16 v3, 0x60

    invoke-direct {p0, v3, p1, v2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 2131
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getLimiter()Landroid/media/audiofx/DynamicsProcessing$Limiter;

    move-result-object v3

    .line 2132
    .local v3, "limiter":Landroid/media/audiofx/DynamicsProcessing$Limiter;
    invoke-direct {p0, p1, v3}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V

    .line 2133
    return-void
.end method

.method private greylist-max-o updateEngineEqBandByChannelIndex(IIILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .registers 11
    .param p1, "param"    # I
    .param p2, "channelIndex"    # I
    .param p3, "bandIndex"    # I
    .param p4, "eqBand"    # Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 1911
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Number;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1912
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 1913
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 1914
    .local v1, "params":[Ljava/lang/Number;
    new-array v0, v0, [Ljava/lang/Number;

    invoke-virtual {p4}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    .line 1915
    invoke-virtual {p4}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->getCutoffFrequency()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v4

    .line 1916
    invoke-virtual {p4}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->getGain()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v5

    .line 1917
    .local v0, "values":[Ljava/lang/Number;
    invoke-direct {p0, v1, v0}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    .line 1918
    return-void
.end method

.method private greylist-max-o updateEngineEqByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$Eq;)V
    .registers 11
    .param p1, "param"    # I
    .param p2, "channelIndex"    # I
    .param p3, "eq"    # Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1960
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v0

    .line 1961
    .local v0, "bandCount":I
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Number;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1962
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 1963
    .local v2, "params":[Ljava/lang/Number;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Number;

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 1964
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1965
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1966
    .local v3, "values":[Ljava/lang/Number;
    invoke-direct {p0, v2, v3}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    .line 1967
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_36
    if-ge v1, v0, :cond_4b

    .line 1968
    invoke-virtual {p3, v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v4

    .line 1969
    .local v4, "eqBand":Landroid/media/audiofx/DynamicsProcessing$EqBand;
    const/16 v5, 0x40

    if-ne p1, v5, :cond_43

    .line 1970
    const/16 v5, 0x45

    goto :goto_45

    :cond_43
    const/16 v5, 0x65

    .line 1969
    :goto_45
    invoke-direct {p0, v5, p2, v1, v4}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqBandByChannelIndex(IIILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    .line 1967
    .end local v4    # "eqBand":Landroid/media/audiofx/DynamicsProcessing$EqBand;
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 1972
    .end local v1    # "b":I
    :cond_4b
    return-void
.end method

.method private greylist-max-o updateEngineLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .registers 9
    .param p1, "channelIndex"    # I
    .param p2, "limiter"    # Landroid/media/audiofx/DynamicsProcessing$Limiter;

    .line 2062
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Number;

    const/16 v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2063
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 2064
    .local v1, "params":[Ljava/lang/Number;
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Number;

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->isInUse()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 2065
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 2066
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getLinkGroup()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2067
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getAttackTime()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 2068
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getReleaseTime()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v2, v3

    .line 2069
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getRatio()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v2, v3

    .line 2070
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getThreshold()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x6

    aput-object v0, v2, v3

    .line 2071
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getPostGain()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v2, v3

    .line 2072
    .local v2, "values":[Ljava/lang/Number;
    invoke-direct {p0, v1, v2}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    .line 2073
    return-void
.end method

.method private greylist-max-o updateEngineMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .registers 11
    .param p1, "channelIndex"    # I
    .param p2, "bandIndex"    # I
    .param p3, "mbcBand"    # Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 2030
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Number;

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2031
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 2032
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 2033
    .local v1, "params":[Ljava/lang/Number;
    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Number;

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->isEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    .line 2034
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getCutoffFrequency()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    .line 2035
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getAttackTime()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    .line 2036
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getReleaseTime()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2037
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getRatio()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v2, v3

    .line 2038
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getThreshold()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v2, v3

    .line 2039
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getKneeWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x6

    aput-object v0, v2, v3

    .line 2040
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getNoiseGateThreshold()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v2, v3

    .line 2041
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getExpanderRatio()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v3, 0x8

    aput-object v0, v2, v3

    .line 2042
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getPreGain()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v3, 0x9

    aput-object v0, v2, v3

    .line 2043
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getPostGain()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v3, 0xa

    aput-object v0, v2, v3

    .line 2044
    .local v2, "values":[Ljava/lang/Number;
    invoke-direct {p0, v1, v2}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    .line 2045
    return-void
.end method

.method private greylist-max-o updateEngineMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .registers 10
    .param p1, "channelIndex"    # I
    .param p2, "mbc"    # Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 2048
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v0

    .line 2049
    .local v0, "bandCount":I
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Number;

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2050
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 2051
    .local v2, "params":[Ljava/lang/Number;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Number;

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 2052
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 2053
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 2054
    .local v3, "values":[Ljava/lang/Number;
    invoke-direct {p0, v2, v3}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    .line 2055
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_38
    if-ge v1, v0, :cond_44

    .line 2056
    invoke-virtual {p2, v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    move-result-object v4

    .line 2057
    .local v4, "mbcBand":Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    invoke-direct {p0, p1, v1, v4}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    .line 2055
    .end local v4    # "mbcBand":Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 2059
    .end local v1    # "b":I
    :cond_44
    return-void
.end method


# virtual methods
.method public whitelist getChannelByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;
    .registers 3
    .param p1, "channelIndex"    # I

    .line 1772
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChannelCount()I
    .registers 2

    .line 1888
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/media/audiofx/DynamicsProcessing;->getOneInt(I)I

    move-result v0

    return v0
.end method

.method public whitelist getConfig()Landroid/media/audiofx/DynamicsProcessing$Config;
    .registers 26

    .line 231
    move-object/from16 v0, p0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Number;

    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    .line 232
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 231
    aput-object v3, v2, v4

    .line 232
    .local v2, "params":[Ljava/lang/Number;
    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Number;

    aput-object v5, v3, v4

    .line 233
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v1

    .line 234
    const/4 v6, 0x2

    aput-object v5, v3, v6

    .line 235
    const/4 v7, 0x3

    aput-object v5, v3, v7

    .line 236
    const/4 v8, 0x4

    aput-object v5, v3, v8

    .line 237
    const/4 v9, 0x5

    aput-object v5, v3, v9

    .line 238
    const/4 v10, 0x6

    aput-object v5, v3, v10

    .line 239
    const/4 v11, 0x7

    aput-object v5, v3, v11

    .line 240
    const/16 v12, 0x8

    aput-object v5, v3, v12

    .line 241
    .local v3, "values":[Ljava/lang/Number;
    invoke-direct {v0, v2}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v5

    .line 242
    .local v5, "paramBytes":[B
    invoke-direct {v0, v3}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v13

    .line 243
    .local v13, "valueBytes":[B
    invoke-virtual {v0, v5, v13}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    .line 244
    invoke-direct {v0, v13, v3}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    .line 245
    new-instance v14, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    aget-object v15, v3, v4

    .line 247
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    move/from16 v24, v1

    iget v1, v0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    aget-object v6, v3, v6

    .line 249
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-lez v6, :cond_5a

    move/from16 v17, v24

    goto :goto_5c

    :cond_5a
    move/from16 v17, v4

    :goto_5c
    aget-object v6, v3, v7

    .line 250
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v18

    aget-object v6, v3, v8

    .line 251
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-lez v6, :cond_6d

    move/from16 v19, v24

    goto :goto_6f

    :cond_6d
    move/from16 v19, v4

    :goto_6f
    aget-object v6, v3, v9

    .line 252
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v20

    aget-object v6, v3, v10

    .line 253
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-lez v6, :cond_80

    move/from16 v21, v24

    goto :goto_82

    :cond_80
    move/from16 v21, v4

    :goto_82
    aget-object v6, v3, v11

    .line 254
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v22

    aget-object v6, v3, v12

    .line 255
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-lez v6, :cond_93

    move/from16 v23, v24

    goto :goto_95

    :cond_93
    move/from16 v23, v4

    :goto_95
    move/from16 v16, v1

    invoke-direct/range {v14 .. v23}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;-><init>(IIZIZIZIZ)V

    aget-object v1, v3, v24

    .line 256
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v14, v1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setPreferredFrameDuration(F)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    move-result-object v1

    .line 257
    .local v1, "builder":Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->build()Landroid/media/audiofx/DynamicsProcessing$Config;

    move-result-object v4

    .line 258
    .local v4, "config":Landroid/media/audiofx/DynamicsProcessing$Config;
    const/4 v6, 0x0

    .local v6, "ch":I
    :goto_a9
    iget v7, v0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v6, v7, :cond_b7

    .line 259
    invoke-direct {v0, v6}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;

    move-result-object v7

    .line 260
    .local v7, "channel":Landroid/media/audiofx/DynamicsProcessing$Channel;
    invoke-virtual {v4, v6, v7}, Landroid/media/audiofx/DynamicsProcessing$Config;->setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V

    .line 258
    .end local v7    # "channel":Landroid/media/audiofx/DynamicsProcessing$Channel;
    add-int/lit8 v6, v6, 0x1

    goto :goto_a9

    .line 262
    .end local v6    # "ch":I
    :cond_b7
    return-object v4
.end method

.method public whitelist getInputGainByChannelIndex(I)F
    .registers 3
    .param p1, "channelIndex"    # I

    .line 1787
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->getTwoFloat(II)F

    move-result v0

    return v0
.end method

.method public whitelist getLimiterByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Limiter;
    .registers 3
    .param p1, "channelIndex"    # I

    .line 1872
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineLimiterByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Limiter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMbcBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    .registers 4
    .param p1, "channelIndex"    # I
    .param p2, "band"    # I

    .line 1835
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineMbcBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMbcByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Mbc;
    .registers 3
    .param p1, "channelIndex"    # I

    .line 1824
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineMbcByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPostEqBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .registers 4
    .param p1, "channelIndex"    # I
    .param p2, "band"    # I

    .line 1859
    const/16 v0, 0x65

    invoke-direct {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqBandByChannelIndex(III)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPostEqByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Eq;
    .registers 3
    .param p1, "channelIndex"    # I

    .line 1848
    const/16 v0, 0x60

    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPreEqBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .registers 4
    .param p1, "channelIndex"    # I
    .param p2, "band"    # I

    .line 1811
    const/16 v0, 0x45

    invoke-direct {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqBandByChannelIndex(III)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPreEqByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Eq;
    .registers 3
    .param p1, "channelIndex"    # I

    .line 1800
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getProperties()Landroid/media/audiofx/DynamicsProcessing$Settings;
    .registers 5

    .line 2363
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/DynamicsProcessing$Settings;-><init>()V

    .line 2368
    .local v0, "settings":Landroid/media/audiofx/DynamicsProcessing$Settings;
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing;->getChannelCount()I

    move-result v1

    iput v1, v0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    .line 2370
    iget v1, v0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    const/16 v2, 0x20

    if-gt v1, v2, :cond_20

    .line 2375
    iget v1, v0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    new-array v1, v1, [F

    iput-object v1, v0, Landroid/media/audiofx/DynamicsProcessing$Settings;->inputGain:[F

    .line 2376
    const/4 v1, 0x0

    .local v1, "ch":I
    :goto_18
    iget v2, v0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    if-ge v1, v2, :cond_1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 2380
    .end local v1    # "ch":I
    :cond_1f
    return-object v0

    .line 2371
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "too many channels Settings:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Channel;)V
    .registers 4
    .param p1, "channel"    # Landroid/media/audiofx/DynamicsProcessing$Channel;

    .line 1780
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_1
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_b

    .line 1781
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V

    .line 1780
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1783
    .end local v0    # "ch":I
    :cond_b
    return-void
.end method

.method public whitelist setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V
    .registers 3
    .param p1, "channelIndex"    # I
    .param p2, "channel"    # Landroid/media/audiofx/DynamicsProcessing$Channel;

    .line 1776
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineChannelByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V

    .line 1777
    return-void
.end method

.method public whitelist setInputGainAllChannelsTo(F)V
    .registers 4
    .param p1, "inputGain"    # F

    .line 1793
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_1
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_b

    .line 1794
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setInputGainbyChannel(IF)V

    .line 1793
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1796
    .end local v0    # "ch":I
    :cond_b
    return-void
.end method

.method public whitelist setInputGainbyChannel(IF)V
    .registers 4
    .param p1, "channelIndex"    # I
    .param p2, "inputGain"    # F

    .line 1790
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->setTwoFloat(IIF)V

    .line 1791
    return-void
.end method

.method public whitelist setLimiterAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .registers 4
    .param p1, "limiter"    # Landroid/media/audiofx/DynamicsProcessing$Limiter;

    .line 1878
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_1
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_b

    .line 1879
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V

    .line 1878
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1881
    .end local v0    # "ch":I
    :cond_b
    return-void
.end method

.method public whitelist setLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .registers 3
    .param p1, "channelIndex"    # I
    .param p2, "limiter"    # Landroid/media/audiofx/DynamicsProcessing$Limiter;

    .line 1875
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V

    .line 1876
    return-void
.end method

.method public whitelist setMbcAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .registers 4
    .param p1, "mbc"    # Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1830
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_1
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_b

    .line 1831
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V

    .line 1830
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1833
    .end local v0    # "ch":I
    :cond_b
    return-void
.end method

.method public whitelist setMbcBandAllChannelsTo(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .registers 5
    .param p1, "band"    # I
    .param p2, "mbcBand"    # Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 1841
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_1
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_b

    .line 1842
    invoke-virtual {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->setMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    .line 1841
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1844
    .end local v0    # "ch":I
    :cond_b
    return-void
.end method

.method public whitelist setMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .registers 4
    .param p1, "channelIndex"    # I
    .param p2, "band"    # I
    .param p3, "mbcBand"    # Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 1838
    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    .line 1839
    return-void
.end method

.method public whitelist setMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .registers 3
    .param p1, "channelIndex"    # I
    .param p2, "mbc"    # Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1827
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V

    .line 1828
    return-void
.end method

.method public greylist-max-o setParameterListener(Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    .line 2278
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2279
    :try_start_3
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListener:Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    if-nez v1, :cond_14

    .line 2280
    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;-><init>(Landroid/media/audiofx/DynamicsProcessing;Landroid/media/audiofx/DynamicsProcessing-IA;)V

    iput-object v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mBaseParamListener:Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;

    .line 2281
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mBaseParamListener:Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;

    invoke-super {p0, v1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 2283
    :cond_14
    iput-object p1, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListener:Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    .line 2284
    monitor-exit v0

    .line 2285
    return-void

    .line 2284
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist setPostEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .registers 4
    .param p1, "postEq"    # Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1854
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_1
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_b

    .line 1855
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setPostEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 1854
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1857
    .end local v0    # "ch":I
    :cond_b
    return-void
.end method

.method public whitelist setPostEqBandAllChannelsTo(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .registers 5
    .param p1, "band"    # I
    .param p2, "postEqBand"    # Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 1865
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_1
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_b

    .line 1866
    invoke-virtual {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->setPostEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    .line 1865
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1868
    .end local v0    # "ch":I
    :cond_b
    return-void
.end method

.method public whitelist setPostEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .registers 5
    .param p1, "channelIndex"    # I
    .param p2, "band"    # I
    .param p3, "postEqBand"    # Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 1862
    const/16 v0, 0x65

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqBandByChannelIndex(IIILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    .line 1863
    return-void
.end method

.method public whitelist setPostEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V
    .registers 4
    .param p1, "channelIndex"    # I
    .param p2, "postEq"    # Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1851
    const/16 v0, 0x60

    invoke-direct {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 1852
    return-void
.end method

.method public whitelist setPreEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .registers 4
    .param p1, "preEq"    # Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1806
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_1
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_b

    .line 1807
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setPreEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 1806
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1809
    .end local v0    # "ch":I
    :cond_b
    return-void
.end method

.method public whitelist setPreEqBandAllChannelsTo(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .registers 5
    .param p1, "band"    # I
    .param p2, "preEqBand"    # Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 1817
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_1
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_b

    .line 1818
    invoke-virtual {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->setPreEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    .line 1817
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1820
    .end local v0    # "ch":I
    :cond_b
    return-void
.end method

.method public whitelist setPreEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .registers 5
    .param p1, "channelIndex"    # I
    .param p2, "band"    # I
    .param p3, "preEqBand"    # Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 1814
    const/16 v0, 0x45

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqBandByChannelIndex(IIILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    .line 1815
    return-void
.end method

.method public whitelist setPreEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V
    .registers 4
    .param p1, "channelIndex"    # I
    .param p2, "preEq"    # Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1803
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 1804
    return-void
.end method

.method public greylist-max-o setProperties(Landroid/media/audiofx/DynamicsProcessing$Settings;)V
    .registers 5
    .param p1, "settings"    # Landroid/media/audiofx/DynamicsProcessing$Settings;

    .line 2391
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Settings;->inputGain:[F

    array-length v1, v1

    if-ne v0, v1, :cond_16

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ne v0, v1, :cond_16

    .line 2398
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_e
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_15

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2401
    .end local v0    # "ch":I
    :cond_15
    return-void

    .line 2393
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settings invalid channel count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
