.class public Landroid/hardware/display/AmbientDisplayConfiguration;
.super Ljava/lang/Object;
.source "AmbientDisplayConfiguration.java"


# static fields
.field private static final blacklist DOZE_SETTINGS:[Ljava/lang/String;

.field private static final blacklist NON_USER_CONFIGURABLE_DOZE_SETTINGS:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "AmbientDisplayConfig"


# instance fields
.field private final blacklist mAlwaysOnByDefault:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPickupGestureEnabledByDefault:Z

.field private final blacklist mScreenOffUdfpsAvailable:Z

.field final blacklist mUsersInitialValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 50
    const-string v6, "doze_wake_display_gesture"

    const-string v7, "doze_tap_gesture"

    const-string v0, "doze_enabled"

    const-string v1, "doze_always_on"

    const-string v2, "doze_pulse_on_pick_up"

    const-string v3, "doze_pulse_on_long_press"

    const-string v4, "doze_pulse_on_double_tap"

    const-string v5, "doze_wake_screen_gesture"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/display/AmbientDisplayConfiguration;->DOZE_SETTINGS:[Ljava/lang/String;

    .line 62
    const-string v0, "doze_quick_pickup_gesture"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/display/AmbientDisplayConfiguration;->NON_USER_CONFIGURABLE_DOZE_SETTINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mUsersInitialValues:Landroid/util/SparseArray;

    .line 71
    iput-object p1, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    .line 72
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mAlwaysOnByDefault:Z

    .line 73
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mPickupGestureEnabledByDefault:Z

    .line 75
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mScreenOffUdfpsAvailable:Z

    .line 77
    return-void
.end method

.method private blacklist alwaysOnDisplayAvailable()Z
    .registers 3

    .line 281
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private blacklist alwaysOnDisplayDebuggingEnabled()Z
    .registers 3

    .line 285
    const-string v0, "debug.doze.aod"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method private blacklist boolSetting(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "user"    # I
    .param p3, "def"    # I

    .line 297
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist boolSettingDefaultOff(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "user"    # I

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private blacklist boolSettingDefaultOn(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "user"    # I

    .line 289
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private blacklist getDozeSetting(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 341
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist pulseOnLongPressAvailable()Z
    .registers 2

    .line 225
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->longPressSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist putDozeSetting(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 345
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 346
    return-void
.end method


# virtual methods
.method public blacklist accessibilityInversionEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 267
    const-string v0, "accessibility_display_inversion_enabled"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist alwaysOnAvailable()Z
    .registers 2

    .line 246
    invoke-direct {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnDisplayDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnDisplayAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 247
    :cond_c
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 246
    :goto_15
    return v0
.end method

.method public blacklist alwaysOnAvailableForUser(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 257
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->accessibilityInversionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist alwaysOnEnabled(I)Z
    .registers 4
    .param p1, "user"    # I

    .line 235
    iget-boolean v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mAlwaysOnByDefault:Z

    const-string v1, "doze_always_on"

    invoke-direct {p0, v1, p1, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 236
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->accessibilityInversionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 235
    :goto_19
    return v0
.end method

.method public blacklist ambientDisplayAvailable()Z
    .registers 2

    .line 272
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist ambientDisplayComponent()Ljava/lang/String;
    .registers 3

    .line 262
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104026b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist disableDozeSettings(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->disableDozeSettings(ZI)V

    .line 304
    return-void
.end method

.method public blacklist disableDozeSettings(ZI)V
    .registers 11
    .param p1, "shouldDisableNonUserConfigurable"    # Z
    .param p2, "userId"    # I

    .line 309
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mUsersInitialValues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 310
    .local v0, "initialValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_19

    .line 311
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Don\'t call #disableDozeSettings more than once,without first calling #restoreDozeSettings"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    :cond_19
    :goto_19
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 315
    .end local v0    # "initialValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, "initialValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroid/hardware/display/AmbientDisplayConfiguration;->DOZE_SETTINGS:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_23
    const-string v5, "0"

    if-ge v4, v2, :cond_36

    aget-object v6, v0, v4

    .line 316
    .local v6, "name":Ljava/lang/String;
    invoke-direct {p0, v6, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->getDozeSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-direct {p0, v6, v5, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->putDozeSetting(Ljava/lang/String;Ljava/lang/String;I)V

    .line 315
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 319
    :cond_36
    if-eqz p1, :cond_4c

    .line 320
    sget-object v0, Landroid/hardware/display/AmbientDisplayConfiguration;->NON_USER_CONFIGURABLE_DOZE_SETTINGS:[Ljava/lang/String;

    array-length v2, v0

    :goto_3b
    if-ge v3, v2, :cond_4c

    aget-object v4, v0, v3

    .line 321
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, v4, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->getDozeSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-direct {p0, v4, v5, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->putDozeSetting(Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 325
    :cond_4c
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mUsersInitialValues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    return-void
.end method

.method public blacklist doubleTapGestureEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 135
    const-string v0, "doze_pulse_on_double_tap"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 136
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 135
    :goto_11
    return v0
.end method

.method public blacklist doubleTapSensorAvailable()Z
    .registers 2

    .line 141
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist doubleTapSensorType()Ljava/lang/String;
    .registers 3

    .line 186
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104026c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dozePickupSensorAvailable()Z
    .registers 3

    .line 114
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist dozeSuppressed(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 277
    const-string v0, "suppress_doze"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist enabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 81
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 82
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnLongPressEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 83
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 84
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeLockScreenGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 85
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeDisplayGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 86
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pickupGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 87
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 88
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 89
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 90
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->screenOffUdfpsEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v0, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v0, 0x1

    .line 81
    :goto_40
    return v0
.end method

.method public blacklist getWakeLockScreenDebounce()J
    .registers 3

    .line 181
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist longPressSensorType()Ljava/lang/String;
    .registers 3

    .line 205
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104026d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist pickupGestureEnabled(I)Z
    .registers 4
    .param p1, "user"    # I

    .line 107
    nop

    .line 108
    iget-boolean v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mPickupGestureEnabledByDefault:Z

    .line 107
    const-string v1, "doze_pulse_on_pick_up"

    invoke-direct {p0, v1, p1, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 109
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->dozePickupSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 107
    :goto_14
    return v0
.end method

.method public blacklist pulseOnLongPressEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 220
    invoke-direct {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnLongPressAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "doze_pulse_on_long_press"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist pulseOnNotificationAvailable()Z
    .registers 3

    .line 101
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110215

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 102
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 101
    :goto_18
    return v0
.end method

.method public blacklist pulseOnNotificationEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 95
    const-string v0, "doze_enabled"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 96
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 95
    :goto_11
    return v0
.end method

.method public blacklist quickPickupSensorEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 146
    const-string v0, "doze_quick_pickup_gesture"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 147
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 148
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pickupGestureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 149
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 146
    :goto_21
    return v0
.end method

.method public blacklist quickPickupSensorType()Ljava/lang/String;
    .registers 3

    .line 215
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist restoreDozeSettings(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 331
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mUsersInitialValues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 332
    .local v0, "initialValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 333
    sget-object v1, Landroid/hardware/display/AmbientDisplayConfiguration;->DOZE_SETTINGS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    .line 334
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v4, v5, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->putDozeSetting(Ljava/lang/String;Ljava/lang/String;I)V

    .line 333
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 336
    :cond_24
    iget-object v1, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mUsersInitialValues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 338
    :cond_29
    return-void
.end method

.method public blacklist screenOffUdfpsEnabled(I)Z
    .registers 5
    .param p1, "user"    # I

    .line 154
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->udfpsLongPressSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-boolean v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mScreenOffUdfpsAvailable:Z

    const-string v1, "screen_off_udfps_enabled"

    if-eqz v0, :cond_2c

    .line 155
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->screenOffUnlockUdfps()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111022a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 157
    invoke-direct {p0, v1, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_33

    :cond_2c
    nop

    .line 158
    invoke-direct {p0, v1, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_35

    :goto_33
    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    .line 154
    :goto_36
    return v0
.end method

.method public blacklist tapGestureEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 119
    const-string v0, "doze_tap_gesture"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 120
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 119
    :goto_11
    return v0
.end method

.method public blacklist tapSensorAvailable()Z
    .registers 7

    .line 125
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapSensorTypeMapping()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    .line 126
    .local v4, "tapType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 127
    const/4 v0, 0x1

    return v0

    .line 125
    .end local v4    # "tapType":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 130
    :cond_16
    return v2
.end method

.method public blacklist tapSensorTypeMapping()[Ljava/lang/String;
    .registers 4

    .line 193
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    .line 194
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "postureMapping":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 196
    iget-object v1, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 196
    return-object v1

    .line 200
    :cond_25
    return-object v0
.end method

.method public blacklist udfpsLongPressSensorType()Ljava/lang/String;
    .registers 3

    .line 210
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104026f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist wakeDisplayGestureEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 175
    const-string v0, "doze_wake_display_gesture"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 176
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 175
    :goto_11
    return v0
.end method

.method public blacklist wakeLockScreenGestureEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 169
    const-string v0, "doze_wake_screen_gesture"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 170
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 169
    :goto_11
    return v0
.end method

.method public blacklist wakeScreenGestureAvailable()Z
    .registers 3

    .line 163
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 164
    const v1, 0x1110155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 163
    return v0
.end method
