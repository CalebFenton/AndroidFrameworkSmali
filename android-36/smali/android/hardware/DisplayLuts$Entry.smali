.class public Landroid/hardware/DisplayLuts$Entry;
.super Ljava/lang/Object;
.source "DisplayLuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/DisplayLuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field private static final blacklist LUT_LENGTH_LIMIT:I = 0x186a0


# instance fields
.field private blacklist mBuffer:[F

.field private blacklist mDimension:I

.field private blacklist mSamplingKey:I

.field private blacklist mSize:I


# direct methods
.method public constructor whitelist <init>([FII)V
    .registers 10
    .param p1, "buffer"    # [F
    .param p2, "dimension"    # I
    .param p3, "samplingKey"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-eqz p1, :cond_61

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_61

    .line 86
    array-length v0, p1

    const v2, 0x186a0

    if-ge v0, v2, :cond_59

    .line 90
    const/4 v0, 0x3

    if-eq p2, v1, :cond_1d

    if-ne p2, v0, :cond_15

    goto :goto_1d

    .line 92
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The dimension should be either 1D or 3D!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1d
    :goto_1d
    if-ne p2, v0, :cond_4f

    .line 96
    array-length v1, p1

    if-le v1, v0, :cond_47

    .line 100
    array-length v1, p1

    .line 101
    .local v1, "lengthPerChannel":I
    rem-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_3f

    .line 105
    div-int/2addr v1, v0

    .line 107
    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    .line 108
    .local v2, "size":D
    double-to-int v0, v2

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_37

    .line 109
    double-to-int v0, v2

    iput v0, p0, Landroid/hardware/DisplayLuts$Entry;->mSize:I

    .line 114
    .end local v1    # "lengthPerChannel":I
    .end local v2    # "size":D
    goto :goto_52

    .line 111
    .restart local v1    # "lengthPerChannel":I
    .restart local v2    # "size":D
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot get the cube root of the 3d lut buffer!"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    .end local v2    # "size":D
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The lut buffer of 3dlut should have 3 channels!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    .end local v1    # "lengthPerChannel":I
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The 3d lut size of each dimension should be over 1!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_4f
    array-length v0, p1

    iput v0, p0, Landroid/hardware/DisplayLuts$Entry;->mSize:I

    .line 118
    :goto_52
    iput-object p1, p0, Landroid/hardware/DisplayLuts$Entry;->mBuffer:[F

    .line 119
    iput p2, p0, Landroid/hardware/DisplayLuts$Entry;->mDimension:I

    .line 120
    iput p3, p0, Landroid/hardware/DisplayLuts$Entry;->mSamplingKey:I

    .line 121
    return-void

    .line 87
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The lut length is too big to handle!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The buffer cannot be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist dimensionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "dimension"    # I

    .line 164
    packed-switch p0, :pswitch_data_c

    .line 170
    :pswitch_3
    const-string v0, ""

    return-object v0

    .line 168
    :pswitch_6
    const-string v0, "THREE_DIMENSION"

    return-object v0

    .line 166
    :pswitch_9
    const-string v0, "ONE_DIMENSION"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist samplingKeyToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "key"    # I

    .line 175
    packed-switch p0, :pswitch_data_10

    .line 183
    const-string v0, ""

    return-object v0

    .line 181
    :pswitch_6
    const-string v0, "SAMPLING_KEY_CIE_Y"

    return-object v0

    .line 179
    :pswitch_9
    const-string v0, "SAMPLING_KEY_MAX_RGB"

    return-object v0

    .line 177
    :pswitch_c
    const-string v0, "SAMPLING_KEY_RGB"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist getBuffer()[F
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/hardware/DisplayLuts$Entry;->mBuffer:[F

    return-object v0
.end method

.method public whitelist getDimension()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/hardware/DisplayLuts$Entry;->mDimension:I

    return v0
.end method

.method public whitelist getSamplingKey()I
    .registers 2

    .line 152
    iget v0, p0, Landroid/hardware/DisplayLuts$Entry;->mSamplingKey:I

    return v0
.end method

.method public blacklist getSize()I
    .registers 2

    .line 136
    iget v0, p0, Landroid/hardware/DisplayLuts$Entry;->mSize:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry{dimension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Landroid/hardware/DisplayLuts$Entry;->getDimension()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/DisplayLuts$Entry;->dimensionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size(each dimension)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Landroid/hardware/DisplayLuts$Entry;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplingKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Landroid/hardware/DisplayLuts$Entry;->getSamplingKey()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/DisplayLuts$Entry;->samplingKeyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0
.end method
