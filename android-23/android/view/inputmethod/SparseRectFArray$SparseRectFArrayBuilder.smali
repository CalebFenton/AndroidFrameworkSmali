.class public final Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
.super Ljava/lang/Object;
.source "SparseRectFArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/SparseRectFArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SparseRectFArrayBuilder"
.end annotation


# static fields
.field private static INITIAL_SIZE:I


# instance fields
.field private mCoordinates:[F

.field private mCount:I

.field private mFlagsArray:[I

.field private mKeys:[I


# direct methods
.method static synthetic -get0(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[F
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 222
    const/16 v0, 0x10

    #@2
    sput v0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->INITIAL_SIZE:I

    #@4
    .line 143
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 218
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@7
    .line 219
    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    #@9
    .line 220
    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    #@b
    .line 221
    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    #@d
    .line 143
    return-void
.end method

.method private checkIndex(I)V
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 149
    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 150
    return-void

    #@5
    .line 152
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    #@7
    iget v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@9
    add-int/lit8 v1, v1, -0x1

    #@b
    aget v0, v0, v1

    #@d
    if-lt v0, p1, :cond_1

    #@f
    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "key must be greater than all existing keys."

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 148
    :cond_1
    return-void
.end method

.method private ensureBufferSize()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 161
    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    #@3
    if-nez v5, :cond_0

    #@5
    .line 162
    sget v5, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->INITIAL_SIZE:I

    #@7
    new-array v5, v5, [I

    #@9
    iput-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    #@b
    .line 164
    :cond_0
    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    #@d
    if-nez v5, :cond_1

    #@f
    .line 165
    sget v5, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->INITIAL_SIZE:I

    #@11
    mul-int/lit8 v5, v5, 0x4

    #@13
    new-array v5, v5, [F

    #@15
    iput-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    #@17
    .line 167
    :cond_1
    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    #@19
    if-nez v5, :cond_2

    #@1b
    .line 168
    sget v5, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->INITIAL_SIZE:I

    #@1d
    new-array v5, v5, [I

    #@1f
    iput-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    #@21
    .line 170
    :cond_2
    iget v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@23
    add-int/lit8 v4, v5, 0x1

    #@25
    .line 171
    .local v4, "requiredIndexArraySize":I
    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    #@27
    array-length v5, v5

    #@28
    if-gt v5, v4, :cond_3

    #@2a
    .line 172
    mul-int/lit8 v5, v4, 0x2

    #@2c
    new-array v1, v5, [I

    #@2e
    .line 173
    .local v1, "newArray":[I
    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    #@30
    iget v6, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@32
    invoke-static {v5, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy([II[III)V

    #@35
    .line 174
    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    #@37
    .line 176
    .end local v1    # "newArray":[I
    :cond_3
    iget v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@39
    add-int/lit8 v5, v5, 0x1

    #@3b
    mul-int/lit8 v2, v5, 0x4

    #@3d
    .line 177
    .local v2, "requiredCoordinatesArraySize":I
    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    #@3f
    array-length v5, v5

    #@40
    if-gt v5, v2, :cond_4

    #@42
    .line 178
    mul-int/lit8 v5, v2, 0x2

    #@44
    new-array v0, v5, [F

    #@46
    .line 179
    .local v0, "newArray":[F
    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    #@48
    iget v6, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@4a
    mul-int/lit8 v6, v6, 0x4

    #@4c
    invoke-static {v5, v7, v0, v7, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@4f
    .line 180
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    #@51
    .line 182
    .end local v0    # "newArray":[F
    :cond_4
    move v3, v4

    #@52
    .line 183
    .local v3, "requiredFlagsArraySize":I
    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    #@54
    array-length v5, v5

    #@55
    if-gt v5, v3, :cond_5

    #@57
    .line 184
    mul-int/lit8 v5, v3, 0x2

    #@59
    new-array v1, v5, [I

    #@5b
    .line 185
    .restart local v1    # "newArray":[I
    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    #@5d
    iget v6, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@5f
    invoke-static {v5, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy([II[III)V

    #@62
    .line 186
    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    #@64
    .line 160
    .end local v1    # "newArray":[I
    :cond_5
    return-void
.end method


# virtual methods
.method public append(IFFFFI)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
    .locals 4
    .param p1, "key"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "flags"    # I

    #@0
    .prologue
    .line 205
    invoke-direct {p0, p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->checkIndex(I)V

    #@3
    .line 206
    invoke-direct {p0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->ensureBufferSize()V

    #@6
    .line 207
    iget v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@8
    mul-int/lit8 v0, v2, 0x4

    #@a
    .line 208
    .local v0, "baseCoordinatesIndex":I
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    #@c
    add-int/lit8 v3, v0, 0x0

    #@e
    aput p2, v2, v3

    #@10
    .line 209
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    #@12
    add-int/lit8 v3, v0, 0x1

    #@14
    aput p3, v2, v3

    #@16
    .line 210
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    #@18
    add-int/lit8 v3, v0, 0x2

    #@1a
    aput p4, v2, v3

    #@1c
    .line 211
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    #@1e
    add-int/lit8 v3, v0, 0x3

    #@20
    aput p5, v2, v3

    #@22
    .line 212
    iget v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@24
    .line 213
    .local v1, "flagsIndex":I
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    #@26
    aput p6, v2, v1

    #@28
    .line 214
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    #@2a
    iget v3, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@2c
    aput p1, v2, v3

    #@2e
    .line 215
    iget v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@30
    add-int/lit8 v2, v2, 0x1

    #@32
    iput v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@34
    .line 216
    return-object p0
.end method

.method public build()Landroid/view/inputmethod/SparseRectFArray;
    .locals 2

    #@0
    .prologue
    .line 232
    new-instance v0, Landroid/view/inputmethod/SparseRectFArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/SparseRectFArray;-><init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;Landroid/view/inputmethod/SparseRectFArray;)V

    #@6
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 225
    iget v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@3
    if-gtz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 236
    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@4
    if-nez v0, :cond_0

    #@6
    .line 237
    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    #@8
    .line 238
    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    #@a
    .line 239
    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    #@c
    .line 241
    :cond_0
    iput v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    #@e
    .line 235
    return-void
.end method
