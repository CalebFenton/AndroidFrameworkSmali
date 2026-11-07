.class public final Lcom/android/server/power/PowerServiceSettingsAndConfigurationDumpProto;
.super Ljava/lang/Object;
.source "PowerServiceSettingsAndConfigurationDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerServiceSettingsAndConfigurationDumpProto$ScreenBrightnessSettingLimitsProto;,
        Lcom/android/server/power/PowerServiceSettingsAndConfigurationDumpProto$StayOnWhilePluggedInProto;
    }
.end annotation


# static fields
.field public static final blacklist ARE_DREAMS_ACTIVATED_ON_DOCK_BY_DEFAULT_CONFIG:J = 0x1080000000aL

.field public static final blacklist ARE_DREAMS_ACTIVATED_ON_SLEEP_BY_DEFAULT_CONFIG:J = 0x10800000009L

.field public static final blacklist ARE_DREAMS_ACTIVATE_ON_DOCK_SETTING:J = 0x10800000011L

.field public static final blacklist ARE_DREAMS_ACTIVATE_ON_SLEEP_SETTING:J = 0x10800000010L

.field public static final blacklist ARE_DREAMS_ENABLED_BY_DEFAULT_CONFIG:J = 0x10800000008L

.field public static final blacklist ARE_DREAMS_ENABLED_ON_BATTERY_CONFIG:J = 0x1080000000bL

.field public static final blacklist ARE_DREAMS_ENABLED_SETTING:J = 0x1080000000fL

.field public static final blacklist ARE_DREAMS_SUPPORTED_CONFIG:J = 0x10800000007L

.field public static final blacklist ATTENTIVE_TIMEOUT_CONFIG_MS:J = 0x11100000026L

.field public static final blacklist ATTENTIVE_TIMEOUT_SETTING_MS:J = 0x11100000025L

.field public static final blacklist ATTENTIVE_WARNING_DURATION_CONFIG_MS:J = 0x11100000027L

.field public static final blacklist DOZED_SCREEN_BRIGHTNESS_OVERRIDE_FROM_DREAM_MANAGER:J = 0x10200000020L

.field public static final blacklist DOZE_SCREEN_STATE_OVERRIDE_FROM_DREAM_MANAGER:J = 0x10e0000001fL

.field public static final blacklist DRAW_WAKE_LOCK_OVERRIDE_FROM_SIDEKICK:J = 0x10800000024L

.field public static final blacklist DREAMS_BATTERY_LEVEL_DRAIN_CUTOFF_CONFIG:J = 0x1110000000eL

.field public static final blacklist DREAMS_BATTERY_LEVEL_MINIMUM_WHEN_NOT_POWERED_CONFIG:J = 0x1110000000dL

.field public static final blacklist DREAMS_BATTERY_LEVEL_MINIMUM_WHEN_POWERED_CONFIG:J = 0x1110000000cL

.field public static final blacklist IS_DECOUPLE_HAL_AUTO_SUSPEND_MODE_FROM_DISPLAY_CONFIG:J = 0x10800000001L

.field public static final blacklist IS_DECOUPLE_HAL_INTERACTIVE_MODE_FROM_DISPLAY_CONFIG:J = 0x10800000002L

.field public static final blacklist IS_DOUBLE_TAP_WAKE_ENABLED:J = 0x10800000022L

.field public static final blacklist IS_DOZE_AFTER_SCREEN_OFF_CONFIG:J = 0x10800000012L

.field public static final blacklist IS_MAXIMUM_SCREEN_OFF_TIMEOUT_FROM_DEVICE_ADMIN_ENFORCED_LOCKED:J = 0x10800000019L

.field public static final blacklist IS_SUSPEND_WHEN_SCREEN_OFF_DUE_TO_PROXIMITY_CONFIG:J = 0x10800000006L

.field public static final blacklist IS_THEATER_MODE_ENABLED:J = 0x10800000005L

.field public static final blacklist IS_USER_INACTIVE_OVERRIDE_FROM_WINDOW_MANAGER:J = 0x1080000001eL

.field public static final blacklist IS_VR_MODE_ENABLED:J = 0x10800000023L

.field public static final blacklist IS_WAKE_UP_WHEN_PLUGGED_OR_UNPLUGGED_CONFIG:J = 0x10800000003L

.field public static final blacklist IS_WAKE_UP_WHEN_PLUGGED_OR_UNPLUGGED_IN_THEATER_MODE_CONFIG:J = 0x10800000004L

.field public static final blacklist MAXIMUM_SCREEN_DIM_DURATION_CONFIG_MS:J = 0x10500000014L

.field public static final blacklist MAXIMUM_SCREEN_DIM_RATIO_CONFIG:J = 0x10200000015L

.field public static final blacklist MAXIMUM_SCREEN_OFF_TIMEOUT_FROM_DEVICE_ADMIN_MS:J = 0x10500000018L

.field public static final blacklist MINIMUM_SCREEN_OFF_TIMEOUT_CONFIG_MS:J = 0x10500000013L

.field public static final blacklist SCREEN_BRIGHTNESS_MODE_SETTING:J = 0x10e0000001bL

.field public static final blacklist SCREEN_BRIGHTNESS_OVERRIDE_FROM_WINDOW_MANAGER:J = 0x1110000001cL

.field public static final blacklist SCREEN_BRIGHTNESS_SETTING_LIMITS:J = 0x10b00000021L

.field public static final blacklist SCREEN_OFF_TIMEOUT_SETTING_MS:J = 0x10500000016L

.field public static final blacklist SLEEP_TIMEOUT_SETTING_MS:J = 0x11100000017L

.field public static final blacklist STAY_ON_WHILE_PLUGGED_IN:J = 0x10b0000001aL

.field public static final blacklist USER_ACTIVITY_TIMEOUT_OVERRIDE_FROM_WINDOW_MANAGER_MS:J = 0x1120000001dL


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
