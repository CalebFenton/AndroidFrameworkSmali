.class public final Landroid/hardware/display/AmbientBrightnessDayStats;
.super Ljava/lang/Object;
.source "AmbientBrightnessDayStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mBucketBoundaries:[F

.field private final greylist-max-o mLocalDate:Ljava/time/LocalDate;

.field private final greylist-max-o mStats:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 124
    new-instance v0, Landroid/hardware/display/AmbientBrightnessDayStats$1;

    invoke-direct {v0}, Landroid/hardware/display/AmbientBrightnessDayStats$1;-><init>()V

    sput-object v0, Landroid/hardware/display/AmbientBrightnessDayStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    .line 122
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/AmbientBrightnessDayStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/time/LocalDate;[F)V
    .registers 4
    .param p1, "localDate"    # Ljava/time/LocalDate;
    .param p2, "bucketBoundaries"    # [F

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Ljava/time/LocalDate;[F[F)V

    .line 60
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/time/LocalDate;[F[F)V
    .registers 8
    .param p1, "localDate"    # Ljava/time/LocalDate;
    .param p2, "bucketBoundaries"    # [F
    .param p3, "stats"    # [F

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "bucketBoundaries"

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {p2, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 76
    array-length v0, p2

    const/4 v3, 0x1

    if-lt v0, v3, :cond_37

    .line 79
    invoke-static {p2}, Landroid/hardware/display/AmbientBrightnessDayStats;->checkSorted([F)V

    .line 80
    if-nez p3, :cond_1f

    .line 81
    array-length v0, p2

    new-array p3, v0, [F

    goto :goto_28

    .line 83
    :cond_1f
    const-string v0, "stats"

    invoke-static {p3, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 84
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2f

    .line 89
    :goto_28
    iput-object p1, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    .line 90
    iput-object p2, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    .line 91
    iput-object p3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    .line 92
    return-void

    .line 85
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bucket boundaries and stats must be of same size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bucket boundaries must contain at least 1 value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkSorted([F)V
    .registers 6
    .param p0, "values"    # [F

    .line 231
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    .line 232
    return-void

    .line 234
    :cond_5
    const/4 v0, 0x0

    aget v2, p0, v0

    .line 235
    .local v2, "prevValue":F
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_9
    array-length v4, p0

    if-ge v3, v4, :cond_1d

    .line 236
    aget v4, p0, v3

    cmpg-float v4, v2, v4

    if-gez v4, :cond_14

    move v4, v1

    goto :goto_15

    :cond_14
    move v4, v0

    :goto_15
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 237
    aget v2, p0, v3

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 239
    .end local v3    # "i":I
    :cond_1d
    return-void
.end method

.method private greylist-max-o getBucketIndex(F)I
    .registers 7
    .param p1, "ambientBrightness"    # F

    .line 211
    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_46

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_46

    .line 214
    :cond_10
    const/4 v0, 0x0

    .line 215
    .local v0, "low":I
    iget-object v1, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 216
    .local v1, "high":I
    :goto_16
    if-ge v0, v1, :cond_45

    .line 217
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 218
    .local v2, "mid":I
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    aget v3, v3, v2

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_2f

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2f

    .line 220
    return v2

    .line 221
    :cond_2f
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    aget v3, v3, v2

    cmpg-float v3, v3, p1

    if-gez v3, :cond_3a

    .line 222
    add-int/lit8 v0, v2, 0x1

    goto :goto_44

    .line 223
    :cond_3a
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    aget v3, v3, v2

    cmpl-float v3, v3, p1

    if-lez v3, :cond_44

    .line 224
    add-int/lit8 v1, v2, -0x1

    .line 226
    .end local v2    # "mid":I
    :cond_44
    :goto_44
    goto :goto_16

    .line 227
    :cond_45
    return v0

    .line 212
    .end local v0    # "low":I
    .end local v1    # "high":I
    :cond_46
    :goto_46
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 141
    return v0

    .line 143
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 144
    return v1

    .line 146
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 147
    return v1

    .line 149
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 150
    .local v2, "other":Landroid/hardware/display/AmbientBrightnessDayStats;
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    iget-object v4, v2, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    iget-object v4, v2, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    iget-object v4, v2, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    .line 151
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    .line 150
    :goto_36
    return v0
.end method

.method public whitelist getBucketBoundaries()[F
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    return-object v0
.end method

.method public whitelist getLocalDate()Ljava/time/LocalDate;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    return-object v0
.end method

.method public whitelist getStats()[F
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 156
    const/16 v0, 0x1f

    .line 157
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 158
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    invoke-virtual {v3}, Ljava/time/LocalDate;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 159
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([F)I

    move-result v3

    add-int/2addr v1, v3

    .line 160
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([F)I

    move-result v3

    add-int/2addr v2, v3

    .line 161
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public greylist-max-o log(FF)V
    .registers 6
    .param p1, "ambientBrightness"    # F
    .param p2, "durationSec"    # F

    .line 204
    invoke-direct {p0, p1}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketIndex(F)I

    move-result v0

    .line 205
    .local v0, "bucketIndex":I
    if-ltz v0, :cond_d

    .line 206
    iget-object v1, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    aget v2, v1, v0

    add-float/2addr v2, p2

    aput v2, v1, v0

    .line 208
    :cond_d
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v0, "bucketBoundariesString":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v1, "statsString":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    array-length v3, v3

    if-ge v2, v3, :cond_2b

    .line 170
    if-eqz v2, :cond_1a

    .line 171
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_1a
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 175
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 177
    .end local v2    # "i":I
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 179
    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "} "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 190
    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 192
    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 193
    return-void
.end method
