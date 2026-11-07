.class public Landroid/app/jank/RelativeFrameTimeHistogram;
.super Ljava/lang/Object;
.source "RelativeFrameTimeHistogram.java"


# static fields
.field private static blacklist sBucketEndpoints:[I


# instance fields
.field private blacklist mBucketCounts:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const/16 v0, 0x35

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/app/jank/RelativeFrameTimeHistogram;->sBucketEndpoints:[I

    return-void

    :array_a
    .array-data 4
        -0x80000000
        -0xc8
        -0x96
        -0x64
        -0x5a
        -0x50
        -0x46
        -0x3c
        -0x32
        -0x28
        -0x1e
        -0x19
        -0x14
        -0x12
        -0x10
        -0xe
        -0xc
        -0xa
        -0x8
        -0x6
        -0x4
        -0x2
        0x0
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
        0x10
        0x12
        0x14
        0x19
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
        0x96
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
        0x7fffffff
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Landroid/app/jank/RelativeFrameTimeHistogram;->sBucketEndpoints:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/jank/RelativeFrameTimeHistogram;->mBucketCounts:[I

    .line 60
    return-void
.end method

.method private blacklist getRelativeFrameTimeBucketIndex(I)I
    .registers 4
    .param p1, "relativeFrameTime"    # I

    .line 100
    const/16 v0, 0x14

    if-ge p1, v0, :cond_32

    .line 101
    const/16 v0, -0x14

    if-lt p1, v0, :cond_f

    .line 102
    add-int/lit8 v0, p1, 0x14

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    return v0

    .line 104
    :cond_f
    const/16 v0, -0x1e

    if-lt p1, v0, :cond_1a

    .line 105
    add-int/lit8 v0, p1, 0x1e

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 107
    :cond_1a
    const/16 v0, -0x64

    if-lt p1, v0, :cond_25

    .line 108
    add-int/lit8 v0, p1, 0x64

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x3

    return v0

    .line 110
    :cond_25
    const/16 v0, -0xc8

    if-lt p1, v0, :cond_30

    .line 111
    add-int/lit16 v0, p1, 0xc8

    div-int/lit8 v0, v0, 0x32

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 113
    :cond_30
    const/4 v0, 0x0

    return v0

    .line 115
    :cond_32
    const/16 v0, 0x1e

    if-ge p1, v0, :cond_3d

    .line 116
    add-int/lit8 v0, p1, -0x14

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x20

    return v0

    .line 118
    :cond_3d
    const/16 v0, 0x64

    if-ge p1, v0, :cond_48

    .line 119
    add-int/lit8 v0, p1, -0x1e

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x22

    return v0

    .line 121
    :cond_48
    const/16 v1, 0xc8

    if-ge p1, v1, :cond_52

    .line 122
    add-int/lit8 v1, p1, -0x32

    div-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x29

    return v1

    .line 124
    :cond_52
    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_5c

    .line 125
    add-int/lit16 v1, p1, -0xc8

    div-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2b

    return v1

    .line 127
    :cond_5c
    iget-object v0, p0, Landroid/app/jank/RelativeFrameTimeHistogram;->mBucketCounts:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public whitelist addRelativeFrameTimeMillis(I)V
    .registers 5
    .param p1, "frameTimeMillis"    # I

    .line 69
    invoke-direct {p0, p1}, Landroid/app/jank/RelativeFrameTimeHistogram;->getRelativeFrameTimeBucketIndex(I)I

    move-result v0

    .line 70
    .local v0, "countsIndex":I
    iget-object v1, p0, Landroid/app/jank/RelativeFrameTimeHistogram;->mBucketCounts:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 71
    return-void
.end method

.method public whitelist getBucketCounters()[I
    .registers 3

    .line 80
    iget-object v0, p0, Landroid/app/jank/RelativeFrameTimeHistogram;->mBucketCounts:[I

    iget-object v1, p0, Landroid/app/jank/RelativeFrameTimeHistogram;->mBucketCounts:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBucketEndpointsMillis()[I
    .registers 3

    .line 94
    sget-object v0, Landroid/app/jank/RelativeFrameTimeHistogram;->sBucketEndpoints:[I

    sget-object v1, Landroid/app/jank/RelativeFrameTimeHistogram;->sBucketEndpoints:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method
