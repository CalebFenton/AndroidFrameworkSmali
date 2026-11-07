.class public final Landroid/hardware/camera2/params/TonemapCurve;
.super Ljava/lang/Object;
.source "TonemapCurve.java"


# static fields
.field public static final whitelist CHANNEL_BLUE:I = 0x2

.field public static final whitelist CHANNEL_GREEN:I = 0x1

.field public static final whitelist CHANNEL_RED:I = 0x0

.field public static final whitelist LEVEL_BLACK:F = 0.0f

.field public static final whitelist LEVEL_WHITE:F = 1.0f

.field private static final greylist-max-o MIN_CURVE_LENGTH:I = 0x4

.field private static final greylist-max-o OFFSET_POINT_IN:I = 0x0

.field private static final greylist-max-o OFFSET_POINT_OUT:I = 0x1

.field public static final whitelist POINT_SIZE:I = 0x2

.field private static final greylist-max-o TONEMAP_MIN_CURVE_POINTS:I = 0x2


# instance fields
.field private final greylist-max-o mBlue:[F

.field private final greylist-max-o mGreen:[F

.field private greylist-max-o mHashCalculated:Z

.field private greylist-max-o mHashCode:I

.field private final greylist-max-o mRed:[F


# direct methods
.method public constructor whitelist <init>([F[F[F)V
    .registers 9
    .param p1, "red"    # [F
    .param p2, "green"    # [F
    .param p3, "blue"    # [F

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    .line 108
    const-string v0, "red must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "green must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "blue must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/4 v0, 0x2

    const-string v1, "red"

    invoke-static {p1, v0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    .line 113
    const-string v2, "green"

    invoke-static {p2, v0, v2}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    .line 114
    const-string v3, "blue"

    invoke-static {p3, v0, v3}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    .line 116
    const/4 v0, 0x4

    invoke-static {p1, v0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    .line 117
    invoke-static {p2, v0, v2}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    .line 118
    invoke-static {p3, v0, v3}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v4, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 121
    invoke-static {p2, v0, v4, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 122
    invoke-static {p3, v0, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 124
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    .line 125
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    .line 126
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    .line 127
    return-void
.end method

.method private static greylist-max-o checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V
    .registers 6
    .param p0, "array"    # [F
    .param p1, "divisible"    # I
    .param p2, "arrayName"    # Ljava/lang/String;

    .line 131
    array-length v0, p0

    rem-int/2addr v0, p1

    if-nez v0, :cond_5

    .line 135
    return-void

    .line 132
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size must be divisible by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V
    .registers 6
    .param p0, "array"    # [F
    .param p1, "minLength"    # I
    .param p2, "arrayName"    # Ljava/lang/String;

    .line 152
    array-length v0, p0

    if-lt v0, p1, :cond_4

    .line 156
    return-void

    .line 153
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkArgumentColorChannel(I)I
    .registers 3
    .param p0, "colorChannel"    # I

    .line 138
    packed-switch p0, :pswitch_data_e

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colorChannel out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :pswitch_b
    nop

    .line 147
    return p0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private greylist-max-o curveToString(I)Ljava/lang/String;
    .registers 8
    .param p1, "colorChannel"    # I

    .line 309
    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v1

    .line 312
    .local v1, "curve":[F
    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 313
    .local v2, "pointCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_13
    if-ge v3, v2, :cond_35

    .line 314
    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    aget v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 316
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    add-int/lit8 v5, v4, 0x1

    aget v5, v1, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 318
    const-string v5, "), "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_13

    .line 321
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 322
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o getCurve(I)[F
    .registers 4
    .param p1, "colorChannel"    # I

    .line 327
    packed-switch p1, :pswitch_data_14

    .line 335
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "colorChannel out of range"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 333
    :pswitch_b
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    return-object v0

    .line 331
    :pswitch_e
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    return-object v0

    .line 329
    :pswitch_11
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public whitelist copyColorCurve(I[FI)V
    .registers 7
    .param p1, "colorChannel"    # I
    .param p2, "destination"    # [F
    .param p3, "offset"    # I

    .line 233
    const-string v0, "offset must not be negative"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 234
    const-string v0, "destination must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    array-length v0, p2

    add-int/2addr v0, p3

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_1e

    .line 240
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v0

    .line 241
    .local v0, "curve":[F
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    return-void

    .line 237
    .end local v0    # "curve":[F
    :cond_1e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destination too small to fit elements"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 254
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 255
    return v0

    .line 257
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 258
    return v1

    .line 260
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/TonemapCurve;

    if-eqz v2, :cond_31

    .line 261
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/TonemapCurve;

    .line 262
    .local v2, "other":Landroid/hardware/camera2/params/TonemapCurve;
    iget-object v3, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    iget-object v4, v2, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    iget-object v4, v2, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    .line 263
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    iget-object v4, v2, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    .line 264
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2f

    move v0, v1

    goto :goto_30

    :cond_2f
    nop

    .line 262
    :goto_30
    return v0

    .line 266
    .end local v2    # "other":Landroid/hardware/camera2/params/TonemapCurve;
    :cond_31
    return v0
.end method

.method public whitelist getPoint(II)Landroid/graphics/PointF;
    .registers 7
    .param p1, "colorChannel"    # I
    .param p2, "index"    # I

    .line 191
    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    .line 192
    if-ltz p2, :cond_21

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    move-result v0

    if-ge p2, v0, :cond_21

    .line 196
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v0

    .line 198
    .local v0, "curve":[F
    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v1, v0, v1

    .line 199
    .local v1, "pIn":F
    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v0, v2

    .line 201
    .local v2, "pOut":F
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3

    .line 193
    .end local v0    # "curve":[F
    .end local v1    # "pIn":F
    .end local v2    # "pOut":F
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPointCount(I)I
    .registers 3
    .param p1, "colorChannel"    # I

    .line 167
    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    .line 169
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v0

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 274
    iget-boolean v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    if-eqz v0, :cond_7

    .line 276
    iget v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    return v0

    .line 279
    :cond_7
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    iget-object v1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    iget-object v2, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    filled-new-array {v0, v1, v2}, [[F

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    .line 282
    iget v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TonemapCurve{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, ", G:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, ", B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
