.class public final Landroid/telephony/TelephonyHistogram;
.super Ljava/lang/Object;
.source "TelephonyHistogram.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyHistogram$1;
    }
.end annotation


# static fields
.field private static final ABSENT:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRESENT:I = 0x1

.field private static final RANGE_CALCULATION_COUNT:I = 0xa

.field public static final TELEPHONY_CATEGORY_RIL:I = 0x1


# instance fields
.field private mAverageTimeMs:I

.field private final mBucketCount:I

.field private final mBucketCounters:[I

.field private final mBucketEndPoints:[I

.field private final mCategory:I

.field private final mId:I

.field private mInitialTimings:[I

.field private mMaxTimeMs:I

.field private mMinTimeMs:I

.field private mSampleCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 260
    new-instance v0, Landroid/telephony/TelephonyHistogram$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/TelephonyHistogram$1;-><init>()V

    #@5
    .line 259
    sput-object v0, Landroid/telephony/TelephonyHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "category"    # I
    .param p2, "id"    # I
    .param p3, "bucketCount"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 81
    const/4 v0, 0x1

    #@5
    if-gt p3, v0, :cond_0

    #@7
    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Invalid number of buckets"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 84
    :cond_0
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    #@12
    .line 85
    iput p2, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    #@14
    .line 86
    const v0, 0x7fffffff

    #@17
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    #@19
    .line 87
    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    #@1b
    .line 88
    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    #@1d
    .line 89
    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@1f
    .line 90
    const/16 v0, 0xa

    #@21
    new-array v0, v0, [I

    #@23
    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    #@25
    .line 91
    iput p3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    #@27
    .line 92
    add-int/lit8 v0, p3, -0x1

    #@29
    new-array v0, v0, [I

    #@2b
    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    #@2d
    .line 93
    new-array v0, p3, [I

    #@2f
    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    #@31
    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    #@9
    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    #@f
    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    #@15
    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    #@1b
    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    #@21
    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@27
    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    const/4 v1, 0x1

    #@2c
    if-ne v0, v1, :cond_0

    #@2e
    .line 281
    const/16 v0, 0xa

    #@30
    new-array v0, v0, [I

    #@32
    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    #@34
    .line 282
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    #@36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    #@39
    .line 284
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    #@3f
    .line 285
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    #@41
    add-int/lit8 v0, v0, -0x1

    #@43
    new-array v0, v0, [I

    #@45
    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    #@47
    .line 286
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    #@49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    #@4c
    .line 287
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    #@4e
    new-array v0, v0, [I

    #@50
    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    #@52
    .line 288
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    #@54
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    #@57
    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/telephony/TelephonyHistogram;)V
    .locals 1
    .param p1, "th"    # Landroid/telephony/TelephonyHistogram;

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 97
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getCategory()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    #@9
    .line 98
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getId()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    #@f
    .line 99
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getMinTime()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    #@15
    .line 100
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getMaxTime()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    #@1b
    .line 101
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getAverageTime()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    #@21
    .line 102
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getSampleCount()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@27
    .line 103
    invoke-direct {p1}, Landroid/telephony/TelephonyHistogram;->getInitialTimings()[I

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    #@2d
    .line 104
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketCount()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    #@33
    .line 105
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketEndPoints()[I

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    #@39
    .line 106
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketCounters()[I

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    #@3f
    .line 96
    return-void
.end method

.method private addToBucketCounter([I[II)V
    .locals 2
    .param p1, "bucketEndPoints"    # [I
    .param p2, "bucketCounters"    # [I
    .param p3, "time"    # I

    #@0
    .prologue
    .line 173
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 174
    aget v1, p1, v0

    #@6
    if-gt p3, v1, :cond_0

    #@8
    .line 175
    aget v1, p2, v0

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    aput v1, p2, v0

    #@e
    .line 176
    return-void

    #@f
    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 179
    :cond_1
    aget v1, p2, v0

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    aput v1, p2, v0

    #@18
    .line 171
    return-void
.end method

.method private calculateBucketEndPoints([I)V
    .locals 5
    .param p1, "bucketEndPoints"    # [I

    #@0
    .prologue
    .line 183
    const/4 v1, 0x1

    #@1
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    #@3
    if-ge v1, v2, :cond_0

    #@5
    .line 184
    iget v2, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    #@7
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    #@9
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    #@b
    sub-int/2addr v3, v4

    #@c
    mul-int/2addr v3, v1

    #@d
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    #@f
    div-int/2addr v3, v4

    #@10
    add-int v0, v2, v3

    #@12
    .line 185
    .local v0, "endPt":I
    add-int/lit8 v2, v1, -0x1

    #@14
    aput v0, p1, v2

    #@16
    .line 183
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 182
    .end local v0    # "endPt":I
    :cond_0
    return-void
.end method

.method private getDeepCopyOfArray([I)[I
    .locals 3
    .param p1, "array"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 166
    array-length v1, p1

    #@2
    new-array v0, v1, [I

    #@4
    .line 167
    .local v0, "clone":[I
    array-length v1, p1

    #@5
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@8
    .line 168
    return-object v0
.end method

.method private getInitialTimings()[I
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    #@2
    return-object v0
.end method


# virtual methods
.method public addTimeTaken(I)V
    .locals 9
    .param p1, "time"    # I

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    const/4 v5, 0x0

    #@3
    .line 198
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@5
    if-eqz v1, :cond_0

    #@7
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@9
    const v4, 0x7fffffff

    #@c
    if-ne v1, v4, :cond_2

    #@e
    .line 199
    :cond_0
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@10
    if-nez v1, :cond_1

    #@12
    .line 200
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    #@14
    .line 201
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    #@16
    .line 202
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    #@18
    .line 206
    :goto_0
    const/4 v1, 0x1

    #@19
    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@1b
    .line 207
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    #@1d
    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    #@20
    .line 208
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    #@22
    aput p1, v1, v5

    #@24
    .line 209
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    #@26
    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    #@29
    .line 210
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    #@2b
    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    #@2e
    .line 195
    :goto_1
    return-void

    #@2f
    .line 204
    :cond_1
    new-array v1, v8, [I

    #@31
    iput-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    #@33
    goto :goto_0

    #@34
    .line 212
    :cond_2
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    #@36
    if-ge p1, v1, :cond_3

    #@38
    .line 213
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    #@3a
    .line 215
    :cond_3
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    #@3c
    if-le p1, v1, :cond_4

    #@3e
    .line 216
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    #@40
    .line 218
    :cond_4
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    #@42
    int-to-long v4, v1

    #@43
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@45
    int-to-long v6, v1

    #@46
    mul-long/2addr v4, v6

    #@47
    int-to-long v6, p1

    #@48
    add-long v2, v4, v6

    #@4a
    .line 219
    .local v2, "totalTime":J
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@4c
    add-int/lit8 v1, v1, 0x1

    #@4e
    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@50
    int-to-long v4, v1

    #@51
    div-long v4, v2, v4

    #@53
    long-to-int v1, v4

    #@54
    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    #@56
    .line 221
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@58
    if-ge v1, v8, :cond_5

    #@5a
    .line 222
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    #@5c
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@5e
    add-int/lit8 v4, v4, -0x1

    #@60
    aput p1, v1, v4

    #@62
    goto :goto_1

    #@63
    .line 223
    :cond_5
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@65
    if-ne v1, v8, :cond_7

    #@67
    .line 224
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    #@69
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@6b
    add-int/lit8 v4, v4, -0x1

    #@6d
    aput p1, v1, v4

    #@6f
    .line 227
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    #@71
    invoke-direct {p0, v1}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    #@74
    .line 230
    const/4 v0, 0x0

    #@75
    .local v0, "j":I
    :goto_2
    if-ge v0, v8, :cond_6

    #@77
    .line 231
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    #@79
    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    #@7b
    iget-object v5, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    #@7d
    aget v5, v5, v0

    #@7f
    invoke-direct {p0, v1, v4, v5}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    #@82
    .line 230
    add-int/lit8 v0, v0, 0x1

    #@84
    goto :goto_2

    #@85
    .line 233
    :cond_6
    const/4 v1, 0x0

    #@86
    iput-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    #@88
    goto :goto_1

    #@89
    .line 235
    .end local v0    # "j":I
    :cond_7
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    #@8b
    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    #@8d
    invoke-direct {p0, v1, v4, p1}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    #@90
    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 311
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAverageTime()I
    .locals 1

    #@0
    .prologue
    .line 126
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    #@2
    return v0
.end method

.method public getBucketCount()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    #@2
    return v0
.end method

.method public getBucketCounters()[I
    .locals 5

    #@0
    .prologue
    .line 152
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@2
    const/4 v4, 0x1

    #@3
    if-le v3, v4, :cond_1

    #@5
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@7
    const/16 v4, 0xa

    #@9
    if-ge v3, v4, :cond_1

    #@b
    .line 153
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    #@d
    add-int/lit8 v3, v3, -0x1

    #@f
    new-array v2, v3, [I

    #@11
    .line 154
    .local v2, "tempEndPoints":[I
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    #@13
    new-array v1, v3, [I

    #@15
    .line 155
    .local v1, "tempBucketCounters":[I
    invoke-direct {p0, v2}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    #@18
    .line 156
    const/4 v0, 0x0

    #@19
    .local v0, "j":I
    :goto_0
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@1b
    if-ge v0, v3, :cond_0

    #@1d
    .line 157
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    #@1f
    aget v3, v3, v0

    #@21
    invoke-direct {p0, v2, v1, v3}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    #@24
    .line 156
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 159
    :cond_0
    return-object v1

    #@28
    .line 161
    .end local v0    # "j":I
    .end local v1    # "tempBucketCounters":[I
    .end local v2    # "tempEndPoints":[I
    :cond_1
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    #@2a
    invoke-direct {p0, v3}, Landroid/telephony/TelephonyHistogram;->getDeepCopyOfArray([I)[I

    #@2d
    move-result-object v3

    #@2e
    return-object v3
.end method

.method public getBucketEndPoints()[I
    .locals 3

    #@0
    .prologue
    .line 142
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@2
    const/4 v2, 0x1

    #@3
    if-le v1, v2, :cond_0

    #@5
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@7
    const/16 v2, 0xa

    #@9
    if-ge v1, v2, :cond_0

    #@b
    .line 143
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    #@d
    add-int/lit8 v1, v1, -0x1

    #@f
    new-array v0, v1, [I

    #@11
    .line 144
    .local v0, "tempEndPoints":[I
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    #@14
    .line 145
    return-object v0

    #@15
    .line 147
    .end local v0    # "tempEndPoints":[I
    :cond_0
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    #@17
    invoke-direct {p0, v1}, Landroid/telephony/TelephonyHistogram;->getDeepCopyOfArray([I)[I

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public getCategory()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 114
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    #@2
    return v0
.end method

.method public getMaxTime()I
    .locals 1

    #@0
    .prologue
    .line 122
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    #@2
    return v0
.end method

.method public getMinTime()I
    .locals 1

    #@0
    .prologue
    .line 118
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    #@2
    return v0
.end method

.method public getSampleCount()I
    .locals 1

    #@0
    .prologue
    .line 130
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, " Histogram id = "

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, " Time(ms): min = "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v4, " max = "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 243
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    #@28
    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 243
    const-string/jumbo v4, " avg = "

    #@2f
    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 243
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    #@35
    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    .line 243
    const-string/jumbo v4, " Count = "

    #@3c
    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    .line 243
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@42
    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    .line 244
    .local v0, "basic":Ljava/lang/String;
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@4c
    const/16 v4, 0xa

    #@4e
    if-ge v3, v4, :cond_0

    #@50
    .line 245
    return-object v0

    #@51
    .line 247
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    #@53
    const-string/jumbo v3, " Interval Endpoints:"

    #@56
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@59
    .line 248
    .local v2, "intervals":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@5a
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    #@5c
    array-length v3, v3

    #@5d
    if-ge v1, v3, :cond_1

    #@5f
    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v4, " "

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    #@6d
    aget v4, v4, v1

    #@6f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7a
    .line 248
    add-int/lit8 v1, v1, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 251
    :cond_1
    const-string/jumbo v3, " Interval counters:"

    #@80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@83
    .line 252
    const/4 v1, 0x0

    #@84
    :goto_1
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    #@86
    array-length v3, v3

    #@87
    if-ge v1, v3, :cond_2

    #@89
    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v4, " "

    #@91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v3

    #@95
    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    #@97
    aget v4, v4, v1

    #@99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v3

    #@9d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v3

    #@a1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a4
    .line 252
    add-int/lit8 v1, v1, 0x1

    #@a6
    goto :goto_1

    #@a7
    .line 255
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v3

    #@b0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v3

    #@b4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v3

    #@b8
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 292
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 293
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 294
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 295
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 296
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 297
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 298
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    #@20
    if-nez v0, :cond_0

    #@22
    .line 299
    const/4 v0, 0x0

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 304
    :goto_0
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 305
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@30
    .line 306
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@35
    .line 291
    return-void

    #@36
    .line 301
    :cond_0
    const/4 v0, 0x1

    #@37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 302
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    #@3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@3f
    goto :goto_0
.end method
