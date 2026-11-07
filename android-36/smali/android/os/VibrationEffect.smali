.class public abstract Landroid/os/VibrationEffect;
.super Ljava/lang/Object;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$Composed;,
        Landroid/os/VibrationEffect$VendorEffect;,
        Landroid/os/VibrationEffect$Composition;,
        Landroid/os/VibrationEffect$WaveformBuilder;,
        Landroid/os/VibrationEffect$VibrationParameter;,
        Landroid/os/VibrationEffect$FrequencyVibrationParameter;,
        Landroid/os/VibrationEffect$AmplitudeVibrationParameter;,
        Landroid/os/VibrationEffect$BasicEnvelopeBuilder;,
        Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;,
        Landroid/os/VibrationEffect$Transformation;,
        Landroid/os/VibrationEffect$EffectType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_AMPLITUDE:I = -0x1

.field public static final whitelist EFFECT_CLICK:I = 0x0

.field public static final whitelist EFFECT_DOUBLE_CLICK:I = 0x1

.field public static final whitelist EFFECT_HEAVY_CLICK:I = 0x5

.field public static final greylist-max-r EFFECT_POP:I = 0x4

.field public static final blacklist EFFECT_STRENGTH_LIGHT:I = 0x0

.field public static final blacklist EFFECT_STRENGTH_MEDIUM:I = 0x1

.field public static final blacklist EFFECT_STRENGTH_STRONG:I = 0x2

.field public static final blacklist EFFECT_TEXTURE_TICK:I = 0x15

.field public static final greylist-max-r EFFECT_THUD:I = 0x3

.field public static final whitelist EFFECT_TICK:I = 0x2

.field public static final greylist-max-o MAX_AMPLITUDE:I = 0xff

.field private static final blacklist MAX_HAPTIC_FEEDBACK_COMPOSITION_SIZE:J = 0x3L

.field private static final blacklist MAX_HAPTIC_FEEDBACK_DURATION:J = 0x3e8L

.field private static final blacklist PARCEL_TOKEN_COMPOSED:I = 0x1

.field private static final blacklist PARCEL_TOKEN_VENDOR_EFFECT:I = 0x2

