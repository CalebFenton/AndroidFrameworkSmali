.class public final Landroid/hardware/camera2/params/RggbChannelVector;
.super Ljava/lang/Object;
.source "RggbChannelVector.java"


# static fields
.field public static final BLUE:I = 0x3

.field public static final COUNT:I = 0x4

.field public static final GREEN_EVEN:I = 0x1

.field public static final GREEN_ODD:I = 0x2

.field public static final RED:I


# instance fields
.field private final mBlue:F

.field private final mGreenEven:F

.field private final mGreenOdd:F

.field private final mRed:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "greenEven"    # F
    .param p3, "greenOdd"    # F
    .param p4, "blue"    # F

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    const-string/jumbo v0, "red"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    #@c
    .line 61
    const-string/jumbo v0, "greenEven"

    #@f
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    #@15
    .line 62
    const-string/jumbo v0, "greenOdd"

    #@18
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    #@1e
    .line 63
    const-string/jumbo v0, "blue"

    #@21
    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    #@27
    .line 59
    return-void
.end method

.method private toShortString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 215
    const-string/jumbo v0, "{R:%f, G_even:%f, G_odd:%f, B:%f}"

    #@3
    const/4 v1, 0x4

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 216
    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    #@8
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    #@11
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    #@1a
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x2

    #@1f
    aput-object v2, v1, v3

    #@21
    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    #@23
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@26
    move-result-object v2

    #@27
    const/4 v3, 0x3

    #@28
    aput-object v2, v1, v3

    #@2a
    .line 215
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method


# virtual methods
.method public copyTo([FI)V
    .locals 2
    .param p1, "destination"    # [F
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 148
    const-string/jumbo v0, "destination must not be null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 149
    array-length v0, p1

    #@7
    sub-int/2addr v0, p2

    #@8
    const/4 v1, 0x4

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 150
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@d
    const-string/jumbo v1, "destination too small to fit elements"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 153
    :cond_0
    add-int/lit8 v0, p2, 0x0

    #@16
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    #@18
    aput v1, p1, v0

    #@1a
    .line 154
    add-int/lit8 v0, p2, 0x1

    #@1c
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    #@1e
    aput v1, p1, v0

    #@20
    .line 155
    add-int/lit8 v0, p2, 0x2

    #@22
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    #@24
    aput v1, p1, v0

    #@26
    .line 156
    add-int/lit8 v0, p2, 0x3

    #@28
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    #@2a
    aput v1, p1, v0

    #@2c
    .line 147
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 168
    if-nez p1, :cond_0

    #@4
    .line 169
    return v2

    #@5
    .line 170
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 171
    return v1

    #@8
    .line 172
    :cond_1
    instance-of v3, p1, Landroid/hardware/camera2/params/RggbChannelVector;

    #@a
    if-eqz v3, :cond_4

    #@c
    move-object v0, p1

    #@d
    .line 173
    check-cast v0, Landroid/hardware/camera2/params/RggbChannelVector;

    #@f
    .line 174
    .local v0, "other":Landroid/hardware/camera2/params/RggbChannelVector;
    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    #@11
    iget v4, v0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    #@13
    cmpl-float v3, v3, v4

    #@15
    if-nez v3, :cond_3

    #@17
    .line 175
    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    #@19
    iget v4, v0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    #@1b
    cmpl-float v3, v3, v4

    #@1d
    if-nez v3, :cond_3

    #@1f
    .line 176
    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    #@21
    iget v4, v0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    #@23
    cmpl-float v3, v3, v4

    #@25
    if-nez v3, :cond_3

    #@27
    .line 177
    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    #@29
    iget v4, v0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    #@2b
    cmpl-float v3, v3, v4

    #@2d
    if-nez v3, :cond_2

    #@2f
    .line 174
    :goto_0
    return v1

    #@30
    :cond_2
    move v1, v2

    #@31
    .line 177
    goto :goto_0

    #@32
    :cond_3
    move v1, v2

    #@33
    .line 174
    goto :goto_0

    #@34
    .line 179
    .end local v0    # "other":Landroid/hardware/camera2/params/RggbChannelVector;
    :cond_4
    return v2
.end method

.method public getBlue()F
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    #@2
    return v0
.end method

.method public getComponent(I)F
    .locals 3
    .param p1, "colorChannel"    # I

    #@0
    .prologue
    .line 114
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x4

    #@3
    if-lt p1, v0, :cond_1

    #@5
    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Color channel out of range"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 118
    :cond_1
    packed-switch p1, :pswitch_data_0

    #@11
    .line 128
    new-instance v0, Ljava/lang/AssertionError;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Unhandled case "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2a
    throw v0

    #@2b
    .line 120
    :pswitch_0
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    #@2d
    return v0

    #@2e
    .line 122
    :pswitch_1
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    #@30
    return v0

    #@31
    .line 124
    :pswitch_2
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    #@33
    return v0

    #@34
    .line 126
    :pswitch_3
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    #@36
    return v0

    #@37
    .line 118
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getGreenEven()F
    .locals 1

    #@0
    .prologue
    .line 81
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    #@2
    return v0
.end method

.method public getGreenOdd()F
    .locals 1

    #@0
    .prologue
    .line 90
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    #@2
    return v0
.end method

.method public final getRed()F
    .locals 1

    #@0
    .prologue
    .line 72
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 187
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@5
    move-result v0

    #@6
    .line 188
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    #@8
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@b
    move-result v1

    #@c
    .line 187
    xor-int/2addr v0, v1

    #@d
    .line 189
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    #@f
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@12
    move-result v1

    #@13
    .line 187
    xor-int/2addr v0, v1

    #@14
    .line 190
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    #@16
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@19
    move-result v1

    #@1a
    .line 187
    xor-int/2addr v0, v1

    #@1b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 203
    const-string/jumbo v0, "RggbChannelVector%s"

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-direct {p0}, Landroid/hardware/camera2/params/RggbChannelVector;->toShortString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method
