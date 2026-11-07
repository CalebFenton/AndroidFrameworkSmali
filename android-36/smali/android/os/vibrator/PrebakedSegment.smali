.class public final Landroid/os/vibrator/PrebakedSegment;
.super Landroid/os/vibrator/VibrationEffectSegment;
.source "PrebakedSegment.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/PrebakedSegment;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_SHOULD_FALLBACK:Z = true

.field public static final blacklist DEFAULT_STRENGTH:I = 0x1


# instance fields
.field private final blacklist mEffectId:I

.field private final blacklist mEffectStrength:I

.field private final blacklist mFallback:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 269
    new-instance v0, Landroid/os/vibrator/PrebakedSegment$1;

    invoke-direct {v0}, Landroid/os/vibrator/PrebakedSegment$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/PrebakedSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IZI)V
    .registers 4
    .param p1, "effectId"    # I
    .param p2, "shouldFallback"    # Z
    .param p3, "effectStrength"    # I

    .line 66
    invoke-direct {p0}, Landroid/os/vibrator/VibrationEffectSegment;-><init>()V

    .line 67
    iput p1, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    .line 68
    iput-boolean p2, p0, Landroid/os/vibrator/PrebakedSegment;->mFallback:Z

    .line 69
    iput p3, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectStrength:I

    .line 70
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Landroid/os/vibrator/VibrationEffectSegment;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Landroid/os/vibrator/PrebakedSegment;->mFallback:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectStrength:I

    .line 63
    return-void
.end method

.method private blacklist estimateFromPrimitiveDuration(Landroid/os/VibratorInfo;I)J
    .registers 6
    .param p1, "vibratorInfo"    # Landroid/os/VibratorInfo;
    .param p2, "primitiveId"    # I

    .line 111
    invoke-virtual {p1, p2}, Landroid/os/VibratorInfo;->getPrimitiveDuration(I)I

    move-result v0

    .line 113
    .local v0, "duration":I
    if-lez v0, :cond_8

    int-to-long v1, v0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->getDuration()J

    move-result-wide v1

    :goto_c
    return-wide v1
.end method

