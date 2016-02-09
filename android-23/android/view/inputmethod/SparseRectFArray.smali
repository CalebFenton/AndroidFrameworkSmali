.class public final Landroid/view/inputmethod/SparseRectFArray;
.super Ljava/lang/Object;
.source "SparseRectFArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;,
        Landroid/view/inputmethod/SparseRectFArray$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/SparseRectFArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCoordinates:[F

.field private final mFlagsArray:[I

.field private final mKeys:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 296
    new-instance v0, Landroid/view/inputmethod/SparseRectFArray$1;

    #@2
    invoke-direct {v0}, Landroid/view/inputmethod/SparseRectFArray$1;-><init>()V

    #@5
    .line 295
    sput-object v0, Landroid/view/inputmethod/SparseRectFArray;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@9
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@f
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    #@15
    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)V
    .locals 4
    .param p1, "builder"    # Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 246
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-get1(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 247
    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@d
    .line 248
    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@f
    .line 249
    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    #@11
    .line 245
    :goto_0
    return-void

    #@12
    .line 251
    :cond_0
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-get1(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    #@15
    move-result v0

    #@16
    new-array v0, v0, [I

    #@18
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@1a
    .line 252
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-get1(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    #@1d
    move-result v0

    #@1e
    mul-int/lit8 v0, v0, 0x4

    #@20
    new-array v0, v0, [F

    #@22
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@24
    .line 253
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-get1(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    #@27
    move-result v0

    #@28
    new-array v0, v0, [I

    #@2a
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    #@2c
    .line 254
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-get3(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I

    #@2f
    move-result-object v0

    #@30
    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@32
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-get1(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    #@35
    move-result v2

    #@36
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@39
    .line 255
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-get0(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[F

    #@3c
    move-result-object v0

    #@3d
    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@3f
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-get1(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    #@42
    move-result v2

    #@43
    mul-int/lit8 v2, v2, 0x4

    #@45
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@48
    .line 256
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-get2(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I

    #@4b
    move-result-object v0

    #@4c
    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    #@4e
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-get1(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    #@51
    move-result v2

    #@52
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@55
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;Landroid/view/inputmethod/SparseRectFArray;)V
    .locals 0
    .param p1, "builder"    # Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/inputmethod/SparseRectFArray;-><init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 309
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 96
    if-nez p1, :cond_0

    #@3
    .line 97
    return v1

    #@4
    .line 99
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    .line 100
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 102
    :cond_1
    instance-of v2, p1, Landroid/view/inputmethod/SparseRectFArray;

    #@a
    if-nez v2, :cond_2

    #@c
    .line 103
    return v1

    #@d
    :cond_2
    move-object v0, p1

    #@e
    .line 105
    check-cast v0, Landroid/view/inputmethod/SparseRectFArray;

    #@10
    .line 107
    .local v0, "that":Landroid/view/inputmethod/SparseRectFArray;
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@12
    iget-object v3, v0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@14
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_3

    #@1a
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@1c
    iget-object v3, v0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@1e
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_3

    #@24
    .line 108
    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    #@26
    iget-object v2, v0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    #@28
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@2b
    move-result v1

    #@2c
    .line 107
    :cond_3
    return v1
.end method

.method public get(I)Landroid/graphics/RectF;
    .locals 8
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 261
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 262
    return-object v3

    #@6
    .line 264
    :cond_0
    if-gez p1, :cond_1

    #@8
    .line 265
    return-object v3

    #@9
    .line 267
    :cond_1
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@b
    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([II)I

    #@e
    move-result v0

    #@f
    .line 268
    .local v0, "arrayIndex":I
    if-gez v0, :cond_2

    #@11
    .line 269
    return-object v3

    #@12
    .line 271
    :cond_2
    mul-int/lit8 v1, v0, 0x4

    #@14
    .line 272
    .local v1, "baseCoordIndex":I
    new-instance v2, Landroid/graphics/RectF;

    #@16
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@18
    aget v3, v3, v1

    #@1a
    .line 273
    iget-object v4, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@1c
    add-int/lit8 v5, v1, 0x1

    #@1e
    aget v4, v4, v5

    #@20
    .line 274
    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@22
    add-int/lit8 v6, v1, 0x2

    #@24
    aget v5, v5, v6

    #@26
    .line 275
    iget-object v6, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@28
    add-int/lit8 v7, v1, 0x3

    #@2a
    aget v6, v6, v7

    #@2c
    .line 272
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@2f
    return-object v2
.end method

.method public getFlags(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "valueIfKeyNotFound"    # I

    #@0
    .prologue
    .line 279
    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 280
    return p2

    #@5
    .line 282
    :cond_0
    if-gez p1, :cond_1

    #@7
    .line 283
    return p2

    #@8
    .line 285
    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@a
    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    #@d
    move-result v0

    #@e
    .line 286
    .local v0, "arrayIndex":I
    if-gez v0, :cond_2

    #@10
    .line 287
    return p2

    #@11
    .line 289
    :cond_2
    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    #@13
    aget v1, v1, v0

    #@15
    return v1
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 80
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@7
    array-length v2, v2

    #@8
    if-nez v2, :cond_1

    #@a
    .line 81
    :cond_0
    return v4

    #@b
    .line 83
    :cond_1
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@d
    array-length v0, v2

    #@e
    .line 85
    .local v0, "hash":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    #@10
    if-ge v1, v2, :cond_2

    #@12
    .line 86
    mul-int/lit8 v0, v0, 0x1f

    #@14
    .line 87
    int-to-float v2, v0

    #@15
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@17
    aget v3, v3, v1

    #@19
    add-float/2addr v2, v3

    #@1a
    float-to-int v0, v2

    #@1b
    .line 85
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 89
    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    #@20
    .line 90
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    #@22
    aget v2, v2, v4

    #@24
    add-int/2addr v0, v2

    #@25
    .line 91
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 113
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@6
    if-nez v3, :cond_1

    #@8
    .line 114
    :cond_0
    const-string/jumbo v3, "SparseRectFArray{}"

    #@b
    return-object v3

    #@c
    .line 113
    :cond_1
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 117
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "SparseRectFArray{"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 118
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@1e
    array-length v3, v3

    #@1f
    if-ge v1, v3, :cond_3

    #@21
    .line 119
    if-eqz v1, :cond_2

    #@23
    .line 120
    const-string/jumbo v3, ", "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 122
    :cond_2
    mul-int/lit8 v0, v1, 0x4

    #@2b
    .line 123
    .local v0, "baseIndex":I
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@2d
    aget v3, v3, v1

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    .line 124
    const-string/jumbo v3, ":["

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 125
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@3a
    add-int/lit8 v4, v0, 0x0

    #@3c
    aget v3, v3, v4

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@41
    .line 126
    const-string/jumbo v3, ","

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 127
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@49
    add-int/lit8 v4, v0, 0x1

    #@4b
    aget v3, v3, v4

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@50
    .line 128
    const-string/jumbo v3, "],["

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 129
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@58
    add-int/lit8 v4, v0, 0x2

    #@5a
    aget v3, v3, v4

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@5f
    .line 130
    const-string/jumbo v3, ","

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    .line 131
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@67
    add-int/lit8 v4, v0, 0x3

    #@69
    aget v3, v3, v4

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@6e
    .line 132
    const-string/jumbo v3, "]:flagsArray="

    #@71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 133
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    #@76
    aget v3, v3, v1

    #@78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    .line 118
    add-int/lit8 v1, v1, 0x1

    #@7d
    goto :goto_0

    #@7e
    .line 135
    .end local v0    # "baseIndex":I
    :cond_3
    const-string/jumbo v3, "}"

    #@81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v3

    #@88
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@5
    .line 73
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@a
    .line 74
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@f
    .line 71
    return-void
.end method
