.class public final Landroid/hardware/camera2/params/RggbChannelVector;
.super Ljava/lang/Object;
.source "RggbChannelVector.java"


# static fields
.field public static final whitelist BLUE:I = 0x3

.field public static final whitelist COUNT:I = 0x4

.field public static final whitelist GREEN_EVEN:I = 0x1

.field public static final whitelist GREEN_ODD:I = 0x2

.field public static final whitelist RED:I


# instance fields
.field private final greylist-max-o mBlue:F

.field private final greylist-max-o mGreenEven:F

.field private final greylist-max-o mGreenOdd:F

.field private final greylist-max-o mRed:F


# direct methods
.method public constructor whitelist <init>(FFFF)V
    .registers 6
    .param p1, "red"    # F
    .param p2, "greenEven"    # F
    .param p3, "greenOdd"    # F
    .param p4, "blue"    # F

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "red"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    .line 61
    const-string v0, "greenEven"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    .line 62
    const-string v0, "greenOdd"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    .line 63
    const-string v0, "blue"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    .line 64
    return-void
.end method

.method private greylist-max-o toShortString()Ljava/lang/String;
    .registers 5

    .line 215
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    .line 216
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 215
    const-string v1, "{R:%f, G_even:%f, G_odd:%f, B:%f}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist copyTo([FI)V
    .registers 5
    .param p1, "destination"    # [F
    .param p2, "offset"    # I

    .line 148
    const-string v0, "destination must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_23

    .line 153
    add-int/lit8 v0, p2, 0x0

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    aput v1, p1, v0

    .line 154
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    aput v1, p1, v0

    .line 155
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    aput v1, p1, v0

    .line 156
    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    aput v1, p1, v0

    .line 157
    return-void

    .line 150
    :cond_23
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destination too small to fit elements"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 168
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 169
    return v0

    .line 170
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 171
    return v1

    .line 172
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/RggbChannelVector;

    if-eqz v2, :cond_31

    .line 173
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/RggbChannelVector;

    .line 174
    .local v2, "other":Landroid/hardware/camera2/params/RggbChannelVector;
    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    iget v4, v2, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_30

    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    iget v4, v2, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_30

    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    iget v4, v2, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_30

    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    iget v4, v2, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_30

    move v0, v1

    :cond_30
    return v0

    .line 179
    .end local v2    # "other":Landroid/hardware/camera2/params/RggbChannelVector;
    :cond_31
    return v0
.end method

.method public whitelist getBlue()F
    .registers 2

    .line 99
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    return v0
.end method

.method public whitelist getComponent(I)F
    .registers 5
    .param p1, "colorChannel"    # I

    .line 114
    if-ltz p1, :cond_2d

    const/4 v0, 0x4

    if-ge p1, v0, :cond_2d

    .line 118
    packed-switch p1, :pswitch_data_36

    .line 128
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 126
    :pswitch_21
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    return v0

    .line 124
    :pswitch_24
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    return v0

    .line 122
    :pswitch_27
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    return v0

    .line 120
    :pswitch_2a
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    return v0

    .line 115
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Color channel out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method public whitelist getGreenEven()F
    .registers 2

    .line 81
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    return v0
.end method

.method public whitelist getGreenOdd()F
    .registers 2

    .line 90
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    return v0
.end method

.method public final whitelist getRed()F
    .registers 2

    .line 72
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 187
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    .line 188
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    .line 189
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    .line 190
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 187
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 203
    invoke-direct {p0}, Landroid/hardware/camera2/params/RggbChannelVector;->toShortString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "RggbChannelVector%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
