.class public final Landroid/media/MediaCodecInfo;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodecInfo$Feature;,
        Landroid/media/MediaCodecInfo$CodecCapabilities;,
        Landroid/media/MediaCodecInfo$AudioCapabilities;,
        Landroid/media/MediaCodecInfo$VideoCapabilities;,
        Landroid/media/MediaCodecInfo$EncoderCapabilities;,
        Landroid/media/MediaCodecInfo$CodecProfileLevel;
    }
.end annotation


# static fields
.field private static final BITRATE_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MAX_SUPPORTED_INSTANCES:I = 0x20

.field private static final ERROR_NONE_SUPPORTED:I = 0x4

.field private static final ERROR_UNRECOGNIZED:I = 0x1

.field private static final ERROR_UNSUPPORTED:I = 0x2

.field private static final FRAME_RATE_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SUPPORTED_INSTANCES_LIMIT:I = 0x100

.field private static final POSITIVE_INTEGERS:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITIVE_LONGS:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITIVE_RATIONALS:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIZE_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEncoder:Z

.field private mName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/util/Range;
    .locals 1

    #@0
    sget-object v0, Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Landroid/util/Range;
    .locals 1

    #@0
    sget-object v0, Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Landroid/util/Range;
    .locals 1

    #@0
    sget-object v0, Landroid/media/MediaCodecInfo;->POSITIVE_INTEGERS:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method static synthetic -get3()Landroid/util/Range;
    .locals 1

    #@0
    sget-object v0, Landroid/media/MediaCodecInfo;->POSITIVE_LONGS:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method static synthetic -get4()Landroid/util/Range;
    .locals 1

    #@0
    sget-object v0, Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method static synthetic -get5()Landroid/util/Range;
    .locals 1

    #@0
    sget-object v0, Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(ILjava/lang/String;)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const v5, 0x7fffffff

    #@4
    const/4 v4, 0x1

    #@5
    .line 120
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v0

    #@9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v1

    #@d
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@10
    move-result-object v0

    #@11
    .line 119
    sput-object v0, Landroid/media/MediaCodecInfo;->POSITIVE_INTEGERS:Landroid/util/Range;

    #@13
    .line 122
    const-wide/16 v0, 0x1

    #@15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@18
    move-result-object v0

    #@19
    const-wide v2, 0x7fffffffffffffffL

    #@1e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@25
    move-result-object v0

    #@26
    .line 121
    sput-object v0, Landroid/media/MediaCodecInfo;->POSITIVE_LONGS:Landroid/util/Range;

    #@28
    .line 124
    new-instance v0, Landroid/util/Rational;

    #@2a
    invoke-direct {v0, v4, v5}, Landroid/util/Rational;-><init>(II)V

    #@2d
    .line 125
    new-instance v1, Landroid/util/Rational;

    #@2f
    invoke-direct {v1, v5, v4}, Landroid/util/Rational;-><init>(II)V

    #@32
    .line 124
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@35
    move-result-object v0

    #@36
    .line 123
    sput-object v0, Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;

    #@38
    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v0

    #@3c
    const v1, 0x8000

    #@3f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v1

    #@43
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@46
    move-result-object v0

    #@47
    sput-object v0, Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;

    #@49
    .line 127
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v0

    #@4d
    const/16 v1, 0x3c0

    #@4f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v1

    #@53
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@56
    move-result-object v0

    #@57
    sput-object v0, Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;

    #@59
    .line 128
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5c
    move-result-object v0

    #@5d
    const v1, 0x1dcd6500

    #@60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v1

    #@64
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@67
    move-result-object v0

    #@68
    sput-object v0, Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;

    #@6a
    .line 61
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z[Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isEncoder"    # Z
    .param p3, "caps"    # [Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    iput-object p1, p0, Landroid/media/MediaCodecInfo;->mName:Ljava/lang/String;

    #@5
    .line 69
    iput-boolean p2, p0, Landroid/media/MediaCodecInfo;->mIsEncoder:Z

    #@7
    .line 70
    new-instance v1, Ljava/util/HashMap;

    #@9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@c
    iput-object v1, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    #@e
    .line 71
    const/4 v1, 0x0

    #@f
    array-length v2, p3

    #@10
    :goto_0
    if-ge v1, v2, :cond_0

    #@12
    aget-object v0, p3, v1

    #@14
    .line 72
    .local v0, "c":Landroid/media/MediaCodecInfo$CodecCapabilities;
    iget-object v3, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    #@16
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 71
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 67
    .end local v0    # "c":Landroid/media/MediaCodecInfo$CodecCapabilities;
    :cond_0
    return-void
.end method

.method private static checkPowerOfTwo(ILjava/lang/String;)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 101
    add-int/lit8 v0, p0, -0x1

    #@2
    and-int/2addr v0, p0

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 104
    :cond_0
    return p0
.end method


# virtual methods
.method public final getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2589
    iget-object v1, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@8
    .line 2590
    .local v0, "caps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    if-nez v0, :cond_0

    #@a
    .line 2591
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v2, "codec does not support type"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 2594
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->dup()Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/MediaCodecInfo;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getSupportedTypes()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 94
    iget-object v2, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    #@2
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    .line 95
    .local v0, "typeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@9
    move-result v2

    #@a
    new-array v2, v2, [Ljava/lang/String;

    #@c
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, [Ljava/lang/String;

    #@12
    .line 96
    .local v1, "types":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@15
    .line 97
    return-object v1
.end method

.method public final isEncoder()Z
    .locals 1

    #@0
    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/media/MediaCodecInfo;->mIsEncoder:Z

    #@2
    return v0
.end method

.method public makeRegular()Landroid/media/MediaCodecInfo;
    .locals 7

    #@0
    .prologue
    .line 2599
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2600
    .local v2, "caps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo$CodecCapabilities;>;"
    iget-object v3, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    #@7
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@1b
    .line 2601
    .local v0, "c":Landroid/media/MediaCodecInfo$CodecCapabilities;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isRegular()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 2602
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 2605
    .end local v0    # "c":Landroid/media/MediaCodecInfo$CodecCapabilities;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v3

    #@29
    if-nez v3, :cond_2

    #@2b
    .line 2606
    const/4 v3, 0x0

    #@2c
    return-object v3

    #@2d
    .line 2607
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v3

    #@31
    iget-object v4, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    #@33
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@36
    move-result v4

    #@37
    if-ne v3, v4, :cond_3

    #@39
    .line 2608
    return-object p0

    #@3a
    .line 2611
    :cond_3
    new-instance v4, Landroid/media/MediaCodecInfo;

    #@3c
    .line 2612
    iget-object v5, p0, Landroid/media/MediaCodecInfo;->mName:Ljava/lang/String;

    #@3e
    iget-boolean v6, p0, Landroid/media/MediaCodecInfo;->mIsEncoder:Z

    #@40
    .line 2613
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v3

    #@44
    new-array v3, v3, [Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@46
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@49
    move-result-object v3

    #@4a
    check-cast v3, [Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@4c
    .line 2611
    invoke-direct {v4, v5, v6, v3}, Landroid/media/MediaCodecInfo;-><init>(Ljava/lang/String;Z[Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    #@4f
    return-object v4
.end method