.method private static blacklist isValidEffectStrength(I)Z
    .registers 2
    .param p0, "strength"    # I

    .line 189
    packed-switch p0, :pswitch_data_8

    .line 193
    const/4 v0, 0x0

    goto :goto_6

    .line 192
    :pswitch_5
    const/4 v0, 0x1

    .line 189
    :goto_6
    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public blacklist applyEffectStrength(I)Landroid/os/vibrator/PrebakedSegment;
    .registers 5
    .param p1, "effectStrength"    # I

    .line 182
    iget v0, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectStrength:I

    if-eq p1, v0, :cond_14

    invoke-static {p1}, Landroid/os/vibrator/PrebakedSegment;->isValidEffectStrength(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 183
    new-instance v0, Landroid/os/vibrator/PrebakedSegment;

    iget v1, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    iget-boolean v2, p0, Landroid/os/vibrator/PrebakedSegment;->mFallback:Z

    invoke-direct {v0, v1, v2, p1}, Landroid/os/vibrator/PrebakedSegment;-><init>(IZI)V

    return-object v0

    .line 185
    :cond_14
    return-object p0
.end method

.method public bridge synthetic blacklist applyEffectStrength(I)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Landroid/os/vibrator/PrebakedSegment;->applyEffectStrength(I)Landroid/os/vibrator/PrebakedSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .registers 5
    .param p1, "vibratorInfo"    # Landroid/os/VibratorInfo;

    .line 119
    iget v0, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    invoke-virtual {p1, v0}, Landroid/os/VibratorInfo;->isEffectSupported(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 120
    return v1

    .line 122
    :cond_a
    iget-boolean v0, p0, Landroid/os/vibrator/PrebakedSegment;->mFallback:Z

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 125
    return v2

    .line 129
    :cond_10
    iget v0, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    packed-switch v0, :pswitch_data_1a

    .line 135
    :pswitch_15
    move v1, v2

    goto :goto_18

    .line 134
    :pswitch_17
    nop

    .line 129
    :goto_18
    return v1

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_15
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 224
    instance-of v0, p1, Landroid/os/vibrator/PrebakedSegment;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 225
    return v1

    .line 227
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/vibrator/PrebakedSegment;

    .line 228
    .local v0, "other":Landroid/os/vibrator/PrebakedSegment;
    iget v2, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    iget v3, v0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    if-ne v2, v3, :cond_1c

    iget-boolean v2, p0, Landroid/os/vibrator/PrebakedSegment;->mFallback:Z

    iget-boolean v3, v0, Landroid/os/vibrator/PrebakedSegment;->mFallback:Z

    if-ne v2, v3, :cond_1c

    iget v2, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectStrength:I

    iget v3, v0, Landroid/os/vibrator/PrebakedSegment;->mEffectStrength:I

    if-ne v2, v3, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 87
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getDuration(Landroid/os/VibratorInfo;)J
    .registers 6
    .param p1, "vibratorInfo"    # Landroid/os/VibratorInfo;

    .line 93
    if-nez p1, :cond_7

    .line 94
    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 96
    :cond_7
    iget v0, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_38

    .line 106
    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->getDuration()J

    move-result-wide v0

    goto :goto_37

    .line 100
    :sswitch_12
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Landroid/os/vibrator/PrebakedSegment;->estimateFromPrimitiveDuration(Landroid/os/VibratorInfo;I)J

    move-result-wide v0

    goto :goto_37

    .line 101
    :sswitch_18
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/os/vibrator/PrebakedSegment;->estimateFromPrimitiveDuration(Landroid/os/VibratorInfo;I)J

    move-result-wide v0

    goto :goto_37

    .line 103
    :sswitch_1e
    invoke-virtual {p1, v1}, Landroid/os/VibratorInfo;->getPrimitiveDuration(I)I

    move-result v0

    int-to-long v0, v0

    .line 104
    .local v0, "clickDuration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2d

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v0

    goto :goto_31

    :cond_2d
    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->getDuration()J

    move-result-wide v2

    :goto_31
    move-wide v0, v2

    goto :goto_37

    .line 99
    .end local v0    # "clickDuration":J
    :sswitch_33
    invoke-direct {p0, p1, v1}, Landroid/os/vibrator/PrebakedSegment;->estimateFromPrimitiveDuration(Landroid/os/VibratorInfo;I)J

    move-result-wide v0

    .line 96
    :goto_37
    return-wide v0

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_33
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_33
        0x3 -> :sswitch_18
        0x5 -> :sswitch_33
        0x15 -> :sswitch_12
    .end sparse-switch
.end method

.method public blacklist getEffectId()I
    .registers 2

    .line 73
    iget v0, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    return v0
.end method

.method public blacklist getEffectStrength()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectStrength:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 235
    iget v0, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/vibrator/PrebakedSegment;->mFallback:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectStrength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 2

    .line 142
    iget v0, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    sparse-switch v0, :sswitch_data_a

    .line 151
    const/4 v0, 0x0

    goto :goto_8

    .line 149
    :sswitch_7
    const/4 v0, 0x1

    .line 142
    :goto_8
    return v0

    nop

    :sswitch_data_a
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_7
        0x2 -> :sswitch_7
        0x3 -> :sswitch_7
        0x4 -> :sswitch_7
        0x5 -> :sswitch_7
        0x15 -> :sswitch_7
    .end sparse-switch
.end method

.method public blacklist resolve(I)Landroid/os/vibrator/PrebakedSegment;
    .registers 2
    .param p1, "defaultAmplitude"    # I

    .line 159
    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Landroid/os/vibrator/PrebakedSegment;->resolve(I)Landroid/os/vibrator/PrebakedSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/vibrator/PrebakedSegment;
    .registers 2
    .param p1, "scaleFactor"    # F

    .line 167
    return-object p0
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Landroid/os/vibrator/PrebakedSegment;->scale(F)Landroid/os/vibrator/PrebakedSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scaleLinearly(F)Landroid/os/vibrator/PrebakedSegment;
    .registers 2
    .param p1, "scaleFactor"    # F

    .line 175
    return-object p0
.end method

.method public bridge synthetic blacklist scaleLinearly(F)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Landroid/os/vibrator/PrebakedSegment;->scaleLinearly(F)Landroid/os/vibrator/PrebakedSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist shouldFallback()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Landroid/os/vibrator/PrebakedSegment;->mFallback:Z

    return v0
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 4

    .line 249
    iget v0, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    .line 250
    invoke-static {v0}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectStrength:I

    .line 251
    invoke-static {v1}, Landroid/os/VibrationEffect;->effectStrengthToString(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    iget-boolean v2, p0, Landroid/os/vibrator/PrebakedSegment;->mFallback:Z

    if-eqz v2, :cond_14

    const-string/jumbo v2, "with"

    goto :goto_17

    :cond_14
    const-string/jumbo v2, "no"

    :goto_17
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 249
    const-string v1, "Prebaked=%s(%s, %s fallback)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prebaked{effect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    invoke-static {v1}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectStrength:I

    .line 241
    invoke-static {v1}, Landroid/os/VibrationEffect;->effectStrengthToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/vibrator/PrebakedSegment;->mFallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    return-object v0
.end method

.method public blacklist validate()V
    .registers 6

    .line 200
    iget v0, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    const-string v1, ")"

    sparse-switch v0, :sswitch_data_62

    .line 210
    sget-object v0, Landroid/os/VibrationEffect;->RINGTONES:[I

    .line 211
    .local v0, "ringtones":[I
    iget v2, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    const/4 v3, 0x0

    aget v3, v0, v3

    if-lt v2, v3, :cond_43

    iget v2, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, v0, v3

    if-gt v2, v3, :cond_43

    goto :goto_1b

    .line 208
    .end local v0    # "ringtones":[I
    :sswitch_1a
    nop

    .line 216
    :goto_1b
    iget v0, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectStrength:I

    invoke-static {v0}, Landroid/os/vibrator/PrebakedSegment;->isValidEffectStrength(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 220
    return-void

    .line 217
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown prebaked effect strength (value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectStrength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    .restart local v0    # "ringtones":[I
    :cond_43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown prebaked effect type (value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_1a
        0x1 -> :sswitch_1a
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_1a
        0x4 -> :sswitch_1a
        0x5 -> :sswitch_1a
        0x15 -> :sswitch_1a
    .end sparse-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 262
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget v0, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-boolean v0, p0, Landroid/os/vibrator/PrebakedSegment;->mFallback:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 265
    iget v0, p0, Landroid/os/vibrator/PrebakedSegment;->mEffectStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    return-void
.end method