.field public static final greylist-max-r RINGTONES:[I

.field private static final blacklist SCALE_GAMMA:F = 0.65f


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 163
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/os/VibrationEffect;->RINGTONES:[I

    .line 2478
    new-instance v0, Landroid/os/VibrationEffect$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_12
    .array-data 4
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist createOneShot(JI)Landroid/os/VibrationEffect;
    .registers 6
    .param p0, "milliseconds"    # J
    .param p2, "amplitude"    # I

    .line 207
    if-eqz p2, :cond_12

    .line 212
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    filled-new-array {p2}, [I

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 208
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amplitude must either be DEFAULT_AMPLITUDE, or between 1 and 255 inclusive (amplitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createPredefined(I)Landroid/os/VibrationEffect;
    .registers 2
    .param p0, "effectId"    # I

    .line 332
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createRepeatingEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .registers 2
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 1422
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 1423
    invoke-virtual {v0, p0}, Landroid/os/VibrationEffect$Composition;->repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 1424
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    .line 1422
    return-object v0
.end method

.method public static whitelist createRepeatingEffect(Landroid/os/VibrationEffect;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .registers 6
    .param p0, "preamble"    # Landroid/os/VibrationEffect;
    .param p1, "repeatingEffect"    # Landroid/os/VibrationEffect;

    .line 1444
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "Can\'t repeat an indefinitely repeating effect."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1446
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 1447
    invoke-virtual {v0, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 1448
    invoke-virtual {v0, p1}, Landroid/os/VibrationEffect$Composition;->repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 1449
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    .line 1446
    return-object v0
.end method

.method public static whitelist createVendorEffect(Landroid/os/PersistableBundle;)Landroid/os/VibrationEffect;
    .registers 4
    .param p0, "effect"    # Landroid/os/PersistableBundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 354
    new-instance v0, Landroid/os/VibrationEffect$VendorEffect;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v1, v2, v2}, Landroid/os/VibrationEffect$VendorEffect;-><init>(Landroid/os/PersistableBundle;IFF)V

    .line 356
    .local v0, "vendorEffect":Landroid/os/VibrationEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 357
    return-object v0
.end method

.method public static whitelist createWaveform([JI)Landroid/os/VibrationEffect;
    .registers 6
    .param p0, "timings"    # [J
    .param p1, "repeat"    # I

    .line 241
    array-length v0, p0

    new-array v0, v0, [I

    .line 242
    .local v0, "amplitudes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_13

    .line 243
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    aput v3, v0, v2

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 245
    .end local v1    # "i":I
    :cond_13
    invoke-static {p0, v0, p1}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist createWaveform([J[II)Landroid/os/VibrationEffect;
    .registers 9
    .param p0, "timings"    # [J
    .param p1, "amplitudes"    # [I
    .param p2, "repeat"    # I

    .line 296
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_33

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/StepSegment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    .line 304
    aget v2, p1, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    .line 305
    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_1b

    :cond_15
    aget v2, p1, v1

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 306
    .local v2, "parsedAmplitude":F
    :goto_1b
    new-instance v3, Landroid/os/vibrator/StepSegment;

    aget-wide v4, p0, v1

    long-to-int v4, v4

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v4}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v2    # "parsedAmplitude":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 308
    .end local v1    # "i":I
    :cond_2a
    new-instance v1, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v1, v0, p2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 309
    .local v1, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v1}, Landroid/os/VibrationEffect;->validate()V

    .line 310
    return-object v1

    .line 297
    .end local v0    # "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/StepSegment;>;"
    .end local v1    # "effect":Landroid/os/VibrationEffect;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timing and amplitude arrays must be of equal length (timings.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amplitudes.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist effectIdToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "effectId"    # I

    .line 754
    sparse-switch p0, :sswitch_data_1e

    .line 762
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 761
    :sswitch_8
    const-string v0, "TEXTURE_TICK"

    goto :goto_1c

    .line 757
    :sswitch_b
    const-string v0, "HEAVY_CLICK"

    goto :goto_1c

    .line 759
    :sswitch_e
    const-string v0, "POP"

    goto :goto_1c

    .line 760
    :sswitch_11
    const-string v0, "THUD"

    goto :goto_1c

    .line 756
    :sswitch_14
    const-string v0, "TICK"

    goto :goto_1c

    .line 758
    :sswitch_17
    const-string v0, "DOUBLE_CLICK"

    goto :goto_1c

    .line 755
    :sswitch_1a
    const-string v0, "CLICK"

    .line 754
    :goto_1c
    return-object v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_1a
        0x1 -> :sswitch_17
        0x2 -> :sswitch_14
        0x3 -> :sswitch_11
        0x4 -> :sswitch_e
        0x5 -> :sswitch_b
        0x15 -> :sswitch_8
    .end sparse-switch
.end method

.method public static blacklist effectStrengthToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "effectStrength"    # I

    .line 768
    packed-switch p0, :pswitch_data_12

    .line 772
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 771
    :pswitch_8
    const-string v0, "STRONG"

    goto :goto_10

    .line 770
    :pswitch_b
    const-string v0, "MEDIUM"

    goto :goto_10

    .line 769
    :pswitch_e
    const-string v0, "LIGHT"

    .line 768
    :goto_10
    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o get(I)Landroid/os/VibrationEffect;
    .registers 2
    .param p0, "effectId"    # I

    .line 380
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o get(IZ)Landroid/os/VibrationEffect;
    .registers 5
    .param p0, "effectId"    # I
    .param p1, "fallback"    # Z

    .line 407
    new-instance v0, Landroid/os/VibrationEffect$Composed;

    new-instance v1, Landroid/os/vibrator/PrebakedSegment;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/os/vibrator/PrebakedSegment;-><init>(IZI)V

    invoke-direct {v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Landroid/os/vibrator/VibrationEffectSegment;)V

    .line 409
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 410
    return-object v0
.end method

.method public static greylist-max-o get(Landroid/net/Uri;Landroid/content/Context;)Landroid/os/VibrationEffect;
    .registers 9
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .line 432
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "uris":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 437
    return-object v2

    .line 440
    :cond_10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 441
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 442
    .local v3, "uncanonicalUri":Landroid/net/Uri;
    if-nez v3, :cond_1b

    .line 446
    move-object v3, p0

    .line 449
    :cond_1b
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    array-length v5, v0

    if-ge v4, v5, :cond_48

    sget-object v5, Landroid/os/VibrationEffect;->RINGTONES:[I

    array-length v5, v5

    if-ge v4, v5, :cond_48

    .line 450
    aget-object v5, v0, v4

    if-nez v5, :cond_29

    .line 451
    goto :goto_45

    .line 453
    :cond_29
    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 454
    .local v5, "mappedUri":Landroid/net/Uri;
    if-nez v5, :cond_36

    .line 455
    goto :goto_45

    .line 457
    :cond_36
    invoke-virtual {v5, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 458
    sget-object v2, Landroid/os/VibrationEffect;->RINGTONES:[I

    aget v2, v2, v4

    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v2

    return-object v2

    .line 449
    .end local v5    # "mappedUri":Landroid/net/Uri;
    :cond_45
    :goto_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 461
    .end local v4    # "i":I
    :cond_48
    return-object v2
.end method

.method public static blacklist scale(FF)F
    .registers 13
    .param p0, "intensity"    # F
    .param p1, "scaleFactor"    # F

    .line 696
    invoke-static {}, Landroid/os/vibrator/Flags;->hapticsScaleV2Enabled()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_22

    .line 697
    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_1f

    invoke-static {p0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_1f

    .line 702
    :cond_16
    mul-float v0, p1, p0

    sub-float v1, p1, v2

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    .line 699
    :cond_1f
    :goto_1f
    mul-float v0, p1, p0

    return v0

    .line 707
    :cond_22
    const v0, 0x3fc4ec4f

    invoke-static {p1, v0}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    .line 709
    .local v0, "scale":F
    cmpg-float v3, p1, v2

    if-gtz v3, :cond_30

    .line 712
    mul-float v1, p0, v0

    return v1

    .line 716
    :cond_30
    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v3, p1

    invoke-static {p1, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result v3

    .line 717
    .local v3, "extraScale":F
    mul-float v4, p0, v0

    mul-float/2addr v4, v3

    .line 718
    .local v4, "x":F
    mul-float v5, v0, v3

    .line 720
    .local v5, "maxX":F
    invoke-static {v4}, Landroid/util/MathUtils;->exp(F)F

    move-result v6

    .line 721
    .local v6, "expX":F
    invoke-static {v5}, Landroid/util/MathUtils;->exp(F)F

    move-result v7

    .line 725
    .local v7, "expMaxX":F
    add-float v8, v7, v2

    sub-float v9, v7, v2

    div-float/2addr v8, v9

    .line 726
    .local v8, "a":F
    sub-float v9, v6, v2

    add-float v10, v6, v2

    div-float/2addr v9, v10

    .line 728
    .local v9, "fx":F
    mul-float v10, v8, v9

    invoke-static {v10, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    return v1
.end method

.method public static blacklist scaleLinearly(FF)F
    .registers 5
    .param p0, "intensity"    # F
    .param p1, "scaleFactor"    # F

    .line 742
    mul-float v0, p0, p1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method public static whitelist startComposition()Landroid/os/VibrationEffect$Composition;
    .registers 1

    .line 471
    new-instance v0, Landroid/os/VibrationEffect$Composition;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composition;-><init>()V

    return-object v0
.end method

.method public static blacklist startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 1

    .line 490
    new-instance v0, Landroid/os/VibrationEffect$WaveformBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$WaveformBuilder;-><init>()V

    return-object v0
.end method

.method public static blacklist startWaveform(Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 3
    .param p0, "initialParameter"    # Landroid/os/VibrationEffect$VibrationParameter;

    .line 510
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    .line 511
    .local v0, "builder":Landroid/os/VibrationEffect$WaveformBuilder;
    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1, p0}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 512
    return-object v0
.end method

.method public static blacklist startWaveform(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 4
    .param p0, "initialParameter1"    # Landroid/os/VibrationEffect$VibrationParameter;
    .param p1, "initialParameter2"    # Landroid/os/VibrationEffect$VibrationParameter;

    .line 536
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    .line 537
    .local v0, "builder":Landroid/os/VibrationEffect$WaveformBuilder;
    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 538
    return-object v0
.end method


# virtual methods
.method public abstract blacklist applyAdaptiveScale(F)Landroid/os/VibrationEffect;
.end method

.method public abstract blacklist applyEffectStrength(I)Landroid/os/VibrationEffect;
.end method

.method public abstract blacklist applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect;
.end method

.method public abstract blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
.end method

.method public abstract blacklist computeCreateWaveformOffOnTimingsOrNull()[J
.end method

.method public abstract blacklist cropToLengthOrNull(I)Landroid/os/VibrationEffect;
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public abstract greylist-max-o getDuration()J
.end method

.method public blacklist getDuration(Landroid/os/VibratorInfo;)J
    .registers 4
    .param p1, "vibratorInfo"    # Landroid/os/VibratorInfo;

    .line 582
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 2

    .line 606
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist resolve(I)Landroid/os/VibrationEffect;
.end method

.method public abstract blacklist scale(F)Landroid/os/VibrationEffect;
.end method

.method public abstract blacklist toDebugString()Ljava/lang/String;
.end method

.method public abstract greylist-max-o validate()V
.end method
