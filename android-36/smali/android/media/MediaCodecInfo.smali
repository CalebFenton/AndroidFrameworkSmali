.class public final Landroid/media/MediaCodecInfo;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodecInfo$CodecCapabilities;,
        Landroid/media/MediaCodecInfo$CodecProfileLevel;,
        Landroid/media/MediaCodecInfo$EncoderCapabilities;,
        Landroid/media/MediaCodecInfo$VideoCapabilities;,
        Landroid/media/MediaCodecInfo$SecurityModel;,
        Landroid/media/MediaCodecInfo$AudioCapabilities;,
        Landroid/media/MediaCodecInfo$Feature;
    }
.end annotation


# static fields
.field private static final greylist-max-o BITRATE_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_MAX_SUPPORTED_INSTANCES:I = 0x20

.field private static final greylist-max-o ERROR_NONE_SUPPORTED:I = 0x4

.field private static final greylist-max-o ERROR_UNRECOGNIZED:I = 0x1

.field private static final greylist-max-o ERROR_UNSUPPORTED:I = 0x2

.field private static final blacklist FLAG_IS_ENCODER:I = 0x1

.field private static final blacklist FLAG_IS_HARDWARE_ACCELERATED:I = 0x8

.field private static final blacklist FLAG_IS_SOFTWARE_ONLY:I = 0x4

.field private static final blacklist FLAG_IS_VENDOR:I = 0x2

.field private static final greylist-max-o FRAME_RATE_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_SUPPORTED_INSTANCES_LIMIT:I = 0x100

.field private static final greylist-max-o POSITIVE_INTEGERS:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o POSITIVE_LONGS:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o POSITIVE_RATIONALS:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SECURITY_MODEL_MEMORY_SAFE:I = 0x1

.field public static final whitelist SECURITY_MODEL_SANDBOXED:I = 0x0

.field public static final blacklist SECURITY_MODEL_TRUSTED_CONTENT_ONLY:I = 0x2

.field private static greylist-max-o SIZE_RANGE:Landroid/util/Range; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "MediaCodecInfo"


# instance fields
.field private blacklist mCanonicalName:Ljava/lang/String;

.field private greylist-max-o mCaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFlags:I

.field private greylist-max-o mName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;
    .registers 1

    sget-object v0, Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;
    .registers 1

    sget-object v0, Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;
    .registers 1

    sget-object v0, Landroid/media/MediaCodecInfo;->POSITIVE_INTEGERS:Landroid/util/Range;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPOSITIVE_LONGS()Landroid/util/Range;
    .registers 1

    sget-object v0, Landroid/media/MediaCodecInfo;->POSITIVE_LONGS:Landroid/util/Range;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;
    .registers 1

    sget-object v0, Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSizeRange()Landroid/util/Range;
    .registers 1

    invoke-static {}, Landroid/media/MediaCodecInfo;->getSizeRange()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 210
    nop

    .line 211
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    sput-object v1, Landroid/media/MediaCodecInfo;->POSITIVE_INTEGERS:Landroid/util/Range;

    .line 212
    nop

    .line 213
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    sput-object v1, Landroid/media/MediaCodecInfo;->POSITIVE_LONGS:Landroid/util/Range;

    .line 214
    new-instance v1, Landroid/util/Rational;

    invoke-direct {v1, v0, v2}, Landroid/util/Rational;-><init>(II)V

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v2, v0}, Landroid/util/Rational;-><init>(II)V

    .line 215
    invoke-static {v1, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    sput-object v0, Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;

    .line 217
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    sput-object v1, Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;

    .line 218
    const v1, 0x1dcd6500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    sput-object v0, Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "canonicalName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "caps"    # [Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Landroid/media/MediaCodecInfo;->mName:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Landroid/media/MediaCodecInfo;->mCanonicalName:Ljava/lang/String;

    .line 101
    iput p3, p0, Landroid/media/MediaCodecInfo;->mFlags:I

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    .line 104
    array-length v0, p4

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_22

    aget-object v2, p4, v1

    .line 105
    .local v2, "c":Landroid/media/MediaCodecInfo$CodecCapabilities;
    iget-object v3, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v2    # "c":Landroid/media/MediaCodecInfo$CodecCapabilities;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 107
    :cond_22
    return-void
.end method

.method private static greylist-max-o checkPowerOfTwo(ILjava/lang/String;)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "message"    # Ljava/lang/String;

    .line 187
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_6

    .line 190
    return p0

    .line 188
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized blacklist getSizeRange()Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/media/MediaCodecInfo;

    monitor-enter v0

    .line 224
    :try_start_3
    sget-object v1, Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;

    if-nez v1, :cond_38

    .line 225
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    goto :goto_36

    .line 227
    :cond_1e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Landroid/sysprop/MediaProperties;->resolution_limit_32bit()Ljava/util/Optional;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    :goto_36
    sput-object v1, Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;

    .line 229
    :cond_38
    sget-object v1, Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3c

    monitor-exit v0

    return-object v1

    .line 223
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method


# virtual methods
.method public final whitelist getCanonicalName()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/media/MediaCodecInfo;->mCanonicalName:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .line 5092
    iget-object v0, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 5093
    .local v0, "caps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    if-eqz v0, :cond_f

    .line 5097
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->dup()Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    return-object v1

    .line 5094
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "codec does not support type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist getName()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/media/MediaCodecInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSecurityModel()I
    .registers 2

    .line 1903
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getSupportedTypes()[Ljava/lang/String;
    .registers 3

    .line 180
    iget-object v0, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 181
    .local v0, "typeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 182
    .local v1, "types":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 183
    return-object v1
.end method

.method public final whitelist isAlias()Z
    .registers 3

    .line 141
    iget-object v0, p0, Landroid/media/MediaCodecInfo;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/MediaCodecInfo;->mCanonicalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final whitelist isEncoder()Z
    .registers 3

    .line 148
    iget v0, p0, Landroid/media/MediaCodecInfo;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final whitelist isHardwareAccelerated()Z
    .registers 2

    .line 173
    iget v0, p0, Landroid/media/MediaCodecInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final whitelist isSoftwareOnly()Z
    .registers 2

    .line 165
    iget v0, p0, Landroid/media/MediaCodecInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final whitelist isVendor()Z
    .registers 2

    .line 156
    iget v0, p0, Landroid/media/MediaCodecInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o makeRegular()Landroid/media/MediaCodecInfo;
    .registers 7

    .line 5102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5103
    .local v0, "caps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo$CodecCapabilities;>;"
    iget-object v1, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 5104
    .local v2, "c":Landroid/media/MediaCodecInfo$CodecCapabilities;
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isRegular()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 5105
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5107
    .end local v2    # "c":Landroid/media/MediaCodecInfo$CodecCapabilities;
    :cond_24
    goto :goto_f

    .line 5108
    :cond_25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2d

    .line 5109
    const/4 v1, 0x0

    return-object v1

    .line 5110
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v1, v2, :cond_3a

    .line 5111
    return-object p0

    .line 5114
    :cond_3a
    new-instance v1, Landroid/media/MediaCodecInfo;

    iget-object v2, p0, Landroid/media/MediaCodecInfo;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/MediaCodecInfo;->mCanonicalName:Ljava/lang/String;

    iget v4, p0, Landroid/media/MediaCodecInfo;->mFlags:I

    .line 5116
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/media/MediaCodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 5114
    return-object v1
.end method
