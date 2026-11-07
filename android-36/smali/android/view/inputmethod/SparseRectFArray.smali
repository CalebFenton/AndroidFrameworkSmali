.class public final Landroid/view/inputmethod/SparseRectFArray;
.super Ljava/lang/Object;
.source "SparseRectFArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/SparseRectFArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCoordinates:[F

.field private final greylist-max-o mFlagsArray:[I

.field private final greylist-max-o mKeys:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 296
    new-instance v0, Landroid/view/inputmethod/SparseRectFArray$1;

    invoke-direct {v0}, Landroid/view/inputmethod/SparseRectFArray$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/SparseRectFArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    .line 63
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)V
    .registers 6
    .param p1, "builder"    # Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    if-nez v0, :cond_11

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    .line 249
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    .line 250
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    goto :goto_55

    .line 252
    :cond_11
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    .line 253
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    .line 254
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    .line 255
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmKeys(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCoordinates(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[F

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmFlagsArray(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    :goto_55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;Landroid/view/inputmethod/SparseRectFArray-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/SparseRectFArray;-><init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 98
    return v0

    .line 100
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 101
    return v1

    .line 103
    :cond_8
    instance-of v2, p1, Landroid/view/inputmethod/SparseRectFArray;

    if-nez v2, :cond_d

    .line 104
    return v0

    .line 106
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/view/inputmethod/SparseRectFArray;

    .line 108
    .local v2, "that":Landroid/view/inputmethod/SparseRectFArray;
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    iget-object v4, v2, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    iget-object v4, v2, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    iget-object v4, v2, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    .line 109
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_30

    move v0, v1

    goto :goto_31

    :cond_30
    nop

    .line 108
    :goto_31
    return v0
.end method

.method public greylist-max-o get(I)Landroid/graphics/RectF;
    .registers 10
    .param p1, "index"    # I

    .line 262
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 263
    return-object v1

    .line 265
    :cond_6
    if-gez p1, :cond_9

    .line 266
    return-object v1

    .line 268
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 269
    .local v0, "arrayIndex":I
    if-gez v0, :cond_12

    .line 270
    return-object v1

    .line 272
    :cond_12
    mul-int/lit8 v1, v0, 0x4

    .line 273
    .local v1, "baseCoordIndex":I
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    aget v3, v3, v1

    iget-object v4, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v6, v1, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v7, v1, 0x3

    aget v6, v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public greylist-max-o getFlags(II)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "valueIfKeyNotFound"    # I

    .line 280
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    if-nez v0, :cond_5

    .line 281
    return p2

    .line 283
    :cond_5
    if-gez p1, :cond_8

    .line 284
    return p2

    .line 286
    :cond_8
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 287
    .local v0, "arrayIndex":I
    if-gez v0, :cond_11

    .line 288
    return p2

    .line 290
    :cond_11
    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    aget v1, v1, v0

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 81
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    array-length v0, v0

    if-nez v0, :cond_b

    goto :goto_26

    .line 84
    :cond_b
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    array-length v0, v0

    .line 86
    .local v0, "hash":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1e

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    .line 88
    int-to-float v3, v0

    iget-object v4, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    aget v4, v4, v2

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 90
    .end local v2    # "i":I
    :cond_1e
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    .line 92
    return v0

    .line 82
    .end local v0    # "hash":I
    :cond_26
    :goto_26
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 114
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    if-eqz v0, :cond_7d

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    if-eqz v0, :cond_7d

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    if-nez v0, :cond_d

    goto :goto_7d

    .line 117
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SparseRectFArray{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    array-length v2, v2

    if-ge v1, v2, :cond_72

    .line 120
    if-eqz v1, :cond_24

    .line 121
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_24
    mul-int/lit8 v2, v1, 0x4

    .line 124
    .local v2, "baseIndex":I
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v3, ":["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v4, v2, 0x0

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v4, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 129
    const-string v4, "],["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v4, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v4, v2, 0x3

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 133
    const-string v3, "]:flagsArray="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .end local v2    # "baseIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 136
    .end local v1    # "i":I
    :cond_72
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 115
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_7d
    :goto_7d
    const-string v0, "SparseRectFArray{}"

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 74
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 75
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 76
    return-void
.end method
