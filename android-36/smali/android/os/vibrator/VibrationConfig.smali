.class public Landroid/os/vibrator/VibrationConfig;
.super Ljava/lang/Object;
.source "VibrationConfig.java"


# static fields
.field private static final blacklist DEFAULT_AMPLITUDE:I = 0xff

.field private static final blacklist DEFAULT_SCALE_LEVEL_GAIN:F = 1.4f


# instance fields
.field private final blacklist mDefaultAlarmVibrationIntensity:I

.field private final blacklist mDefaultHapticFeedbackIntensity:I

.field private final blacklist mDefaultKeyboardVibrationIntensity:I

.field private final blacklist mDefaultMediaVibrationIntensity:I

.field private final blacklist mDefaultNotificationVibrationIntensity:I

.field private final blacklist mDefaultRingVibrationIntensity:I

.field private final blacklist mDefaultVibrationAmplitude:I

.field private final blacklist mHapticChannelMaxVibrationAmplitude:F

.field private final blacklist mIgnoreVibrationsOnWirelessCharger:Z

.field private final blacklist mKeyboardVibrationSettingsSupported:Z

.field private final blacklist mRampDownDurationMs:I

.field private final blacklist mRampStepDurationMs:I

.field private final blacklist mRequestVibrationParamsForUsages:[I

.field private final blacklist mRequestVibrationParamsTimeoutMs:I

.field private final blacklist mVibrationPipelineMaxDurationMs:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const v0, 0x10e006d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultVibrationAmplitude:I

    .line 95
    const v0, 0x10500ea

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadFloat(Landroid/content/res/Resources;I)F

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    .line 97
    const v0, 0x10e0155

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    .line 99
    const v0, 0x10e0156

    invoke-static {p1, v0, v1}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    .line 101
    const v0, 0x10e0113

    invoke-static {p1, v0, v1}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsTimeoutMs:I

    .line 103
    const v0, 0x10700b2

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadIntArray(Landroid/content/res/Resources;I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsForUsages:[I

    .line 106
    const v0, 0x11101c6

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadBoolean(Landroid/content/res/Resources;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/vibrator/VibrationConfig;->mIgnoreVibrationsOnWirelessCharger:Z

    .line 108
    const v0, 0x11101d5

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadBoolean(Landroid/content/res/Resources;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/vibrator/VibrationConfig;->mKeyboardVibrationSettingsSupported:Z

    .line 110
    const v0, 0x10e0154

    invoke-static {p1, v0, v1}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mVibrationPipelineMaxDurationMs:I

    .line 113
    const v0, 0x10e0052

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultAlarmVibrationIntensity:I

    .line 115
    const v0, 0x10e0057

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    .line 117
    const v0, 0x10e005a

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultMediaVibrationIntensity:I

    .line 119
    const v0, 0x10e0062

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultNotificationVibrationIntensity:I

    .line 121
    const v0, 0x10e006a

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultRingVibrationIntensity:I

    .line 123
    const v0, 0x10e0058

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultKeyboardVibrationIntensity:I

    .line 125
    return-void
.end method

.method private blacklist getRequestVibrationParamsForUsagesNames()[Ljava/lang/String;
    .registers 5

    .line 329
    iget-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsForUsages:[I

    array-length v0, v0

    .line 330
    .local v0, "usagesCount":I
    new-array v1, v0, [Ljava/lang/String;

    .line 331
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_15

    .line 332
    iget-object v3, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsForUsages:[I

    aget v3, v3, v2

    invoke-static {v3}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 335
    .end local v2    # "i":I
    :cond_15
    return-object v1
.end method

.method private static blacklist loadBoolean(Landroid/content/res/Resources;I)Z
    .registers 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 146
    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static blacklist loadDefaultIntensity(Landroid/content/res/Resources;I)I
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 129
    const/4 v0, 0x2

    .line 130
    .local v0, "defaultIntensity":I
    invoke-static {p0, p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result v1

    .line 131
    .local v1, "value":I
    if-ltz v1, :cond_c

    const/4 v2, 0x3

    if-le v1, v2, :cond_b

    goto :goto_c

    .line 134
    :cond_b
    return v1

    .line 132
    :cond_c
    :goto_c
    return v0
.end method

.method private static blacklist loadFloat(Landroid/content/res/Resources;I)F
    .registers 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 138
    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static blacklist loadIntArray(Landroid/content/res/Resources;I)[I
    .registers 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 150
    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_a

    :cond_7
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_a
    return-object v0
.end method

.method private static blacklist loadInteger(Landroid/content/res/Resources;II)I
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "defaultValue"    # I

    .line 142
    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_8

    :cond_7
    move v0, p2

    :goto_8
    return v0
.end method


# virtual methods
.method public blacklist dumpWithoutDefaultSettings(Landroid/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 315
    const-string v0, "VibrationConfig:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ignoreVibrationsOnWirelessCharger = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/vibrator/VibrationConfig;->mIgnoreVibrationsOnWirelessCharger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultVibrationAmplitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultVibrationAmplitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hapticChannelMaxAmplitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rampStepDurationMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rampDownDurationMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestVibrationParamsForUsages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 323
    invoke-direct {p0}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsForUsagesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestVibrationParamsTimeoutMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsTimeoutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 326
    return-void
.end method

.method public blacklist getDefaultVibrationAmplitude()I
    .registers 4

    .line 171
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultVibrationAmplitude:I

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-lt v0, v1, :cond_f

    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultVibrationAmplitude:I

    if-le v0, v2, :cond_c

    goto :goto_f

    .line 174
    :cond_c
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultVibrationAmplitude:I

    return v0

    .line 172
    :cond_f
    :goto_f
    return v2
.end method

.method public blacklist getDefaultVibrationIntensity(I)I
    .registers 3
    .param p1, "usage"    # I

    .line 264
    sparse-switch p1, :sswitch_data_1e

    .line 284
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultMediaVibrationIntensity:I

    return v0

    .line 278
    :sswitch_6
    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->isKeyboardVibrationSettingsSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 279
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultKeyboardVibrationIntensity:I

    goto :goto_11

    :cond_f
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    .line 278
    :goto_11
    return v0

    .line 269
    :sswitch_12
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultNotificationVibrationIntensity:I

    return v0

    .line 271
    :sswitch_15
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultRingVibrationIntensity:I

    return v0

    .line 276
    :sswitch_18
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    return v0

    .line 266
    :sswitch_1b
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultAlarmVibrationIntensity:I

    return v0

    :sswitch_data_1e
    .sparse-switch
        0x11 -> :sswitch_1b
        0x12 -> :sswitch_18
        0x21 -> :sswitch_15
        0x22 -> :sswitch_18
        0x31 -> :sswitch_12
        0x32 -> :sswitch_18
        0x41 -> :sswitch_12
        0x42 -> :sswitch_18
        0x52 -> :sswitch_6
    .end sparse-switch
.end method

.method public blacklist getDefaultVibrationScaleLevelGain()F
    .registers 2

    .line 183
    const v0, 0x3fb33333    # 1.4f

    return v0
.end method

.method public blacklist getHapticChannelMaximumAmplitude()F
    .registers 3

    .line 160
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    .line 161
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 163
    :cond_a
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    return v0
.end method

.method public blacklist getRampDownDurationMs()I
    .registers 2

    .line 191
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    if-gez v0, :cond_6

    .line 192
    const/4 v0, 0x0

    return v0

    .line 194
    :cond_6
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    return v0
.end method

.method public blacklist getRampStepDurationMs()I
    .registers 2

    .line 220
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    if-gez v0, :cond_6

    .line 221
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_6
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    return v0
.end method

.method public blacklist getRequestVibrationParamsForUsages()[I
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsForUsages:[I

    return-object v0
.end method

.method public blacklist getRequestVibrationParamsTimeoutMs()I
    .registers 3

    .line 202
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsTimeoutMs:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public blacklist getVibrationPipelineMaxDurationMs()I
    .registers 2

    .line 237
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mVibrationPipelineMaxDurationMs:I

    if-gez v0, :cond_6

    .line 238
    const/4 v0, 0x0

    return v0

    .line 240
    :cond_6
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mVibrationPipelineMaxDurationMs:I

    return v0
.end method

.method public blacklist ignoreVibrationsOnWirelessCharger()Z
    .registers 2

    .line 250
    iget-boolean v0, p0, Landroid/os/vibrator/VibrationConfig;->mIgnoreVibrationsOnWirelessCharger:Z

    return v0
.end method

.method public blacklist isKeyboardVibrationSettingsSupported()Z
    .registers 2

    .line 258
    iget-boolean v0, p0, Landroid/os/vibrator/VibrationConfig;->mKeyboardVibrationSettingsSupported:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibrationConfig{mIgnoreVibrationsOnWirelessCharger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/vibrator/VibrationConfig;->mIgnoreVibrationsOnWirelessCharger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultVibrationAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultVibrationAmplitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHapticChannelMaxVibrationAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRampStepDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRampDownDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestVibrationParamsForUsages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    invoke-direct {p0}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsForUsagesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestVibrationParamsTimeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsTimeoutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultAlarmIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultAlarmVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultHapticFeedbackIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultMediaIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultMediaVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultNotificationIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultNotificationVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultRingIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultRingVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultKeyboardIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultKeyboardVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeyboardVibrationSettingsSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/vibrator/VibrationConfig;->mKeyboardVibrationSettingsSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    return-object v0
.end method
