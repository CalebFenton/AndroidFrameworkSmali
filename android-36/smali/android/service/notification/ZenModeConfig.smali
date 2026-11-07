.class public Landroid/service/notification/ZenModeConfig;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$ZenRule;,
        Landroid/service/notification/ZenModeConfig$ScheduleInfo;,
        Landroid/service/notification/ZenModeConfig$EventInfo;,
        Landroid/service/notification/ZenModeConfig$ConfigOrigin;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALLOW_ATT_ALARMS:Ljava/lang/String; = "alarms"

.field private static final greylist-max-o ALLOW_ATT_CALLS:Ljava/lang/String; = "calls"

.field private static final greylist-max-o ALLOW_ATT_CALLS_FROM:Ljava/lang/String; = "callsFrom"

.field private static final blacklist ALLOW_ATT_CHANNELS:Ljava/lang/String; = "priorityChannelsAllowed"

.field private static final blacklist ALLOW_ATT_CONV:Ljava/lang/String; = "convos"

.field private static final blacklist ALLOW_ATT_CONV_FROM:Ljava/lang/String; = "convosFrom"

.field private static final greylist-max-o ALLOW_ATT_EVENTS:Ljava/lang/String; = "events"

.field private static final greylist-max-o ALLOW_ATT_FROM:Ljava/lang/String; = "from"

.field private static final greylist-max-o ALLOW_ATT_MEDIA:Ljava/lang/String; = "media"

.field private static final greylist-max-o ALLOW_ATT_MESSAGES:Ljava/lang/String; = "messages"

.field private static final greylist-max-o ALLOW_ATT_MESSAGES_FROM:Ljava/lang/String; = "messagesFrom"

.field private static final greylist-max-o ALLOW_ATT_REMINDERS:Ljava/lang/String; = "reminders"

.field private static final greylist-max-o ALLOW_ATT_REPEAT_CALLERS:Ljava/lang/String; = "repeatCallers"

.field private static final greylist-max-o ALLOW_ATT_SCREEN_OFF:Ljava/lang/String; = "visualScreenOff"

.field private static final greylist-max-o ALLOW_ATT_SCREEN_ON:Ljava/lang/String; = "visualScreenOn"

.field private static final greylist-max-o ALLOW_ATT_SYSTEM:Ljava/lang/String; = "system"

.field private static final greylist-max-o ALLOW_TAG:Ljava/lang/String; = "allow"

.field public static final greylist-max-o ALL_DAYS:[I

.field private static final blacklist AUTOMATIC_DELETED_TAG:Ljava/lang/String; = "deleted"

.field private static final greylist-max-o AUTOMATIC_TAG:Ljava/lang/String; = "automatic"

.field private static final greylist-max-o CONDITION_ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o CONDITION_ATT_ICON:Ljava/lang/String; = "icon"

.field private static final greylist-max-o CONDITION_ATT_ID:Ljava/lang/String; = "id"

.field private static final greylist-max-o CONDITION_ATT_LINE1:Ljava/lang/String; = "line1"

.field private static final greylist-max-o CONDITION_ATT_LINE2:Ljava/lang/String; = "line2"

.field private static final blacklist CONDITION_ATT_SOURCE:Ljava/lang/String; = "source"

.field private static final greylist-max-o CONDITION_ATT_STATE:Ljava/lang/String; = "state"

.field private static final greylist-max-o CONDITION_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field public static final greylist-max-o COUNTDOWN_PATH:Ljava/lang/String; = "countdown"

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CUSTOM_MANUAL_CONDITION_ID:Landroid/net/Uri;

.field public static final blacklist CUSTOM_MANUAL_PATH:Ljava/lang/String; = "custom_manual"

.field private static final greylist-max-o DAY_MINUTES:I = 0x5a0

.field private static final greylist-max-o DEFAULT_ALLOW_ALARMS:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_CALLS:Z = true

.field private static final blacklist DEFAULT_ALLOW_CONV:Z = true

.field private static final blacklist DEFAULT_ALLOW_CONV_FROM:I = 0x2

.field private static final greylist-max-o DEFAULT_ALLOW_EVENTS:Z = false

.field private static final greylist-max-o DEFAULT_ALLOW_MEDIA:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_MESSAGES:Z = true

.field private static final blacklist DEFAULT_ALLOW_PRIORITY_CHANNELS:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_REMINDERS:Z = false

.field private static final greylist-max-o DEFAULT_ALLOW_REPEAT_CALLERS:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_SYSTEM:Z = false

.field private static final greylist-max-o DEFAULT_CALLS_SOURCE:I = 0x2

.field private static final blacklist DEFAULT_HAS_PRIORITY_CHANNELS:Z = false

.field private static final greylist-max-o DEFAULT_SOURCE:I = 0x2

.field private static final greylist-max-o DEFAULT_SUPPRESSED_VISUAL_EFFECTS:I = 0x9d

.field private static final blacklist DEVICE_EFFECT_DIM_WALLPAPER:Ljava/lang/String; = "zdeDimWallpaper"

.field private static final blacklist DEVICE_EFFECT_DISABLE_AUTO_BRIGHTNESS:Ljava/lang/String; = "zdeDisableAutoBrightness"

.field private static final blacklist DEVICE_EFFECT_DISABLE_TAP_TO_WAKE:Ljava/lang/String; = "zdeDisableTapToWake"

.field private static final blacklist DEVICE_EFFECT_DISABLE_TILT_TO_WAKE:Ljava/lang/String; = "zdeDisableTiltToWake"

.field private static final blacklist DEVICE_EFFECT_DISABLE_TOUCH:Ljava/lang/String; = "zdeDisableTouch"

.field private static final blacklist DEVICE_EFFECT_DISPLAY_GRAYSCALE:Ljava/lang/String; = "zdeDisplayGrayscale"

.field private static final blacklist DEVICE_EFFECT_EXTRAS:Ljava/lang/String; = "zdeExtraEffects"

.field private static final blacklist DEVICE_EFFECT_MAXIMIZE_DOZE:Ljava/lang/String; = "zdeMaximizeDoze"

.field private static final blacklist DEVICE_EFFECT_MINIMIZE_RADIO_USAGE:Ljava/lang/String; = "zdeMinimizeRadioUsage"

.field private static final blacklist DEVICE_EFFECT_SUPPRESS_AMBIENT_DISPLAY:Ljava/lang/String; = "zdeSuppressAmbientDisplay"

.field private static final blacklist DEVICE_EFFECT_USER_MODIFIED_FIELDS:Ljava/lang/String; = "zdeUserModifiedFields"

.field private static final blacklist DEVICE_EFFECT_USE_NIGHT_LIGHT:Ljava/lang/String; = "zdeUseNightLight"

.field private static final blacklist DEVICE_EFFECT_USE_NIGHT_MODE:Ljava/lang/String; = "zdeUseNightMode"

.field private static final greylist-max-o DISALLOW_ATT_VISUAL_EFFECTS:Ljava/lang/String; = "visualEffects"

.field private static final greylist-max-o DISALLOW_TAG:Ljava/lang/String; = "disallow"

.field public static final blacklist EVENTS_OBSOLETE_RULE_ID:Ljava/lang/String; = "EVENTS_DEFAULT_RULE"

.field public static final greylist-max-o EVENT_PATH:Ljava/lang/String; = "event"

.field public static final greylist-max-o EVERY_NIGHT_DEFAULT_RULE_ID:Ljava/lang/String; = "EVERY_NIGHT_DEFAULT_RULE"

.field private static final blacklist IMPLICIT_RULE_ID_PREFIX:Ljava/lang/String; = "implicit_"

.field public static final greylist-max-o IS_ALARM_PATH:Ljava/lang/String; = "alarm"

.field private static final blacklist ITEM_SEPARATOR:Ljava/lang/String; = ","

.field private static final blacklist ITEM_SEPARATOR_ESCAPE:Ljava/lang/String; = "\\"

.field private static final blacklist ITEM_SPLITTER_REGEX:Ljava/util/regex/Pattern;

.field private static final blacklist LEGACY_SUPPRESSED_EFFECTS:I = 0x3

.field public static final blacklist MANUAL_RULE_ID:Ljava/lang/String; = "MANUAL_RULE"

.field private static final greylist-max-o MANUAL_TAG:Ljava/lang/String; = "manual"

.field private static final greylist-max-o MAX_SOURCE:I = 0x2

.field private static final greylist-max-o MINUTES_MS:I = 0xea60

.field public static final greylist-max-o MINUTE_BUCKETS:[I

.field public static final blacklist ORIGIN_APP:I = 0x4

.field public static final blacklist ORIGIN_INIT:I = 0x1

.field public static final blacklist ORIGIN_INIT_USER:I = 0x2

.field public static final blacklist ORIGIN_RESTORE_BACKUP:I = 0x6

.field public static final blacklist ORIGIN_SYSTEM:I = 0x5

.field public static final blacklist ORIGIN_UNKNOWN:I = 0x0

.field public static final blacklist ORIGIN_USER_IN_APP:I = 0x7

.field public static final blacklist ORIGIN_USER_IN_SYSTEMUI:I = 0x3

.field private static final blacklist POLICY_USER_MODIFIED_FIELDS:Ljava/lang/String; = "policyUserModifiedFields"

.field private static final blacklist RULE_ATT_ALLOW_MANUAL:Ljava/lang/String; = "userInvokable"

.field private static final greylist-max-o RULE_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final greylist-max-o RULE_ATT_CONDITION_ID:Ljava/lang/String; = "conditionId"

.field private static final blacklist RULE_ATT_CONDITION_OVERRIDE:Ljava/lang/String; = "conditionOverride"

.field private static final blacklist RULE_ATT_CONFIG_ACTIVITY:Ljava/lang/String; = "configActivity"

.field private static final greylist-max-o RULE_ATT_CREATION_TIME:Ljava/lang/String; = "creationTime"

.field private static final blacklist RULE_ATT_DELETION_INSTANT:Ljava/lang/String; = "deletionInstant"

.field private static final blacklist RULE_ATT_DISABLED_ORIGIN:Ljava/lang/String; = "disabledOrigin"

.field private static final greylist-max-o RULE_ATT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final greylist-max-o RULE_ATT_ENABLER:Ljava/lang/String; = "enabler"

.field private static final blacklist RULE_ATT_ICON:Ljava/lang/String; = "rule_icon"

.field private static final greylist-max-o RULE_ATT_ID:Ljava/lang/String; = "ruleId"

.field private static final blacklist RULE_ATT_LAST_ACTIVATION:Ljava/lang/String; = "lastActivation"

.field private static final blacklist RULE_ATT_LEGACY_SUPPRESSED_EFFECTS:Ljava/lang/String; = "legacySuppressedEffects"

.field private static final greylist-max-o RULE_ATT_NAME:Ljava/lang/String; = "name"

.field private static final blacklist RULE_ATT_PKG:Ljava/lang/String; = "pkg"

.field private static final blacklist RULE_ATT_TRIGGER_DESC:Ljava/lang/String; = "triggerDesc"

.field private static final blacklist RULE_ATT_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist RULE_ATT_USER_MODIFIED_FIELDS:Ljava/lang/String; = "userModifiedFields"

.field private static final greylist-max-o RULE_ATT_ZEN:Ljava/lang/String; = "zen"

.field public static final greylist-max-o SCHEDULE_PATH:Ljava/lang/String; = "schedule"

.field private static final greylist-max-o SECONDS_MS:I = 0x3e8

.field private static final blacklist SHOW_ATT_AMBIENT:Ljava/lang/String; = "showAmbient"

.field private static final blacklist SHOW_ATT_BADGES:Ljava/lang/String; = "showBadges"

.field private static final blacklist SHOW_ATT_FULL_SCREEN_INTENT:Ljava/lang/String; = "showFullScreenIntent"

.field private static final blacklist SHOW_ATT_LIGHTS:Ljava/lang/String; = "showLights"

.field private static final blacklist SHOW_ATT_NOTIFICATION_LIST:Ljava/lang/String; = "showNotificationList"

.field private static final blacklist SHOW_ATT_PEEK:Ljava/lang/String; = "shoePeek"

.field private static final blacklist SHOW_ATT_STATUS_BAR_ICONS:Ljava/lang/String; = "showStatusBarIcons"

.field public static final greylist-max-o SOURCE_ANYONE:I = 0x0

.field public static final greylist-max-o SOURCE_CONTACT:I = 0x1

.field public static final greylist-max-o SOURCE_STAR:I = 0x2

.field private static final blacklist STATE_HAS_PRIORITY_CHANNELS:Ljava/lang/String; = "areChannelsBypassingDnd"

.field private static final greylist-max-o STATE_TAG:Ljava/lang/String; = "state"

.field public static final greylist-max-o SYSTEM_AUTHORITY:Ljava/lang/String; = "android"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ZenModeConfig"

.field public static final blacklist XML_VERSION_MODES_API:I = 0xb

.field public static final blacklist XML_VERSION_MODES_UI:I = 0xc

.field public static final blacklist XML_VERSION_ZEN_UPGRADE:I = 0x8

.field private static final greylist-max-o ZEN_ATT_USER:Ljava/lang/String; = "user"

.field private static final greylist-max-o ZEN_ATT_VERSION:Ljava/lang/String; = "version"

.field public static final greylist-max-o ZEN_TAG:Ljava/lang/String; = "zen"

.field private static final greylist-max-o ZERO_VALUE_MS:I = 0x2710


# instance fields
.field public greylist allowAlarms:Z

.field public greylist-max-o allowCalls:Z

.field public greylist-max-o allowCallsFrom:I

.field public blacklist allowConversations:Z

.field public blacklist allowConversationsFrom:I

.field public greylist-max-o allowEvents:Z

.field public greylist-max-o allowMedia:Z

.field public greylist-max-o allowMessages:Z

.field public greylist-max-o allowMessagesFrom:I

.field public blacklist allowPriorityChannels:Z

.field public greylist-max-o allowReminders:Z

.field public greylist-max-o allowRepeatCallers:Z

.field public greylist-max-o allowSystem:Z

.field public greylist automaticRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist deletedRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist hasPriorityChannels:Z

.field public greylist-max-o manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

.field public greylist-max-o suppressedVisualEffects:I

.field public greylist-max-o user:I

.field public greylist-max-o version:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smtoDayList([I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 210
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    .line 213
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->generateMinuteBuckets()[I

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    .line 332
    const-string v0, "(?<!\\\\),"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ITEM_SPLITTER_REGEX:Ljava/util/regex/Pattern;

    .line 1648
    new-instance v0, Landroid/service/notification/ZenModeConfig$1;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2471
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 2472
    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2473
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2474
    const-string v1, "custom_manual"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2475
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->CUSTOM_MANUAL_CONDITION_ID:Landroid/net/Uri;

    .line 2471
    return-void

    nop

    :array_3c
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor greylist <init>()V
    .registers 4

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 336
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 337
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 338
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 339
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 340
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 341
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 342
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 343
    const/4 v2, 0x2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 344
    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 345
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 346
    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 347
    iput v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 348
    const/16 v2, 0x9d

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 353
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 354
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    .line 358
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 363
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    .line 367
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 368
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->ensureManualZenRule()V

    .line 370
    :cond_3f
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 336
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 337
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 338
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 339
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 340
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 341
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 342
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 343
    const/4 v2, 0x2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 344
    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 345
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 346
    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 347
    iput v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 348
    const/16 v2, 0x9d

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 353
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 354
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    .line 358
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 363
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    .line 373
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_44

    move v2, v0

    goto :goto_45

    :cond_44
    move v2, v1

    :goto_45
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4f

    move v2, v0

    goto :goto_50

    :cond_4f
    move v2, v1

    :goto_50
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_5a

    move v2, v0

    goto :goto_5b

    :cond_5a
    move v2, v1

    :goto_5b
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_65

    move v2, v0

    goto :goto_66

    :cond_65
    move v2, v1

    :goto_66
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_70

    move v2, v0

    goto :goto_71

    :cond_70
    move v2, v1

    :goto_71
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 382
    :cond_7f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 383
    const/4 v2, 0x0

    const-class v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 384
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v2, p1}, Landroid/service/notification/ZenModeConfig;->readRulesFromParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;)V

    .line 385
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-static {v2, p1}, Landroid/service/notification/ZenModeConfig;->readRulesFromParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;)V

    .line 386
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v2

    if-nez v2, :cond_c7

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_a8

    move v2, v0

    goto :goto_a9

    :cond_a8
    move v2, v1

    :goto_a9
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_b3

    move v2, v0

    goto :goto_b4

    :cond_b3
    move v2, v1

    :goto_b4
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_be

    move v2, v0

    goto :goto_bf

    :cond_be
    move v2, v1

    :goto_bf
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 392
    :cond_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_ce

    goto :goto_cf

    :cond_ce
    move v0, v1

    :goto_cf
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 393
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_e9

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    .line 398
    :cond_e9
    return-void
.end method

.method public static blacklist areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z
    .registers 11
    .param p0, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 3052
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 3054
    .local v0, "allowReminders":Z
    :goto_a
    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    .line 3056
    .local v3, "allowCalls":Z
    :goto_13
    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1b

    move v4, v1

    goto :goto_1c

    :cond_1b
    move v4, v2

    .line 3058
    .local v4, "allowMessages":Z
    :goto_1c
    iget v5, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_24

    move v5, v1

    goto :goto_25

    :cond_24
    move v5, v2

    .line 3060
    .local v5, "allowEvents":Z
    :goto_25
    iget v6, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_2d

    move v6, v1

    goto :goto_2e

    :cond_2d
    move v6, v2

    .line 3062
    .local v6, "allowRepeatCallers":Z
    :goto_2e
    iget v7, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_36

    move v7, v1

    goto :goto_37

    :cond_36
    move v7, v2

    .line 3064
    .local v7, "allowConversations":Z
    :goto_37
    nop

    .line 3065
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->hasPriorityChannels()Z

    move-result v8

    if-eqz v8, :cond_46

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v8

    if-eqz v8, :cond_46

    move v8, v1

    goto :goto_47

    :cond_46
    move v8, v2

    .line 3066
    .local v8, "areChannelsBypassingDnd":Z
    :goto_47
    iget v9, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_4f

    move v9, v1

    goto :goto_50

    :cond_4f
    move v9, v2

    .line 3067
    .local v9, "allowSystem":Z
    :goto_50
    if-nez v0, :cond_61

    if-nez v3, :cond_61

    if-nez v4, :cond_61

    if-nez v5, :cond_61

    if-nez v6, :cond_61

    if-nez v8, :cond_61

    if-nez v9, :cond_61

    if-nez v7, :cond_61

    goto :goto_62

    :cond_61
    move v1, v2

    :goto_62
    return v1
.end method

.method public static blacklist areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z
    .registers 5
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 3097
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_41

    .line 3098
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 3099
    .local v0, "policy":Landroid/service/notification/ZenPolicy;
    invoke-virtual {v0, v2, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 3100
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 3101
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 3102
    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 3103
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 3104
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_3f

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    if-eqz v3, :cond_3e

    .line 3105
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v3

    if-eq v3, v1, :cond_3f

    :cond_3e
    goto :goto_40

    :cond_3f
    move v1, v2

    .line 3099
    :goto_40
    return v1

    .line 3109
    .end local v0    # "policy":Landroid/service/notification/ZenPolicy;
    :cond_41
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    if-eqz v0, :cond_4d

    .line 3110
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowPriorityChannels()Z

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v1

    goto :goto_4e

    :cond_4d
    move v0, v2

    .line 3111
    .local v0, "areChannelsBypassingDnd":Z
    :goto_4e
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowReminders()Z

    move-result v3

    if-nez v3, :cond_75

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowCalls()Z

    move-result v3

    if-nez v3, :cond_75

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowMessages()Z

    move-result v3

    if-nez v3, :cond_75

    .line 3112
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowEvents()Z

    move-result v3

    if-nez v3, :cond_75

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowRepeatCallers()Z

    move-result v3

    if-nez v3, :cond_75

    if-nez v0, :cond_75

    .line 3113
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowSystem()Z

    move-result v3

    if-nez v3, :cond_75

    goto :goto_76

    :cond_75
    move v1, v2

    .line 3111
    :goto_76
    return v1
.end method

.method public static blacklist areAllZenBehaviorSoundsMuted(Landroid/app/NotificationManager$Policy;)Z
    .registers 6
    .param p0, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 3077
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 3078
    .local v0, "allowAlarms":Z
    :goto_b
    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_13

    move v3, v1

    goto :goto_14

    :cond_13
    move v3, v2

    .line 3079
    .local v3, "allowMedia":Z
    :goto_14
    if-nez v0, :cond_1f

    if-nez v3, :cond_1f

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public static greylist-max-o areAllZenBehaviorSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z
    .registers 5
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 3121
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 3122
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 3123
    .local v0, "policy":Landroid/service/notification/ZenPolicy;
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_21

    .line 3124
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_21

    .line 3125
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    .line 3123
    :goto_22
    return v1

    .line 3127
    .end local v0    # "policy":Landroid/service/notification/ZenPolicy;
    :cond_23
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowAlarms()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowMedia()Z

    move-result v0

    if-nez v0, :cond_36

    .line 3128
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    .line 3127
    :goto_37
    return v1
.end method

.method public static blacklist deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;
    .registers 3
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1091
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_29

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1094
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o generateMinuteBuckets()[I
    .registers 5

    .line 820
    const/16 v0, 0xc

    .line 821
    .local v0, "maxHrs":I
    const/16 v1, 0xf

    new-array v2, v1, [I

    .line 822
    .local v2, "buckets":[I
    const/4 v3, 0x0

    aput v1, v2, v3

    .line 823
    const/4 v1, 0x1

    const/16 v3, 0x1e

    aput v3, v2, v1

    .line 824
    const/4 v1, 0x2

    const/16 v3, 0x2d

    aput v3, v2, v1

    .line 825
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_14
    const/16 v3, 0xc

    if-gt v1, v3, :cond_21

    .line 826
    add-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x3c

    aput v4, v2, v3

    .line 825
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 828
    .end local v1    # "i":I
    :cond_21
    return-object v2
.end method

.method public static blacklist getCurrentXmlVersion()I
    .registers 1

    .line 935
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 936
    const/16 v0, 0xc

    return v0

    .line 938
    :cond_9
    const/16 v0, 0xb

    return v0
.end method

.method public static blacklist getCustomManualConditionProvider()Landroid/content/ComponentName;
    .registers 3

    .line 2492
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "CustomManualConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getDefaultConfig()Landroid/service/notification/ZenModeConfig;
    .registers 6

    .line 423
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 425
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    new-instance v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 426
    .local v1, "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const/4 v2, 0x7

    new-array v3, v2, [I

    fill-array-data v3, :array_42

    iput-object v3, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 427
    const/16 v3, 0x16

    iput v3, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 428
    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 429
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 430
    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 431
    .local v3, "sleeping":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string v4, "EVERY_NIGHT_DEFAULT_RULE"

    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 432
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 433
    const-string v5, "android/com.android.server.notification.ScheduleConditionProvider"

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 435
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 436
    iput v2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 437
    const-string v2, "android"

    iput-object v2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 438
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    return-object v0

    nop

    :array_42
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public static blacklist getDefaultRuleIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 445
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const-string v1, "EVERY_NIGHT_DEFAULT_RULE"

    if-eqz v0, :cond_d

    .line 446
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_13

    .line 447
    :cond_d
    const-string v0, "EVENTS_DEFAULT_RULE"

    invoke-static {v1, v0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 445
    :goto_13
    return-object v0
.end method

.method public static blacklist getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;
    .registers 4

    .line 401
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 402
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 403
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 404
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 405
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 406
    invoke-virtual {v0, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 407
    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 408
    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 409
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 410
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 412
    invoke-virtual {v0, v2, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 413
    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 414
    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 415
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 416
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 418
    .local v0, "policy":Landroid/service/notification/ZenPolicy;
    return-object v0
.end method

.method public static greylist-max-o getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zenOn"    # Z
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "describeForeverCondition"    # Z

    .line 3146
    const/4 v0, 0x0

    if-eqz p1, :cond_ad

    if-nez p2, :cond_7

    goto/16 :goto_ad

    .line 3150
    :cond_7
    const-string v1, ""

    .line 3151
    .local v1, "secondaryText":Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 3154
    .local v2, "latestEndTime":J
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 3155
    iget-object v4, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 3156
    .local v4, "id":Landroid/net/Uri;
    iget-object v5, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v5, :cond_2b

    .line 3158
    iget-object v5, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-static {p0, v5}, Landroid/service/notification/ZenModeConfig;->getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3159
    .local v5, "appName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2a

    .line 3160
    move-object v1, v5

    .line 3162
    .end local v5    # "appName":Ljava/lang/String;
    :cond_2a
    goto :goto_64

    .line 3163
    :cond_2b
    if-eqz v4, :cond_59

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v5, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    goto :goto_59

    .line 3171
    :cond_36
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 3172
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_64

    .line 3173
    nop

    .line 3174
    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v5

    .line 3175
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 3173
    invoke-static {p0, v2, v3, v5, v6}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3176
    .local v5, "formattedTime":Ljava/lang/CharSequence;
    const v6, 0x1040b09

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_64

    .line 3165
    .end local v5    # "formattedTime":Ljava/lang/CharSequence;
    :cond_59
    :goto_59
    if-eqz p3, :cond_63

    .line 3166
    const v0, 0x1040afd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3168
    :cond_63
    return-object v0

    .line 3183
    .end local v4    # "id":Landroid/net/Uri;
    :cond_64
    :goto_64
    iget-object v4, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 3184
    .local v5, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 3185
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_94

    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 3186
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_91

    goto :goto_94

    .line 3195
    :cond_91
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    return-object v0

    .line 3188
    :cond_94
    :goto_94
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {p0, v6}, Landroid/service/notification/ZenModeConfig;->parseAutomaticRuleEndTime(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v6

    .line 3189
    .local v6, "endTime":J
    cmp-long v8, v6, v2

    if-lez v8, :cond_a1

    .line 3190
    move-wide v2, v6

    .line 3191
    iget-object v1, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 3193
    .end local v6    # "endTime":J
    :cond_a1
    nop

    .line 3198
    .end local v5    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_a2
    goto :goto_6e

    .line 3200
    :cond_a3
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ac

    move-object v0, v1

    :cond_ac
    return-object v0

    .line 3147
    .end local v1    # "secondaryText":Ljava/lang/String;
    .end local v2    # "latestEndTime":J
    :cond_ad
    :goto_ad
    return-object v0
.end method

.method public static greylist-max-o getEventConditionProvider()Landroid/content/ComponentName;
    .registers 3

    .line 2426
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "EventConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "isSameDay"    # Z
    .param p4, "userHandle"    # I

    .line 2159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_a

    const-string v1, "EEE "

    goto :goto_c

    :cond_a
    const-string v1, ""

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2160
    invoke-static {p0, p4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "Hm"

    goto :goto_1c

    :cond_19
    const-string/jumbo v1, "hma"

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2161
    .local v0, "skeleton":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2162
    .local v1, "pattern":Ljava/lang/String;
    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o getNextAlarm(Landroid/content/Context;)J
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 3229
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3230
    .local v0, "alarms":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v1

    .line 3231
    .local v1, "info":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    goto :goto_19

    :cond_17
    const-wide/16 v2, 0x0

    :goto_19
    return-wide v2
.end method

.method public static greylist-max-o getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "owner"    # Ljava/lang/String;

    .line 2529
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2531
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2532
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_20

    .line 2533
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2534
    .local v2, "seq":Ljava/lang/CharSequence;
    if-eqz v2, :cond_20

    .line 2535
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2536
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    if-lez v4, :cond_20

    .line 2537
    return-object v3

    .line 2543
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "seq":Ljava/lang/CharSequence;
    .end local v3    # "str":Ljava/lang/String;
    :cond_20
    goto :goto_29

    .line 2541
    :catchall_21
    move-exception v1

    .line 2542
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "ZenModeConfig"

    const-string v3, "Error loading owner caption"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2544
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_29
    const-string v1, ""

    return-object v1
.end method

.method public static greylist-max-o getScheduleConditionProvider()Landroid/content/ComponentName;
    .registers 3

    .line 2315
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "ScheduleConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist implicitRuleId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "forPackage"    # Ljava/lang/String;

    .line 2499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "implicit_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isImplicitRuleId(Ljava/lang/String;)Z
    .registers 2
    .param p0, "ruleId"    # Ljava/lang/String;

    .line 2504
    if-eqz p0, :cond_d

    const-string/jumbo v0, "implicit_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private blacklist isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z
    .registers 4
    .param p1, "categoryType"    # I
    .param p2, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 1840
    iget v0, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static greylist-max-o isToday(J)Z
    .registers 7
    .param p0, "time"    # J

    .line 2169
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 2170
    .local v0, "now":Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 2171
    .local v1, "endTime":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 2172
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_2f

    .line 2173
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_2f

    .line 2174
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_2f

    .line 2175
    return v2

    .line 2177
    :cond_2f
    const/4 v2, 0x0

    return v2
.end method

.method private static greylist-max-o isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 2
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 806
    if-eqz p0, :cond_1e

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_1e

    .line 807
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 806
    :goto_1f
    return v0
.end method

.method public static greylist-max-o isValidCountdownConditionId(Landroid/net/Uri;)Z
    .registers 5
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2219
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static greylist-max-o isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z
    .registers 5
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2226
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 2227
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_52

    .line 2228
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_52

    .line 2232
    :cond_28
    :try_start_28
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_37} :catch_38

    return v0

    .line 2233
    :catch_38
    move-exception v0

    .line 2234
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing countdown alarm condition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZenModeConfig"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2235
    return v1

    .line 2229
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_52
    :goto_52
    return v1

    .line 2238
    :cond_53
    return v1
.end method

.method public static blacklist isValidCustomManualConditionId(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2487
    sget-object v0, Landroid/service/notification/ZenModeConfig;->CUSTOM_MANUAL_CONDITION_ID:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isValidEventConditionId(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2399
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static greylist-max-o isValidHour(I)Z
    .registers 2
    .param p0, "val"    # I

    .line 1550
    if-ltz p0, :cond_8

    const/16 v0, 0x18

    if-ge p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static greylist-max-o isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 2
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 802
    if-eqz p0, :cond_13

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static greylist-max-o isValidMinute(I)Z
    .registers 2
    .param p0, "val"    # I

    .line 1554
    if-ltz p0, :cond_8

    const/16 v0, 0x3c

    if-ge p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static greylist-max-o isValidScheduleConditionId(Landroid/net/Uri;)Z
    .registers 4
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2259
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_5} :catch_15
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_5} :catch_15

    .line 2262
    .local v1, "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    nop

    .line 2264
    if-eqz v1, :cond_14

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v2, :cond_14

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v2, v2

    if-nez v2, :cond_12

    goto :goto_14

    .line 2267
    :cond_12
    const/4 v0, 0x1

    return v0

    .line 2265
    :cond_14
    :goto_14
    return v0

    .line 2260
    .end local v1    # "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :catch_15
    move-exception v1

    .line 2261
    .local v1, "e":Ljava/lang/RuntimeException;
    return v0
.end method

.method public static blacklist isValidScheduleConditionId(Landroid/net/Uri;Z)Z
    .registers 5
    .param p0, "conditionId"    # Landroid/net/Uri;
    .param p1, "allowNever"    # Z

    .line 2277
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_5} :catch_17
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_5} :catch_17

    .line 2280
    .local v1, "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    nop

    .line 2282
    if-eqz v1, :cond_16

    if-nez p1, :cond_14

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v2, :cond_16

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v2, v2

    if-nez v2, :cond_14

    goto :goto_16

    .line 2285
    :cond_14
    const/4 v0, 0x1

    return v0

    .line 2283
    :cond_16
    :goto_16
    return v0

    .line 2278
    .end local v1    # "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :catch_17
    move-exception v1

    .line 2279
    .local v1, "e":Ljava/lang/RuntimeException;
    return v0
.end method

.method private static greylist-max-o isValidSource(I)Z
    .registers 2
    .param p0, "source"    # I

    .line 1558
    if-ltz p0, :cond_7

    const/4 v0, 0x2

    if-gt p0, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private blacklist isVisualEffectAllowed(II)Z
    .registers 4
    .param p1, "suppressedVisualEffects"    # I
    .param p2, "visualEffect"    # I

    .line 1848
    and-int v0, p1, p2

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z
    .registers 4
    .param p1, "visualEffect"    # I
    .param p2, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 1844
    iget v0, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v0, p1

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static blacklist isZenOverridingRinger(ILandroid/app/NotificationManager$Policy;)Z
    .registers 4
    .param p0, "zen"    # I
    .param p1, "consolidatedPolicy"    # Landroid/app/NotificationManager$Policy;

    .line 3086
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    if-ne p0, v1, :cond_10

    .line 3089
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    nop

    .line 3086
    :goto_13
    return v1
.end method

.method public static greylist-max-o newRuleId()Ljava/lang/String;
    .registers 3

    .line 2522
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist normalizeConversationSenders(ZII)I
    .registers 5
    .param p0, "allowed"    # Z
    .param p1, "senders"    # I
    .param p2, "def"    # I

    .line 2039
    const/4 v0, 0x3

    if-nez p0, :cond_4

    .line 2040
    return v0

    .line 2042
    :cond_4
    const/4 v1, 0x1

    if-eq p1, v1, :cond_d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_d

    if-eq p1, v0, :cond_d

    .line 2045
    return p2

    .line 2047
    :cond_d
    return p1
.end method

.method private static blacklist normalizePrioritySenders(II)I
    .registers 3
    .param p0, "prioritySenders"    # I
    .param p1, "def"    # I

    .line 2030
    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    if-eqz p0, :cond_9

    .line 2033
    return p1

    .line 2035
    :cond_9
    return p0
.end method

.method private static greylist-max-o parseAutomaticRuleEndTime(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Landroid/net/Uri;

    .line 3204
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3206
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 3209
    :cond_c
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3210
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    move-result-object v0

    .line 3211
    .local v0, "schedule":Landroid/service/notification/ScheduleCalendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide v1

    .line 3214
    .local v1, "endTimeMs":J
    invoke-virtual {v0}, Landroid/service/notification/ScheduleCalendar;->exitAtAlarm()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 3215
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->getNextAlarm(Landroid/content/Context;)J

    move-result-wide v3

    .line 3216
    .local v3, "nextAlarm":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/service/notification/ScheduleCalendar;->maybeSetNextAlarm(JJ)V

    .line 3217
    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ScheduleCalendar;->shouldExitForAlarm(J)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 3218
    return-wide v3

    .line 3222
    .end local v3    # "nextAlarm":J
    :cond_36
    return-wide v1

    .line 3225
    .end local v0    # "schedule":Landroid/service/notification/ScheduleCalendar;
    .end local v1    # "endTimeMs":J
    :cond_37
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static blacklist readConditionXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/Condition;
    .registers 12
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 1283
    const-string/jumbo v0, "id"

    invoke-static {p0, v0}, Landroid/service/notification/ZenModeConfig;->safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1284
    .local v2, "id":Landroid/net/Uri;
    const/4 v10, 0x0

    if-nez v2, :cond_b

    return-object v10

    .line 1285
    :cond_b
    const-string/jumbo v0, "summary"

    invoke-interface {p0, v10, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1286
    .local v3, "summary":Ljava/lang/String;
    const-string/jumbo v0, "line1"

    invoke-interface {p0, v10, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1287
    .local v4, "line1":Ljava/lang/String;
    const-string/jumbo v0, "line2"

    invoke-interface {p0, v10, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1288
    .local v5, "line2":Ljava/lang/String;
    const-string/jumbo v0, "icon"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 1289
    .local v6, "icon":I
    const-string/jumbo v0, "state"

    invoke-static {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 1290
    .local v7, "state":I
    const-string v0, "flags"

    invoke-static {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 1292
    .local v9, "flags":I
    :try_start_35
    const-string/jumbo v0, "source"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 1293
    .local v8, "source":I
    new-instance v1, Landroid/service/notification/Condition;

    invoke-direct/range {v1 .. v9}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_42} :catch_43

    return-object v1

    .line 1294
    .end local v8    # "source":I
    :catch_43
    move-exception v0

    .line 1295
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ZenModeConfig"

    const-string v8, "Unable to read condition xml"

    invoke-static {v1, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1296
    return-object v10
.end method

.method public static blacklist readRuleXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 1174
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 1175
    .local v0, "rt":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1176
    const-string/jumbo v1, "name"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 1177
    const-string/jumbo v1, "zen"

    invoke-interface {p0, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1178
    .local v1, "zen":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/service/notification/ZenModeConfig;->tryParseZenMode(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 1179
    const-string v2, "conditionId"

    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 1180
    const-string v2, "component"

    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 1181
    const-string v2, "configActivity"

    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 1182
    const-string/jumbo v2, "pkg"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1183
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-nez v2, :cond_58

    .line 1185
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v2, :cond_55

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_56

    :cond_55
    move-object v2, v3

    :goto_56
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1187
    :cond_58
    const-string v2, "creationTime"

    const-wide/16 v4, 0x0

    invoke-static {p0, v2, v4, v5}, Landroid/service/notification/ZenModeConfig;->safeLong(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 1188
    const-string v2, "enabler"

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 1189
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/Condition;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1190
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readZenPolicyXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenPolicy;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1191
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readZenDeviceEffectsXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenDeviceEffects;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 1192
    const-string/jumbo v2, "userInvokable"

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 1193
    const-string/jumbo v2, "rule_icon"

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 1194
    const-string/jumbo v2, "triggerDesc"

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 1195
    const-string/jumbo v2, "type"

    const/4 v5, -0x1

    invoke-static {p0, v2, v5}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 1196
    const-string/jumbo v2, "userModifiedFields"

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 1197
    const-string/jumbo v2, "policyUserModifiedFields"

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 1198
    const-string/jumbo v2, "zdeUserModifiedFields"

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 1200
    const-string v2, "deletionInstant"

    invoke-static {p0, v2, v3}, Landroid/service/notification/ZenModeConfig;->safeInstant(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/time/Instant;)Ljava/time/Instant;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    .line 1201
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 1202
    const-string v2, "disabledOrigin"

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 1204
    const-string/jumbo v2, "legacySuppressedEffects"

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    .line 1206
    const-string v2, "conditionOverride"

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 1208
    invoke-static {}, Landroid/app/Flags;->modesCleanupImplicit()Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 1209
    const-string/jumbo v2, "lastActivation"

    invoke-static {p0, v2, v3}, Landroid/service/notification/ZenModeConfig;->safeInstant(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/time/Instant;)Ljava/time/Instant;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    .line 1213
    :cond_f3
    return-object v0
.end method

.method private static blacklist readRulesFromParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;)V
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 464
    .local p0, "ruleMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 465
    .local v0, "len":I
    if-lez v0, :cond_59

    .line 466
    new-array v1, v0, [Ljava/lang/String;

    .line 467
    .local v1, "ids":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readString8Array([Ljava/lang/String;)V

    .line 468
    const-class v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 469
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/content/pm/ParceledListSlice;

    .line 468
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 470
    .local v2, "parceledRules":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<*>;"
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    goto :goto_25

    :cond_20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v3, "rules":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v0, :cond_48

    .line 472
    nop

    .line 474
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 472
    const-string v5, "Unexpected parceled rules count (%s != %s), throwing them out"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ZenModeConfig"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x0

    .line 477
    :cond_48
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_49
    if-ge v4, v0, :cond_59

    .line 478
    aget-object v5, v1, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 481
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "parceledRules":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<*>;"
    .end local v3    # "rules":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "i":I
    :cond_59
    return-void
.end method

.method public static blacklist readXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/app/backup/BackupRestoreEventLogger;)Landroid/service/notification/ZenModeConfig;
    .registers 20
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "logger"    # Landroid/app/backup/BackupRestoreEventLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 944
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 945
    .local v2, "readRuleCount":I
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    .line 946
    .local v3, "type":I
    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_e

    return-object v4

    .line 947
    :cond_e
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 948
    .local v6, "tag":Ljava/lang/String;
    const-string/jumbo v7, "zen"

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    return-object v4

    .line 949
    :cond_1c
    new-instance v8, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v8}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 950
    .local v8, "rt":Landroid/service/notification/ZenModeConfig;
    const-string/jumbo v9, "version"

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getCurrentXmlVersion()I

    move-result v10

    invoke-static {v0, v9, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    iput v9, v8, Landroid/service/notification/ZenModeConfig;->version:I

    .line 951
    const-string/jumbo v9, "user"

    iget v10, v8, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v0, v9, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    iput v9, v8, Landroid/service/notification/ZenModeConfig;->user:I

    .line 952
    const/4 v9, 0x0

    .line 953
    .local v9, "readSuppressedEffects":Z
    const/4 v10, 0x0

    .line 954
    .local v10, "readManualRule":Z
    const/4 v11, 0x0

    .line 955
    .local v11, "readManualRuleWithoutPolicy":Z
    :goto_3c
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v12

    move v3, v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_260

    .line 956
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 957
    const/4 v12, 0x0

    if-ne v3, v5, :cond_200

    .line 958
    const-string v14, "allow"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_162

    .line 959
    const-string v14, "calls"

    invoke-static {v0, v14, v13}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 961
    const-string/jumbo v14, "repeatCallers"

    invoke-static {v0, v14, v13}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 963
    const-string/jumbo v14, "messages"

    invoke-static {v0, v14, v13}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 965
    const-string/jumbo v14, "reminders"

    invoke-static {v0, v14, v12}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 967
    const-string v14, "convos"

    invoke-static {v0, v14, v13}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 968
    const-string v14, "events"

    invoke-static {v0, v14, v12}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 969
    const-string v14, "from"

    const/4 v15, -0x1

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v14

    .line 970
    .local v14, "from":I
    const-string v4, "callsFrom"

    invoke-static {v0, v4, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 971
    .local v4, "callsFrom":I
    const-string/jumbo v12, "messagesFrom"

    invoke-static {v0, v12, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 972
    .local v12, "messagesFrom":I
    const-string v15, "convosFrom"

    invoke-static {v0, v15, v5}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v15

    iput v15, v8, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 974
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v15

    const-string v13, "ZenModeConfig"

    if-eqz v15, :cond_b5

    invoke-static {v12}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v15

    if-eqz v15, :cond_b5

    .line 975
    iput v4, v8, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 976
    iput v12, v8, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_e0

    .line 977
    :cond_b5
    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v15

    if-eqz v15, :cond_db

    .line 978
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Migrating existing shared \'from\': "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iput v14, v8, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 980
    iput v14, v8, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    const/4 v5, 0x2

    goto :goto_e0

    .line 982
    :cond_db
    const/4 v5, 0x2

    iput v5, v8, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 983
    iput v5, v8, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 985
    :goto_e0
    const-string v15, "alarms"

    const/4 v5, 0x1

    invoke-static {v0, v15, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v8, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 986
    const-string/jumbo v15, "media"

    invoke-static {v0, v15, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v8, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 988
    const-string/jumbo v15, "system"

    const/4 v5, 0x0

    invoke-static {v0, v15, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v8, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 989
    const-string/jumbo v5, "priorityChannelsAllowed"

    const/4 v15, 0x1

    invoke-static {v0, v5, v15}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v8, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    .line 993
    const-string/jumbo v5, "visualScreenOff"

    invoke-static {v0, v5}, Landroid/service/notification/ZenModeConfig;->unsafeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 994
    .local v5, "allowWhenScreenOff":Ljava/lang/Boolean;
    const-string/jumbo v15, "visualScreenOn"

    invoke-static {v0, v15}, Landroid/service/notification/ZenModeConfig;->unsafeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    .line 995
    .local v15, "allowWhenScreenOn":Ljava/lang/Boolean;
    if-nez v5, :cond_11c

    if-eqz v15, :cond_119

    goto :goto_11c

    :cond_119
    move/from16 v16, v2

    goto :goto_122

    .line 999
    :cond_11c
    :goto_11c
    const/4 v9, 0x1

    .line 1000
    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "readRuleCount":I
    .local v16, "readRuleCount":I
    iput v2, v8, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 1002
    :goto_122
    if-eqz v5, :cond_130

    .line 1003
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_130

    .line 1004
    iget v2, v8, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    or-int/lit16 v2, v2, 0x8c

    iput v2, v8, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 1009
    :cond_130
    if-eqz v15, :cond_13e

    .line 1010
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_13e

    .line 1011
    iget v2, v8, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v8, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 1014
    :cond_13e
    if-eqz v9, :cond_15b

    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v4

    .end local v4    # "callsFrom":I
    .local v17, "callsFrom":I
    const-string v4, "Migrated visual effects to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v8, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15d

    .line 1014
    .end local v17    # "callsFrom":I
    .restart local v4    # "callsFrom":I
    :cond_15b
    move/from16 v17, v4

    .line 1017
    .end local v4    # "callsFrom":I
    .end local v5    # "allowWhenScreenOff":Ljava/lang/Boolean;
    .end local v12    # "messagesFrom":I
    .end local v14    # "from":I
    .end local v15    # "allowWhenScreenOn":Ljava/lang/Boolean;
    :goto_15d
    move/from16 v2, v16

    const/4 v12, 0x0

    goto/16 :goto_205

    .end local v16    # "readRuleCount":I
    .restart local v2    # "readRuleCount":I
    :cond_162
    move/from16 v16, v2

    .end local v2    # "readRuleCount":I
    .restart local v16    # "readRuleCount":I
    const-string v2, "disallow"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17c

    if-nez v9, :cond_17c

    .line 1020
    const-string/jumbo v2, "visualEffects"

    const/16 v4, 0x9d

    invoke-static {v0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v8, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    const/4 v12, 0x0

    goto/16 :goto_203

    .line 1022
    :cond_17c
    const-string/jumbo v2, "manual"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a5

    .line 1023
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v2

    iput-object v2, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1025
    iget-object v2, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v15, 0x1

    iput-boolean v15, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1029
    const/4 v2, 0x1

    .line 1030
    .end local v10    # "readManualRule":Z
    .local v2, "readManualRule":Z
    iget-object v4, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-nez v4, :cond_19f

    .line 1031
    const/4 v4, 0x1

    move v10, v2

    move v11, v4

    move/from16 v2, v16

    const/4 v12, 0x0

    .end local v11    # "readManualRuleWithoutPolicy":Z
    .local v4, "readManualRuleWithoutPolicy":Z
    goto/16 :goto_205

    .line 1033
    .end local v4    # "readManualRuleWithoutPolicy":Z
    .restart local v11    # "readManualRuleWithoutPolicy":Z
    :cond_19f
    add-int/lit8 v4, v16, 0x1

    move v10, v2

    move v2, v4

    const/4 v12, 0x0

    .end local v16    # "readRuleCount":I
    .local v4, "readRuleCount":I
    goto :goto_205

    .line 1035
    .end local v2    # "readManualRule":Z
    .end local v4    # "readRuleCount":I
    .restart local v10    # "readManualRule":Z
    .restart local v16    # "readRuleCount":I
    :cond_1a5
    const-string v2, "automatic"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "deleted"

    if-nez v4, :cond_1cc

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b6

    goto :goto_1cc

    .line 1050
    :cond_1b6
    const-string/jumbo v2, "state"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ca

    .line 1051
    const-string v2, "areChannelsBypassingDnd"

    const/4 v5, 0x0

    invoke-static {v0, v2, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v8, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    const/4 v12, 0x0

    goto :goto_203

    .line 1050
    :cond_1ca
    const/4 v12, 0x0

    goto :goto_203

    .line 1036
    :cond_1cc
    :goto_1cc
    const-string/jumbo v4, "ruleId"

    const/4 v12, 0x0

    invoke-interface {v0, v12, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1037
    .local v4, "id":Ljava/lang/String;
    if-eqz v4, :cond_1fd

    .line 1038
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v13

    .line 1039
    .local v13, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-object v4, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 1040
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ee

    .line 1041
    invoke-static {v13}, Landroid/service/notification/ZenModeConfig;->deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object v2

    .line 1042
    .local v2, "deletedRuleKey":Ljava/lang/String;
    if-eqz v2, :cond_1fc

    .line 1043
    iget-object v5, v8, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1fc

    .line 1045
    .end local v2    # "deletedRuleKey":Ljava/lang/String;
    :cond_1ee
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fc

    .line 1046
    iget-object v2, v8, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "readRuleCount":I
    .local v2, "readRuleCount":I
    goto :goto_1ff

    .line 1045
    .end local v2    # "readRuleCount":I
    .restart local v16    # "readRuleCount":I
    :cond_1fc
    :goto_1fc
    nop

    .line 1050
    .end local v4    # "id":Ljava/lang/String;
    .end local v13    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1fd
    move/from16 v2, v16

    .end local v16    # "readRuleCount":I
    .restart local v2    # "readRuleCount":I
    :goto_1ff
    goto :goto_205

    .line 957
    :cond_200
    move/from16 v16, v2

    move-object v12, v4

    .line 1055
    .end local v2    # "readRuleCount":I
    .restart local v16    # "readRuleCount":I
    :goto_203
    move/from16 v2, v16

    .end local v16    # "readRuleCount":I
    .restart local v2    # "readRuleCount":I
    :goto_205
    const/4 v4, 0x3

    if-ne v3, v4, :cond_25c

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25c

    .line 1056
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v4

    if-eqz v4, :cond_24b

    if-eqz v10, :cond_218

    if-eqz v11, :cond_24b

    .line 1058
    :cond_218
    iget-object v4, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v8}, Landroid/service/notification/ZenModeConfig;->toZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v5

    iput-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1059
    if-eqz v11, :cond_24b

    .line 1063
    iget-object v4, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string v5, "android"

    iput-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1064
    iget-object v4, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v5, 0x0

    iput v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 1066
    iget-object v4, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v4, :cond_239

    .line 1067
    iget-object v4, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 1069
    :cond_239
    iget-object v4, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    new-instance v5, Landroid/service/notification/Condition;

    iget-object v7, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const-string v12, ""

    const/4 v15, 0x1

    invoke-direct {v5, v7, v12, v15}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    iput-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1071
    add-int/lit8 v2, v2, 0x1

    .line 1075
    :cond_24b
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v4

    if-nez v4, :cond_253

    .line 1076
    add-int/lit8 v2, v2, 0x1

    .line 1079
    :cond_253
    if-eqz v1, :cond_25b

    .line 1080
    const-string/jumbo v4, "notifications:zen_rules"

    invoke-virtual {v1, v4, v2}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsRestored(Ljava/lang/String;I)V

    .line 1082
    :cond_25b
    return-object v8

    .line 955
    :cond_25c
    move-object v4, v12

    const/4 v5, 0x2

    goto/16 :goto_3c

    .line 1085
    :cond_260
    move/from16 v16, v2

    .end local v2    # "readRuleCount":I
    .restart local v16    # "readRuleCount":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to reach END_DOCUMENT"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist readZenDeviceEffectsXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenDeviceEffects;
    .registers 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 1470
    new-instance v0, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    .line 1473
    const-string/jumbo v1, "zdeDisplayGrayscale"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1472
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisplayGrayscale(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1475
    const-string/jumbo v1, "zdeSuppressAmbientDisplay"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1474
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldSuppressAmbientDisplay(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1477
    const-string/jumbo v1, "zdeDimWallpaper"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1476
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDimWallpaper(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1479
    const-string/jumbo v1, "zdeUseNightMode"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1478
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldUseNightMode(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1481
    const-string/jumbo v1, "zdeDisableAutoBrightness"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1480
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableAutoBrightness(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1483
    const-string/jumbo v1, "zdeDisableTapToWake"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1482
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTapToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1485
    const-string/jumbo v1, "zdeDisableTiltToWake"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1484
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTiltToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1487
    const-string/jumbo v1, "zdeDisableTouch"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1486
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTouch(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1489
    const-string/jumbo v1, "zdeMinimizeRadioUsage"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1488
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMinimizeRadioUsage(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1491
    const-string/jumbo v1, "zdeMaximizeDoze"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1490
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMaximizeDoze(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1493
    const-string/jumbo v1, "zdeUseNightLight"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1492
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldUseNightLight(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1494
    const-string/jumbo v1, "zdeExtraEffects"

    invoke-static {p0, v1}, Landroid/service/notification/ZenModeConfig;->safeStringSet(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setExtraEffects(Ljava/util/Set;)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1495
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v0

    .line 1497
    .local v0, "deviceEffects":Landroid/service/notification/ZenDeviceEffects;
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->hasEffects()Z

    move-result v1

    if-eqz v1, :cond_96

    move-object v1, v0

    goto :goto_97

    :cond_96
    const/4 v1, 0x0

    :goto_97
    return-object v1
.end method

.method public static blacklist readZenPolicyXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenPolicy;
    .registers 22
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 1316
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1318
    .local v1, "policySet":Z
    new-instance v2, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v2}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 1319
    .local v2, "builder":Landroid/service/notification/ZenPolicy$Builder;
    const-string v3, "callsFrom"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 1320
    .local v3, "calls":I
    const-string/jumbo v5, "messagesFrom"

    invoke-static {v0, v5, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 1321
    .local v5, "messages":I
    const-string/jumbo v6, "repeatCallers"

    invoke-static {v0, v6, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 1322
    .local v6, "repeatCallers":I
    const-string v7, "convosFrom"

    invoke-static {v0, v7, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 1324
    .local v7, "conversations":I
    const-string v8, "alarms"

    invoke-static {v0, v8, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 1325
    .local v8, "alarms":I
    const-string/jumbo v9, "media"

    invoke-static {v0, v9, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 1326
    .local v9, "media":I
    const-string/jumbo v10, "system"

    invoke-static {v0, v10, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 1327
    .local v10, "system":I
    const-string v11, "events"

    invoke-static {v0, v11, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v11

    .line 1328
    .local v11, "events":I
    const-string/jumbo v12, "reminders"

    invoke-static {v0, v12, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 1329
    .local v12, "reminders":I
    const-string/jumbo v13, "priorityChannelsAllowed"

    invoke-static {v0, v13, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v13

    .line 1331
    .local v13, "channels":I
    const/4 v14, 0x1

    if-eqz v13, :cond_57

    .line 1332
    if-ne v13, v14, :cond_52

    move v15, v14

    goto :goto_53

    :cond_52
    move v15, v4

    :goto_53
    invoke-virtual {v2, v15}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1333
    const/4 v1, 0x1

    .line 1336
    :cond_57
    if-eqz v3, :cond_5d

    .line 1337
    invoke-virtual {v2, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    .line 1338
    const/4 v1, 0x1

    .line 1340
    :cond_5d
    if-eqz v5, :cond_63

    .line 1341
    invoke-virtual {v2, v5}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    .line 1342
    const/4 v1, 0x1

    .line 1344
    :cond_63
    if-eqz v6, :cond_6e

    .line 1345
    if-ne v6, v14, :cond_69

    move v15, v14

    goto :goto_6a

    :cond_69
    move v15, v4

    :goto_6a
    invoke-virtual {v2, v15}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1346
    const/4 v1, 0x1

    .line 1348
    :cond_6e
    if-eqz v7, :cond_74

    .line 1349
    invoke-virtual {v2, v7}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    .line 1350
    const/4 v1, 0x1

    .line 1352
    :cond_74
    if-eqz v8, :cond_7f

    .line 1353
    if-ne v8, v14, :cond_7a

    move v15, v14

    goto :goto_7b

    :cond_7a
    move v15, v4

    :goto_7b
    invoke-virtual {v2, v15}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1354
    const/4 v1, 0x1

    .line 1356
    :cond_7f
    if-eqz v9, :cond_8a

    .line 1357
    if-ne v9, v14, :cond_85

    move v15, v14

    goto :goto_86

    :cond_85
    move v15, v4

    :goto_86
    invoke-virtual {v2, v15}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1358
    const/4 v1, 0x1

    .line 1360
    :cond_8a
    if-eqz v10, :cond_95

    .line 1361
    if-ne v10, v14, :cond_90

    move v15, v14

    goto :goto_91

    :cond_90
    move v15, v4

    :goto_91
    invoke-virtual {v2, v15}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1362
    const/4 v1, 0x1

    .line 1364
    :cond_95
    if-eqz v11, :cond_a0

    .line 1365
    if-ne v11, v14, :cond_9b

    move v15, v14

    goto :goto_9c

    :cond_9b
    move v15, v4

    :goto_9c
    invoke-virtual {v2, v15}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1366
    const/4 v1, 0x1

    .line 1368
    :cond_a0
    if-eqz v12, :cond_ab

    .line 1369
    if-ne v12, v14, :cond_a6

    move v15, v14

    goto :goto_a7

    :cond_a6
    move v15, v4

    :goto_a7
    invoke-virtual {v2, v15}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1370
    const/4 v1, 0x1

    .line 1373
    :cond_ab
    const-string/jumbo v15, "showFullScreenIntent"

    invoke-static {v0, v15, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v15

    .line 1375
    .local v15, "fullScreenIntent":I
    const-string/jumbo v14, "showLights"

    invoke-static {v0, v14, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v14

    .line 1376
    .local v14, "lights":I
    move/from16 v16, v1

    .end local v1    # "policySet":Z
    .local v16, "policySet":Z
    const-string/jumbo v1, "shoePeek"

    invoke-static {v0, v1, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 1377
    .local v1, "peek":I
    move/from16 v17, v3

    .end local v3    # "calls":I
    .local v17, "calls":I
    const-string/jumbo v3, "showStatusBarIcons"

    invoke-static {v0, v3, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 1378
    .local v3, "statusBar":I
    move/from16 v18, v5

    .end local v5    # "messages":I
    .local v18, "messages":I
    const-string/jumbo v5, "showBadges"

    invoke-static {v0, v5, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 1379
    .local v5, "badges":I
    move/from16 v19, v6

    .end local v6    # "repeatCallers":I
    .local v19, "repeatCallers":I
    const-string/jumbo v6, "showAmbient"

    invoke-static {v0, v6, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 1380
    .local v6, "ambient":I
    move/from16 v20, v7

    .end local v7    # "conversations":I
    .local v20, "conversations":I
    const-string/jumbo v7, "showNotificationList"

    invoke-static {v0, v7, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 1383
    .local v7, "notificationList":I
    if-eqz v15, :cond_f4

    .line 1384
    const/4 v4, 0x1

    if-ne v15, v4, :cond_ed

    const/4 v4, 0x1

    goto :goto_ee

    :cond_ed
    const/4 v4, 0x0

    :goto_ee
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1385
    const/4 v4, 0x1

    move/from16 v16, v4

    .line 1387
    :cond_f4
    if-eqz v14, :cond_101

    .line 1388
    const/4 v4, 0x1

    if-ne v14, v4, :cond_fb

    const/4 v4, 0x1

    goto :goto_fc

    :cond_fb
    const/4 v4, 0x0

    :goto_fc
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1389
    const/16 v16, 0x1

    .line 1391
    :cond_101
    if-eqz v1, :cond_10e

    .line 1392
    const/4 v4, 0x1

    if-ne v1, v4, :cond_108

    const/4 v4, 0x1

    goto :goto_109

    :cond_108
    const/4 v4, 0x0

    :goto_109
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1393
    const/16 v16, 0x1

    .line 1395
    :cond_10e
    if-eqz v3, :cond_11b

    .line 1396
    const/4 v4, 0x1

    if-ne v3, v4, :cond_115

    const/4 v4, 0x1

    goto :goto_116

    :cond_115
    const/4 v4, 0x0

    :goto_116
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1397
    const/16 v16, 0x1

    .line 1399
    :cond_11b
    if-eqz v5, :cond_128

    .line 1400
    const/4 v4, 0x1

    if-ne v5, v4, :cond_122

    const/4 v4, 0x1

    goto :goto_123

    :cond_122
    const/4 v4, 0x0

    :goto_123
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1401
    const/16 v16, 0x1

    .line 1403
    :cond_128
    if-eqz v6, :cond_135

    .line 1404
    const/4 v4, 0x1

    if-ne v6, v4, :cond_12f

    const/4 v4, 0x1

    goto :goto_130

    :cond_12f
    const/4 v4, 0x0

    :goto_130
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1405
    const/16 v16, 0x1

    .line 1407
    :cond_135
    if-eqz v7, :cond_141

    .line 1408
    const/4 v4, 0x1

    if-ne v7, v4, :cond_13b

    goto :goto_13c

    :cond_13b
    const/4 v4, 0x0

    :goto_13c
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1409
    const/16 v16, 0x1

    .line 1412
    :cond_141
    if-eqz v16, :cond_148

    .line 1413
    invoke-virtual {v2}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v4

    return-object v4

    .line 1415
    :cond_148
    const/4 v4, 0x0

    return-object v4
.end method

.method private static blacklist rulesToString(Landroid/util/ArrayMap;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 775
    .local p0, "ruleList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 776
    const-string/jumbo v0, "{}"

    return-object v0

    .line 779
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 780
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 782
    if-lez v1, :cond_29

    .line 783
    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    :cond_29
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 786
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 781
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 788
    .end local v1    # "i":I
    :cond_33
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 1570
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o safeBoolean(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .line 1574
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    .line 1575
    :cond_7
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist safeComponentName(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 5
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .line 1583
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1584
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v0

    .line 1585
    :cond_c
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist safeInstant(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/time/Instant;)Ljava/time/Instant;
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/time/Instant;

    .line 1622
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1623
    .local v1, "strValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1624
    invoke-static {v1, v0}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 1625
    .local v0, "longValue":Ljava/lang/Long;
    if-eqz v0, :cond_1a

    .line 1626
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    return-object v2

    .line 1629
    .end local v0    # "longValue":Ljava/lang/Long;
    :cond_1a
    return-object p2
.end method

.method private static blacklist safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I
    .registers 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 1579
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static blacklist safeLong(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J
    .registers 7
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 1595
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1596
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2, p3}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static blacklist safeStringSet(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/Set;
    .registers 11
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1601
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1603
    .local v0, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1604
    .local v1, "serialized":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1607
    sget-object v2, Landroid/service/notification/ZenModeConfig;->ITEM_SPLITTER_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 1608
    .local v2, "escapedItems":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_33

    aget-object v5, v2, v4

    .line 1609
    .local v5, "escapedItem":Ljava/lang/String;
    nop

    .line 1610
    const-string v6, "\\\\"

    const-string v7, "\\"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1612
    const-string v7, "\\,"

    const-string v8, ","

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1609
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1608
    .end local v5    # "escapedItem":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 1616
    .end local v2    # "escapedItems":[Ljava/lang/String;
    :cond_33
    return-object v0
.end method

.method private static blacklist safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .line 1589
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1590
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_8

    return-object v0

    .line 1591
    :cond_8
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 5
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 811
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 812
    :cond_4
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const/4 v2, 0x1

    if-nez v1, :cond_f

    .line 813
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez v1, :cond_e

    move v0, v2

    :cond_e
    return v0

    .line 815
    :cond_f
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v3, v3, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    move v0, v2

    :cond_20
    return v0
.end method

.method private static greylist-max-o sourceToPrioritySenders(II)I
    .registers 3
    .param p0, "source"    # I
    .param p1, "def"    # I

    .line 2021
    packed-switch p0, :pswitch_data_a

    .line 2025
    return p1

    .line 2024
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 2023
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 2022
    :pswitch_8
    const/4 v0, 0x0

    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public static greylist-max-o sourceToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "source"    # I

    .line 832
    packed-switch p0, :pswitch_data_10

    .line 840
    const-string v0, "UNKNOWN"

    return-object v0

    .line 838
    :pswitch_6
    const-string/jumbo v0, "stars"

    return-object v0

    .line 836
    :pswitch_a
    const-string v0, "contacts"

    return-object v0

    .line 834
    :pswitch_d
    const-string v0, "anyone"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_d
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-o toCountdownConditionId(JZ)Landroid/net/Uri;
    .registers 5
    .param p0, "time"    # J
    .param p2, "alarm"    # Z

    .line 2194
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2195
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2196
    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2197
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2198
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2199
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2200
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2194
    return-object v0
.end method

.method public static blacklist toCustomManualConditionId()Landroid/net/Uri;
    .registers 1

    .line 2479
    sget-object v0, Landroid/service/notification/ZenModeConfig;->CUSTOM_MANUAL_CONDITION_ID:Landroid/net/Uri;

    return-object v0
.end method

.method private static greylist-max-o toDayList([I)Ljava/lang/String;
    .registers 4
    .param p0, "days"    # [I

    .line 885
    if-eqz p0, :cond_23

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_23

    .line 886
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 887
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_1e

    .line 888
    if-lez v1, :cond_16

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 889
    :cond_16
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 887
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 891
    .end local v1    # "i":I
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 885
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_23
    :goto_23
    const-string v0, ""

    return-object v0
.end method

.method public static greylist-max-o toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;
    .registers 5
    .param p0, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 2387
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2388
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2389
    const-string v1, "event"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    int-to-long v1, v1

    .line 2390
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2391
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    goto :goto_2f

    :cond_2e
    move-object v1, v2

    :goto_2f
    const-string v3, "calendar"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2392
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-eqz v1, :cond_40

    .line 2393
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    :cond_40
    nop

    .line 2392
    :goto_41
    const-string v1, "calendarId"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 2394
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reply"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2395
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2387
    return-object v0
.end method

.method public static greylist-max-o toNextAlarmCondition(Landroid/content/Context;JI)Landroid/service/notification/Condition;
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # J
    .param p3, "userHandle"    # I

    .line 2145
    move-wide/from16 v0, p1

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v2

    .line 2146
    .local v2, "isSameDay":Z
    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-static {v3, v0, v1, v2, v4}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2147
    .local v5, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2148
    .local v6, "res":Landroid/content/res/Resources;
    const v7, 0x1040b09

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2149
    .local v12, "line1":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {v0, v1, v7}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v10

    .line 2150
    .local v10, "id":Landroid/net/Uri;
    new-instance v9, Landroid/service/notification/Condition;

    const/4 v15, 0x1

    const/16 v16, 0x1

    const-string v11, ""

    const-string v13, ""

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v16}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v9
.end method

.method public static greylist-max-o toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;
    .registers 4
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2012
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    .line 2013
    .local v0, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-eqz v0, :cond_20

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v1, :cond_20

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v1, v1

    if-nez v1, :cond_10

    goto :goto_20

    .line 2014
    :cond_10
    new-instance v1, Landroid/service/notification/ScheduleCalendar;

    invoke-direct {v1}, Landroid/service/notification/ScheduleCalendar;-><init>()V

    .line 2015
    .local v1, "sc":Landroid/service/notification/ScheduleCalendar;
    invoke-virtual {v1, v0}, Landroid/service/notification/ScheduleCalendar;->setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V

    .line 2016
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ScheduleCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2017
    return-object v1

    .line 2013
    .end local v1    # "sc":Landroid/service/notification/ScheduleCalendar;
    :cond_20
    :goto_20
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist-max-o toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;
    .registers 5
    .param p0, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 2246
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2247
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2248
    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 2249
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "days"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2250
    const-string/jumbo v3, "start"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2251
    const-string v2, "end"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 2252
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exitAtAlarm"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2253
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2246
    return-object v0
.end method

.method public static greylist-max-o toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I

    .line 2088
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I
    .param p3, "shortVersion"    # Z

    .line 2093
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2094
    .local v0, "now":J
    if-nez p1, :cond_9

    const-wide/16 v2, 0x2710

    goto :goto_e

    :cond_9
    const v2, 0xea60

    mul-int/2addr v2, p1

    int-to-long v2, v2

    .line 2095
    .local v2, "millis":J
    :goto_e
    add-long v5, v0, v2

    move-object v4, p0

    move v7, p1

    move v8, p2

    move v9, p3

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "minutesFromNow":I
    .end local p2    # "userHandle":I
    .end local p3    # "shortVersion":Z
    .local v4, "context":Landroid/content/Context;
    .local v7, "minutesFromNow":I
    .local v8, "userHandle":I
    .local v9, "shortVersion":Z
    invoke-static/range {v4 .. v9}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;
    .registers 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "minutes"    # I
    .param p4, "userHandle"    # I
    .param p5, "shortVersion"    # Z

    .line 2102
    move-wide/from16 v0, p1

    move/from16 v2, p3

    .line 2103
    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v3

    move-object/from16 v4, p0

    move/from16 v5, p4

    invoke-static {v4, v0, v1, v3, v5}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2104
    .local v3, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2105
    .local v6, "res":Landroid/content/res/Resources;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2106
    .local v7, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v8, 0x3c

    const v9, 0x1040b09

    const-string v10, "formattedTime"

    const-string v11, "count"

    if-ge v2, v8, :cond_5b

    .line 2108
    move/from16 v8, p3

    .line 2109
    .local v8, "num":I
    if-eqz p5, :cond_2c

    const v12, 0x1040afb

    goto :goto_2f

    .line 2110
    :cond_2c
    const v12, 0x1040afa

    :goto_2f
    nop

    .line 2111
    .local v12, "summaryResId":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2112
    invoke-interface {v7, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    invoke-static {v6, v7, v12}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v10

    .line 2114
    .local v10, "summary":Ljava/lang/String;
    if-eqz p5, :cond_44

    const v11, 0x1040af9

    goto :goto_47

    .line 2115
    :cond_44
    const v11, 0x1040af8

    :goto_47
    nop

    .line 2116
    .local v11, "line1ResId":I
    invoke-static {v6, v7, v11}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v13

    .line 2117
    .local v13, "line1":Ljava/lang/String;
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v9, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2118
    .end local v11    # "line1ResId":I
    .end local v12    # "summaryResId":I
    .local v9, "line2":Ljava/lang/String;
    move-object/from16 v18, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v13

    goto :goto_b0

    .end local v8    # "num":I
    .end local v9    # "line2":Ljava/lang/String;
    .end local v10    # "summary":Ljava/lang/String;
    .end local v13    # "line1":Ljava/lang/String;
    :cond_5b
    const/16 v8, 0x5a0

    if-ge v2, v8, :cond_9c

    .line 2120
    int-to-float v8, v2

    const/high16 v12, 0x42700000    # 60.0f

    div-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 2121
    .restart local v8    # "num":I
    if-eqz p5, :cond_6d

    const v12, 0x1040af7

    goto :goto_70

    .line 2122
    :cond_6d
    const v12, 0x1040af6

    :goto_70
    nop

    .line 2123
    .restart local v12    # "summaryResId":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    invoke-interface {v7, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    invoke-static {v6, v7, v12}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v10

    .line 2126
    .restart local v10    # "summary":Ljava/lang/String;
    if-eqz p5, :cond_85

    const v11, 0x1040af5

    goto :goto_88

    .line 2127
    :cond_85
    const v11, 0x1040af4

    :goto_88
    nop

    .line 2128
    .restart local v11    # "line1ResId":I
    invoke-static {v6, v7, v11}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v13

    .line 2129
    .restart local v13    # "line1":Ljava/lang/String;
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v9, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2130
    .end local v11    # "line1ResId":I
    .end local v12    # "summaryResId":I
    .restart local v9    # "line2":Ljava/lang/String;
    move-object/from16 v18, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v13

    goto :goto_b0

    .line 2132
    .end local v8    # "num":I
    .end local v9    # "line2":Ljava/lang/String;
    .end local v10    # "summary":Ljava/lang/String;
    .end local v13    # "line1":Ljava/lang/String;
    :cond_9c
    const v8, 0x1040b0a

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .restart local v9    # "line2":Ljava/lang/String;
    move-object v13, v8

    .restart local v13    # "line1":Ljava/lang/String;
    move-object v10, v8

    move-object/from16 v18, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v13

    .line 2135
    .end local v9    # "line2":Ljava/lang/String;
    .end local v13    # "line1":Ljava/lang/String;
    .local v16, "summary":Ljava/lang/String;
    .local v17, "line1":Ljava/lang/String;
    .local v18, "line2":Ljava/lang/String;
    :goto_b0
    const/4 v8, 0x0

    invoke-static {v0, v1, v8}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v15

    .line 2136
    .local v15, "id":Landroid/net/Uri;
    new-instance v14, Landroid/service/notification/Condition;

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v21}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v14
.end method

.method public static greylist-max-o tryParseCountdownConditionId(Landroid/net/Uri;)J
    .registers 6
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2204
    const-string v0, "android"

    invoke-static {p0, v0}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_b

    return-wide v1

    .line 2205
    :cond_b
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_52

    .line 2206
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "countdown"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_52

    .line 2208
    :cond_28
    :try_start_28
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_37} :catch_38

    return-wide v0

    .line 2209
    :catch_38
    move-exception v0

    .line 2210
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing countdown condition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZenModeConfig"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2211
    return-wide v1

    .line 2206
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_52
    :goto_52
    return-wide v1
.end method

.method private static greylist-max-o tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 8
    .param p0, "dayList"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .line 895
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 896
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 897
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_c

    return-object v0

    .line 898
    :cond_c
    array-length v2, v1

    new-array v2, v2, [I

    .line 899
    .local v2, "rt":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, v1

    if-ge v3, v4, :cond_22

    .line 900
    aget-object v4, v1, v3

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    .line 901
    .local v4, "day":I
    if-ne v4, v5, :cond_1d

    return-object v0

    .line 902
    :cond_1d
    aput v4, v2, v3

    .line 899
    .end local v4    # "day":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 904
    .end local v3    # "i":I
    :cond_22
    return-object v2
.end method

.method public static greylist-max-o tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .registers 7
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2408
    const/4 v0, 0x0

    if-eqz p0, :cond_37

    .line 2409
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "condition"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2410
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2411
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    .line 2412
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "event"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_38

    :cond_37
    move v2, v0

    .line 2413
    .local v2, "isEvent":Z
    :goto_38
    const/4 v1, 0x0

    if-nez v2, :cond_3c

    return-object v1

    .line 2414
    :cond_3c
    new-instance v3, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 2415
    .local v3, "rt":Landroid/service/notification/ZenModeConfig$EventInfo;
    const-string/jumbo v4, "userId"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x2710

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 2416
    const-string v4, "calendar"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 2417
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 2418
    iput-object v1, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 2420
    :cond_62
    const-string v4, "calendarId"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 2421
    const-string/jumbo v1, "reply"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 2422
    return-object v3
.end method

.method private static greylist-max-o tryParseHourAndMinute(Ljava/lang/String;)[I
    .registers 8
    .param p0, "value"    # Ljava/lang/String;

    .line 2508
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 2509
    :cond_8
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2510
    .local v0, "i":I
    const/4 v2, 0x1

    if-lt v0, v2, :cond_41

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt v0, v3, :cond_19

    goto :goto_41

    .line 2511
    :cond_19
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    .line 2512
    .local v4, "hour":I
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v5

    .line 2513
    .local v5, "minute":I
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v6

    if-eqz v6, :cond_40

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v4, v1, v3

    aput v5, v1, v2

    :cond_40
    return-object v1

    .line 2510
    .end local v4    # "hour":I
    .end local v5    # "minute":I
    :cond_41
    :goto_41
    return-object v1
.end method

.method private static greylist-max-o tryParseInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .line 908
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    .line 910
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    .line 911
    :catch_c
    move-exception v0

    .line 912
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method private static greylist-max-o tryParseLong(Ljava/lang/String;J)J
    .registers 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # J

    .line 917
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-wide p1

    .line 919
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return-wide v0

    .line 920
    :catch_c
    move-exception v0

    .line 921
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method private static blacklist tryParseLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # Ljava/lang/Long;

    .line 926
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 928
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_f} :catch_10

    return-object v0

    .line 929
    :catch_10
    move-exception v0

    .line 930
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object p1
.end method

.method public static greylist tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .registers 9
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2295
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_39

    .line 2296
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "condition"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2297
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2298
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_39

    .line 2299
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "schedule"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    move v2, v0

    goto :goto_3a

    :cond_39
    move v2, v1

    .line 2300
    .local v2, "isSchedule":Z
    :goto_3a
    const/4 v3, 0x0

    if-nez v2, :cond_3e

    return-object v3

    .line 2301
    :cond_3e
    const-string/jumbo v4, "start"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v4

    .line 2302
    .local v4, "start":[I
    const-string v5, "end"

    invoke-virtual {p0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v5

    .line 2303
    .local v5, "end":[I
    if-eqz v4, :cond_88

    if-nez v5, :cond_58

    goto :goto_88

    .line 2304
    :cond_58
    new-instance v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 2305
    .local v3, "rt":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const-string v6, "days"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    invoke-static {v6, v7}, Landroid/service/notification/ZenModeConfig;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 2306
    aget v6, v4, v1

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 2307
    aget v6, v4, v0

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 2308
    aget v6, v5, v1

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 2309
    aget v0, v5, v0

    iput v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 2310
    const-string v0, "exitAtAlarm"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 2311
    return-object v3

    .line 2303
    .end local v3    # "rt":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_88
    :goto_88
    return-object v3
.end method

.method private static greylist-max-o tryParseZenMode(Ljava/lang/String;I)I
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .line 2517
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 2518
    .local v0, "rt":I
    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v0

    goto :goto_d

    :cond_c
    move v1, p1

    :goto_d
    return v1
.end method

.method private static blacklist unsafeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .line 1563
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object v0

    .line 1564
    :catch_a
    move-exception v1

    .line 1565
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private static blacklist writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1524
    if-eqz p2, :cond_7

    .line 1525
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1527
    :cond_7
    return-void
.end method

.method public static blacklist writeConditionXml(Landroid/service/notification/Condition;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5
    .param p0, "c"    # Landroid/service/notification/Condition;
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1301
    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "id"

    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1302
    const-string/jumbo v0, "summary"

    iget-object v2, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1303
    const-string/jumbo v0, "line1"

    iget-object v2, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1304
    const-string/jumbo v0, "line2"

    iget-object v2, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1305
    const-string/jumbo v0, "icon"

    iget v2, p0, Landroid/service/notification/Condition;->icon:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1306
    const-string/jumbo v0, "state"

    iget v2, p0, Landroid/service/notification/Condition;->state:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1307
    const-string/jumbo v0, "source"

    iget v2, p0, Landroid/service/notification/Condition;->source:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1308
    const-string v0, "flags"

    iget v2, p0, Landroid/service/notification/Condition;->flags:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1309
    return-void
.end method

.method public static blacklist writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;Z)V
    .registers 8
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1218
    const-string v0, "enabled"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1219
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 1220
    const-string/jumbo v0, "name"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1222
    :cond_14
    const-string/jumbo v0, "zen"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1223
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 1224
    const-string/jumbo v0, "pkg"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1226
    :cond_28
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_37

    .line 1227
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "component"

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1229
    :cond_37
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_46

    .line 1230
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 1231
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 1230
    const-string v1, "configActivity"

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1233
    :cond_46
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_55

    .line 1234
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conditionId"

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1236
    :cond_55
    const-string v0, "creationTime"

    iget-wide v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-interface {p1, v2, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1237
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v0, :cond_67

    .line 1238
    const-string v0, "enabler"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1240
    :cond_67
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_70

    .line 1241
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeConditionXml(Landroid/service/notification/Condition;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1243
    :cond_70
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v0, :cond_79

    .line 1244
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyXml(Landroid/service/notification/ZenPolicy;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1246
    :cond_79
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz v0, :cond_82

    .line 1247
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenDeviceEffectsXml(Landroid/service/notification/ZenDeviceEffects;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1249
    :cond_82
    const-string/jumbo v0, "userInvokable"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1250
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    if-eqz v0, :cond_96

    .line 1251
    const-string/jumbo v0, "rule_icon"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1253
    :cond_96
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    if-eqz v0, :cond_a2

    .line 1254
    const-string/jumbo v0, "triggerDesc"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1256
    :cond_a2
    const-string/jumbo v0, "type"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1257
    const-string/jumbo v0, "userModifiedFields"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1258
    const-string/jumbo v0, "policyUserModifiedFields"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1259
    const-string/jumbo v0, "zdeUserModifiedFields"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1261
    const-string v0, "deletionInstant"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeXmlAttributeInstant(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/time/Instant;)V

    .line 1262
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 1263
    const-string v0, "disabledOrigin"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1264
    const-string/jumbo v0, "legacySuppressedEffects"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1266
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ec

    if-nez p2, :cond_ec

    .line 1267
    const-string v0, "conditionOverride"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1269
    :cond_ec
    invoke-static {}, Landroid/app/Flags;->modesCleanupImplicit()Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 1270
    const-string/jumbo v0, "lastActivation"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeXmlAttributeInstant(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/time/Instant;)V

    .line 1273
    :cond_fa
    return-void
.end method

.method private static blacklist writeRulesToParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 514
    .local p0, "ruleMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 515
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 516
    .local v0, "len":I
    new-array v1, v0, [Ljava/lang/String;

    .line 517
    .local v1, "ids":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v2, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v0, :cond_28

    .line 519
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v3

    .line 520
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 522
    .end local v3    # "i":I
    :cond_28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 524
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 525
    .end local v0    # "len":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    goto :goto_3b

    .line 526
    :cond_37
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    :goto_3b
    return-void
.end method

.method private static blacklist writeStringSet(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/Set;)V
    .registers 9
    .param p0, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p1, "att"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1531
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1532
    return-void

    .line 1536
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1537
    .local v0, "escapedItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1538
    .local v2, "item":Ljava/lang/String;
    nop

    .line 1540
    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1542
    const-string v5, "\\,"

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1538
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    .end local v2    # "item":Ljava/lang/String;
    goto :goto_10

    .line 1545
    :cond_31
    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 1546
    .local v1, "serialized":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p0, v2, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1547
    return-void
.end method

.method private static blacklist writeXmlAttributeInstant(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/time/Instant;)V
    .registers 6
    .param p0, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "instant"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1277
    if-eqz p2, :cond_a

    .line 1278
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-interface {p0, v0, p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1280
    :cond_a
    return-void
.end method

.method private static blacklist writeZenDeviceEffectsXml(Landroid/service/notification/ZenDeviceEffects;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4
    .param p0, "deviceEffects"    # Landroid/service/notification/ZenDeviceEffects;
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1502
    nop

    .line 1503
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    .line 1502
    const-string/jumbo v1, "zdeDisplayGrayscale"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1504
    nop

    .line 1505
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    .line 1504
    const-string/jumbo v1, "zdeSuppressAmbientDisplay"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1506
    const-string/jumbo v0, "zdeDimWallpaper"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1507
    const-string/jumbo v0, "zdeUseNightMode"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1508
    nop

    .line 1509
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v0

    .line 1508
    const-string/jumbo v1, "zdeDisableAutoBrightness"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1510
    nop

    .line 1511
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v0

    .line 1510
    const-string/jumbo v1, "zdeDisableTapToWake"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1512
    nop

    .line 1513
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v0

    .line 1512
    const-string/jumbo v1, "zdeDisableTiltToWake"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1514
    const-string/jumbo v0, "zdeDisableTouch"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1515
    nop

    .line 1516
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v0

    .line 1515
    const-string/jumbo v1, "zdeMinimizeRadioUsage"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1517
    const-string/jumbo v0, "zdeMaximizeDoze"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1518
    const-string/jumbo v0, "zdeUseNightLight"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1519
    const-string/jumbo v0, "zdeExtraEffects"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeStringSet(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/Set;)V

    .line 1520
    return-void
.end method

.method private static blacklist writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5
    .param p0, "attr"    # Ljava/lang/String;
    .param p1, "val"    # I
    .param p2, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1448
    const-string v0, "callsFrom"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_36

    .line 1449
    const-string/jumbo v0, "messagesFrom"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_36

    .line 1453
    :cond_13
    const-string v0, "convosFrom"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1454
    if-eqz p1, :cond_3b

    .line 1455
    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3b

    .line 1457
    :cond_21
    const-string/jumbo v0, "priorityChannelsAllowed"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1458
    if-eqz p1, :cond_3b

    .line 1459
    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3b

    .line 1462
    :cond_30
    if-eqz p1, :cond_3b

    .line 1463
    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3b

    .line 1450
    :cond_36
    :goto_36
    if-eqz p1, :cond_3b

    .line 1451
    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1466
    :cond_3b
    :goto_3b
    return-void
.end method

.method public static blacklist writeZenPolicyXml(Landroid/service/notification/ZenPolicy;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4
    .param p0, "policy"    # Landroid/service/notification/ZenPolicy;
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1423
    const-string v0, "callsFrom"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1424
    const-string/jumbo v0, "messagesFrom"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1425
    const-string/jumbo v0, "repeatCallers"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1427
    const-string v0, "convosFrom"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1428
    const-string v0, "alarms"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1429
    const-string/jumbo v0, "media"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1430
    const-string/jumbo v0, "system"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1431
    const-string/jumbo v0, "reminders"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1432
    const-string v0, "events"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1434
    const-string/jumbo v0, "showFullScreenIntent"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1436
    const-string/jumbo v0, "showLights"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1437
    const-string/jumbo v0, "shoePeek"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1438
    const-string/jumbo v0, "showStatusBarIcons"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1439
    const-string/jumbo v0, "showBadges"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1440
    const-string/jumbo v0, "showAmbient"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1441
    const-string/jumbo v0, "showNotificationList"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1443
    const-string/jumbo v0, "priorityChannelsAllowed"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1444
    return-void
.end method


# virtual methods
.method public greylist-max-o applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .registers 8
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 2051
    if-nez p1, :cond_3

    return-void

    .line 2052
    :cond_3
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1e

    .line 2053
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {p1}, Landroid/service/notification/ZenAdapters;->notificationPolicyToZenPolicy(Landroid/app/NotificationManager$Policy;)Landroid/service/notification/ZenPolicy;

    move-result-object v4

    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 2054
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v4, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v4, v4, 0x3

    iput v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    goto/16 :goto_b4

    .line 2057
    :cond_1e
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_26

    move v0, v3

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    invoke-virtual {p0, v0}, Landroid/service/notification/ZenModeConfig;->setAllowAlarms(Z)V

    .line 2058
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_32

    move v0, v3

    goto :goto_33

    :cond_32
    move v0, v2

    :goto_33
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 2059
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3d

    move v0, v3

    goto :goto_3e

    :cond_3d
    move v0, v2

    :goto_3e
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 2060
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_48

    move v0, v3

    goto :goto_49

    :cond_48
    move v0, v2

    :goto_49
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 2061
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_52

    move v0, v3

    goto :goto_53

    :cond_52
    move v0, v2

    :goto_53
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 2062
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5d

    move v0, v3

    goto :goto_5e

    :cond_5d
    move v0, v2

    :goto_5e
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 2063
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_68

    move v0, v3

    goto :goto_69

    :cond_68
    move v0, v2

    :goto_69
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 2064
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_73

    move v0, v3

    goto :goto_74

    :cond_73
    move v0, v2

    :goto_74
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 2067
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v0, v4}, Landroid/service/notification/ZenModeConfig;->normalizePrioritySenders(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 2068
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v0, v4}, Landroid/service/notification/ZenModeConfig;->normalizePrioritySenders(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 2070
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-eq v0, v1, :cond_92

    .line 2071
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 2073
    :cond_92
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9a

    move v0, v3

    goto :goto_9b

    :cond_9a
    move v0, v2

    :goto_9b
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 2075
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    iget v4, p1, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-static {v0, v4, v5}, Landroid/service/notification/ZenModeConfig;->normalizeConversationSenders(ZII)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 2078
    iget v0, p1, Landroid/app/NotificationManager$Policy;->state:I

    if-eq v0, v1, :cond_b4

    .line 2079
    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/notification/ZenModeConfig;->setAllowPriorityChannels(Z)V

    .line 2082
    :cond_b4
    :goto_b4
    iget v0, p1, Landroid/app/NotificationManager$Policy;->state:I

    if-eq v0, v1, :cond_c0

    .line 2083
    iget v0, p1, Landroid/app/NotificationManager$Policy;->state:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_be

    move v2, v3

    :cond_be
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 2085
    :cond_c0
    return-void
.end method

.method public greylist-max-o copy()Landroid/service/notification/ZenModeConfig;
    .registers 3

    .line 1638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1640
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1641
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1642
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1, v0}, Landroid/service/notification/ZenModeConfig;-><init>(Landroid/os/Parcel;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    .line 1644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1642
    return-object v1

    .line 1644
    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1645
    throw v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1634
    const/4 v0, 0x0

    return v0
.end method

.method blacklist ensureManualZenRule()V
    .registers 4

    .line 451
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v0, :cond_21

    .line 452
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 453
    .local v0, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v1, 0x0

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 454
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 455
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 456
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 457
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 458
    const-string v1, "android"

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 459
    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 461
    .end local v0    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_21
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 846
    instance-of v0, p1, Landroid/service/notification/ZenModeConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 847
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 848
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/service/notification/ZenModeConfig;

    .line 851
    .local v2, "other":Landroid/service/notification/ZenModeConfig;
    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-ne v3, v4, :cond_8d

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-ne v3, v4, :cond_8d

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-ne v3, v4, :cond_8d

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne v3, v4, :cond_8d

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-ne v3, v4, :cond_8d

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-ne v3, v4, :cond_8d

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-ne v3, v4, :cond_8d

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    if-ne v3, v4, :cond_8d

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-ne v3, v4, :cond_8d

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-ne v3, v4, :cond_8d

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->user:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    if-ne v3, v4, :cond_8d

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 862
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 863
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    if-ne v3, v4, :cond_8d

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    if-ne v3, v4, :cond_8d

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    if-ne v3, v4, :cond_8d

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    if-ne v3, v4, :cond_8d

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    .line 868
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    if-ne v3, v4, :cond_8d

    move v1, v0

    goto :goto_8e

    :cond_8d
    nop

    .line 851
    :goto_8e
    return v1
.end method

.method public blacklist getAllowCallsFrom()I
    .registers 3

    .line 645
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 646
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 647
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v0

    .line 646
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v0

    return v0

    .line 649
    :cond_14
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    return v0
.end method

.method public blacklist getAllowConversationsFrom()I
    .registers 2

    .line 592
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 593
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v0

    return v0

    .line 595
    :cond_f
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    return v0
.end method

.method public blacklist getAllowMessagesFrom()I
    .registers 3

    .line 623
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 626
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    return v0

    .line 624
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getSuppressedVisualEffects()I
    .registers 3

    .line 576
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 579
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    return v0

    .line 577
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getZenPolicy()Landroid/service/notification/ZenPolicy;
    .registers 2

    .line 1662
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 21

    .line 876
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 877
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 878
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 879
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v14, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 880
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 881
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    filled-new-array/range {v2 .. v19}, [Ljava/lang/Object;

    move-result-object v1

    .line 876
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public blacklist isAllowAlarms()Z
    .registers 3

    .line 753
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 756
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    return v0

    .line 754
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowCalls()Z
    .registers 3

    .line 768
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 771
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    return v0

    .line 769
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowConversations()Z
    .registers 3

    .line 616
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 619
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    return v0

    .line 617
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowEvents()Z
    .registers 4

    .line 670
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 671
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v0

    return v0

    .line 674
    :cond_11
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    return v0
.end method

.method public blacklist isAllowMedia()Z
    .registers 3

    .line 738
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 741
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    return v0

    .line 739
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowMessages()Z
    .registers 3

    .line 701
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 704
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    return v0

    .line 702
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowPriorityChannels()Z
    .registers 3

    .line 561
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 564
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    return v0

    .line 562
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowReminders()Z
    .registers 3

    .line 686
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 689
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    return v0

    .line 687
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowRepeatCallers()Z
    .registers 3

    .line 708
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 711
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    return v0

    .line 709
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowSystem()Z
    .registers 3

    .line 723
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 726
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    return v0

    .line 724
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isManualActive()Z
    .registers 4

    .line 2548
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 2549
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    return v1

    .line 2551
    :cond_f
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1
.end method

.method public greylist-max-o isValid()Z
    .registers 5

    .line 793
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 794
    :cond_a
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 795
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_25

    .line 796
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    if-nez v3, :cond_22

    return v1

    .line 795
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 798
    .end local v2    # "i":I
    :cond_25
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist setAllowAlarms(Z)V
    .registers 4
    .param p1, "allowAlarms"    # Z

    .line 760
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 763
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 765
    return-void

    .line 761
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowCalls(Z)V
    .registers 4
    .param p1, "allowCalls"    # Z

    .line 663
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 666
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 667
    return-void

    .line 664
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowCallsFrom(I)V
    .registers 5
    .param p1, "allowCallsFrom"    # I

    .line 653
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 654
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    new-instance v1, Landroid/service/notification/ZenPolicy$Builder;

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-direct {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    .line 655
    invoke-static {p1}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    .line 656
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_22

    .line 658
    :cond_20
    iput p1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 660
    :goto_22
    return-void
.end method

.method public blacklist setAllowConversations(Z)V
    .registers 4
    .param p1, "allowConversations"    # Z

    .line 608
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 611
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 613
    return-void

    .line 609
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowConversationsFrom(I)V
    .registers 4
    .param p1, "allowConversationsFrom"    # I

    .line 600
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 603
    iput p1, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 605
    return-void

    .line 601
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowEvents(Z)V
    .registers 4
    .param p1, "allowEvents"    # Z

    .line 678
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 681
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 683
    return-void

    .line 679
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowMedia(Z)V
    .registers 4
    .param p1, "allowMedia"    # Z

    .line 745
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 748
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 750
    return-void

    .line 746
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowMessages(Z)V
    .registers 4
    .param p1, "allowMessages"    # Z

    .line 638
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 641
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 642
    return-void

    .line 639
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowMessagesFrom(I)V
    .registers 4
    .param p1, "allowMessagesFrom"    # I

    .line 630
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 633
    iput p1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 635
    return-void

    .line 631
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowPriorityChannels(Z)V
    .registers 4
    .param p1, "allowPriorityChannels"    # Z

    .line 568
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 571
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    .line 573
    return-void

    .line 569
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowReminders(Z)V
    .registers 4
    .param p1, "allowReminders"    # Z

    .line 693
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 696
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 698
    return-void

    .line 694
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowRepeatCallers(Z)V
    .registers 4
    .param p1, "allowRepeatCallers"    # Z

    .line 715
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 718
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 720
    return-void

    .line 716
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowSystem(Z)V
    .registers 4
    .param p1, "allowSystem"    # Z

    .line 730
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 733
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 735
    return-void

    .line 731
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSuppressedVisualEffects(I)V
    .registers 4
    .param p1, "suppressedVisualEffects"    # I

    .line 584
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 587
    iput p1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 589
    return-void

    .line 585
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o toNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 18

    .line 1852
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1853
    .local v1, "priorityCategories":I
    const/4 v2, 0x1

    .line 1854
    .local v2, "priorityCallSenders":I
    const/4 v3, 0x1

    .line 1855
    .local v3, "priorityMessageSenders":I
    const/4 v4, 0x2

    .line 1856
    .local v4, "priorityConversationSenders":I
    const/4 v5, 0x0

    .line 1857
    .local v5, "state":I
    const/4 v6, 0x0

    .line 1859
    .local v6, "suppressedVisualEffects":I
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v7

    if-eqz v7, :cond_14b

    .line 1860
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1861
    or-int/lit8 v1, v1, 0x2

    .line 1863
    :cond_1c
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v7, v9, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 1865
    or-int/lit8 v1, v1, 0x1

    .line 1867
    :cond_28
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v10, 0x4

    invoke-virtual {v7, v10, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1869
    or-int/lit8 v1, v1, 0x10

    .line 1871
    :cond_35
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v11, 0x5

    invoke-virtual {v7, v11, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 1872
    or-int/lit8 v1, v1, 0x20

    .line 1874
    :cond_42
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v12, 0x6

    invoke-virtual {v7, v12, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 1875
    or-int/lit8 v1, v1, 0x40

    .line 1877
    :cond_4f
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v13, 0x7

    invoke-virtual {v7, v13, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 1878
    or-int/lit16 v1, v1, 0x80

    .line 1881
    :cond_5c
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v7

    if-ne v7, v8, :cond_68

    .line 1882
    or-int/lit16 v1, v1, 0x100

    .line 1884
    :cond_68
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1885
    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v7

    .line 1884
    const/4 v13, 0x3

    invoke-static {v7, v13}, Landroid/service/notification/ZenAdapters;->zenPolicyConversationSendersToNotificationPolicy(II)I

    move-result v4

    .line 1887
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v7

    if-ne v7, v8, :cond_81

    .line 1888
    or-int/lit8 v1, v1, 0x8

    .line 1890
    :cond_81
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1891
    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v7

    .line 1890
    const/4 v14, 0x2

    invoke-static {v7, v14}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v2

    .line 1892
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v7

    if-ne v7, v8, :cond_9a

    .line 1893
    or-int/lit8 v1, v1, 0x4

    .line 1895
    :cond_9a
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1896
    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v7

    .line 1895
    invoke-static {v7, v14}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v3

    .line 1898
    iget-boolean v7, v0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    iget-object v15, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v15, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1899
    invoke-virtual {v15}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v15

    if-eq v15, v14, :cond_b4

    move v15, v8

    goto :goto_b5

    :cond_b4
    move v15, v9

    .line 1898
    :goto_b5
    invoke-static {v7, v15}, Landroid/app/NotificationManager$Policy;->policyState(ZZ)I

    move-result v5

    .line 1901
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1903
    const/16 v15, 0x9d

    invoke-direct {v0, v15, v9}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    .line 1901
    invoke-virtual {v7, v9, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v7

    xor-int/2addr v7, v8

    .line 1906
    .local v7, "suppressFullScreenIntent":Z
    iget-object v9, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v9, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1908
    invoke-direct {v0, v15, v8}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    .line 1906
    invoke-virtual {v9, v8, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v9

    xor-int/2addr v9, v8

    .line 1911
    .local v9, "suppressLights":Z
    iget-object v12, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v12, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1913
    move/from16 v16, v8

    invoke-direct {v0, v15, v11}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v8

    .line 1911
    invoke-virtual {v12, v11, v8}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 1916
    .local v8, "suppressAmbient":Z
    if-eqz v7, :cond_ed

    if-eqz v9, :cond_ed

    if-eqz v8, :cond_ed

    .line 1917
    or-int/lit8 v6, v6, 0x1

    .line 1920
    :cond_ed
    if-eqz v7, :cond_f1

    .line 1921
    or-int/lit8 v6, v6, 0x4

    .line 1924
    :cond_f1
    if-eqz v9, :cond_f5

    .line 1925
    or-int/lit8 v6, v6, 0x8

    .line 1928
    :cond_f5
    iget-object v11, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v11, v11, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1929
    invoke-direct {v0, v15, v14}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    .line 1928
    invoke-virtual {v11, v14, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v11

    if-nez v11, :cond_106

    .line 1931
    or-int/lit8 v6, v6, 0x10

    .line 1932
    or-int/2addr v6, v14

    .line 1935
    :cond_106
    iget-object v11, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v11, v11, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1936
    invoke-direct {v0, v15, v13}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    .line 1935
    invoke-virtual {v11, v13, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v11

    if-nez v11, :cond_116

    .line 1938
    or-int/lit8 v6, v6, 0x20

    .line 1941
    :cond_116
    iget-object v11, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v11, v11, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1942
    invoke-direct {v0, v15, v10}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    .line 1941
    invoke-virtual {v11, v10, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v10

    if-nez v10, :cond_126

    .line 1944
    or-int/lit8 v6, v6, 0x40

    .line 1947
    :cond_126
    if-eqz v8, :cond_12a

    .line 1948
    or-int/lit16 v6, v6, 0x80

    .line 1951
    :cond_12a
    iget-object v10, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v10, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1953
    const/4 v11, 0x6

    invoke-direct {v0, v15, v11}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    .line 1951
    invoke-virtual {v10, v11, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v10

    if-nez v10, :cond_13b

    .line 1955
    or-int/lit16 v6, v6, 0x100

    .line 1961
    :cond_13b
    and-int/lit8 v6, v6, -0x4

    .line 1962
    iget-object v10, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v10, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    and-int/2addr v10, v13

    or-int/2addr v6, v10

    .line 1964
    .end local v7    # "suppressFullScreenIntent":Z
    .end local v8    # "suppressAmbient":Z
    .end local v9    # "suppressLights":Z
    move v8, v1

    move v9, v2

    move v10, v3

    move v13, v4

    move v12, v5

    move v11, v6

    goto/16 :goto_1bf

    .line 1965
    :cond_14b
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowConversations()Z

    move-result v7

    if-eqz v7, :cond_153

    .line 1966
    or-int/lit16 v1, v1, 0x100

    .line 1968
    :cond_153
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowCalls()Z

    move-result v7

    if-eqz v7, :cond_15b

    .line 1969
    or-int/lit8 v1, v1, 0x8

    .line 1971
    :cond_15b
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowMessages()Z

    move-result v7

    if-eqz v7, :cond_163

    .line 1972
    or-int/lit8 v1, v1, 0x4

    .line 1974
    :cond_163
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowEvents()Z

    move-result v7

    if-eqz v7, :cond_16b

    .line 1975
    or-int/lit8 v1, v1, 0x2

    .line 1977
    :cond_16b
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowReminders()Z

    move-result v7

    if-eqz v7, :cond_173

    .line 1978
    or-int/lit8 v1, v1, 0x1

    .line 1980
    :cond_173
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowRepeatCallers()Z

    move-result v7

    if-eqz v7, :cond_17b

    .line 1981
    or-int/lit8 v1, v1, 0x10

    .line 1983
    :cond_17b
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowAlarms()Z

    move-result v7

    if-eqz v7, :cond_183

    .line 1984
    or-int/lit8 v1, v1, 0x20

    .line 1986
    :cond_183
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowMedia()Z

    move-result v7

    if-eqz v7, :cond_18b

    .line 1987
    or-int/lit8 v1, v1, 0x40

    .line 1989
    :cond_18b
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowSystem()Z

    move-result v7

    if-eqz v7, :cond_193

    .line 1990
    or-int/lit16 v1, v1, 0x80

    .line 1992
    :cond_193
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->getAllowCallsFrom()I

    move-result v7

    invoke-static {v7, v2}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v2

    .line 1993
    nop

    .line 1994
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->getAllowMessagesFrom()I

    move-result v7

    .line 1993
    invoke-static {v7, v3}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v3

    .line 1995
    nop

    .line 1996
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->getAllowConversationsFrom()I

    move-result v7

    .line 1995
    invoke-static {v7, v4}, Landroid/service/notification/ZenAdapters;->zenPolicyConversationSendersToNotificationPolicy(II)I

    move-result v4

    .line 1998
    iget-boolean v7, v0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    iget-boolean v8, v0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-static {v7, v8}, Landroid/app/NotificationManager$Policy;->policyState(ZZ)I

    move-result v5

    .line 1999
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->getSuppressedVisualEffects()I

    move-result v6

    move v8, v1

    move v9, v2

    move v10, v3

    move v13, v4

    move v12, v5

    move v11, v6

    .line 2002
    .end local v1    # "priorityCategories":I
    .end local v2    # "priorityCallSenders":I
    .end local v3    # "priorityMessageSenders":I
    .end local v4    # "priorityConversationSenders":I
    .end local v5    # "state":I
    .end local v6    # "suppressedVisualEffects":I
    .local v8, "priorityCategories":I
    .local v9, "priorityCallSenders":I
    .local v10, "priorityMessageSenders":I
    .local v11, "suppressedVisualEffects":I
    .local v12, "state":I
    .local v13, "priorityConversationSenders":I
    :goto_1bf
    new-instance v7, Landroid/app/NotificationManager$Policy;

    invoke-direct/range {v7 .. v13}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    return-object v7
.end method

.method public blacklist toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;
    .registers 21
    .param p1, "zenPolicy"    # Landroid/service/notification/ZenPolicy;

    .line 1714
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    .line 1715
    .local v2, "defaultPolicy":Landroid/app/NotificationManager$Policy;
    const/4 v3, 0x0

    .line 1716
    .local v3, "priorityCategories":I
    const/4 v4, 0x0

    .line 1717
    .local v4, "suppressedVisualEffects":I
    iget v5, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 1718
    .local v5, "callSenders":I
    iget v6, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 1719
    .local v6, "messageSenders":I
    iget v7, v2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 1721
    .local v7, "conversationSenders":I
    nop

    .line 1722
    const/4 v8, 0x1

    invoke-direct {v0, v8, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v9

    .line 1721
    const/4 v10, 0x0

    invoke-virtual {v1, v10, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 1723
    or-int/lit8 v3, v3, 0x1

    .line 1726
    :cond_1f
    nop

    .line 1727
    const/4 v9, 0x2

    invoke-direct {v0, v9, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v11

    .line 1726
    invoke-virtual {v1, v8, v11}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v11

    if-eqz v11, :cond_2d

    .line 1728
    or-int/lit8 v3, v3, 0x2

    .line 1731
    :cond_2d
    nop

    .line 1732
    const/4 v11, 0x4

    invoke-direct {v0, v11, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v12

    .line 1731
    invoke-virtual {v1, v9, v12}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v12

    if-eqz v12, :cond_46

    .line 1733
    or-int/lit8 v3, v3, 0x4

    .line 1734
    nop

    .line 1735
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v12

    .line 1734
    invoke-static {v12, v6}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v6

    move v15, v6

    goto :goto_47

    .line 1731
    :cond_46
    move v15, v6

    .line 1738
    .end local v6    # "messageSenders":I
    .local v15, "messageSenders":I
    :goto_47
    nop

    .line 1739
    const/16 v6, 0x100

    invoke-direct {v0, v6, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v12

    .line 1738
    const/16 v13, 0x8

    invoke-virtual {v1, v13, v12}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v12

    if-eqz v12, :cond_64

    .line 1740
    or-int/lit16 v3, v3, 0x100

    .line 1741
    nop

    .line 1742
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v12

    .line 1741
    invoke-static {v12, v7}, Landroid/service/notification/ZenAdapters;->zenPolicyConversationSendersToNotificationPolicy(II)I

    move-result v7

    move/from16 v18, v7

    goto :goto_67

    .line 1744
    :cond_64
    const/4 v7, 0x3

    move/from16 v18, v7

    .line 1747
    .end local v7    # "conversationSenders":I
    .local v18, "conversationSenders":I
    :goto_67
    nop

    .line 1748
    invoke-direct {v0, v13, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v7

    .line 1747
    const/4 v12, 0x3

    invoke-virtual {v1, v12, v7}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 1749
    or-int/lit8 v3, v3, 0x8

    .line 1750
    nop

    .line 1751
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v7

    .line 1750
    invoke-static {v7, v5}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v5

    move v14, v5

    goto :goto_81

    .line 1747
    :cond_80
    move v14, v5

    .line 1754
    .end local v5    # "callSenders":I
    .local v14, "callSenders":I
    :goto_81
    nop

    .line 1755
    const/16 v5, 0x10

    invoke-direct {v0, v5, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v7

    .line 1754
    invoke-virtual {v1, v11, v7}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_90

    .line 1757
    or-int/lit8 v3, v3, 0x10

    .line 1760
    :cond_90
    nop

    .line 1761
    const/16 v7, 0x20

    invoke-direct {v0, v7, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v6

    .line 1760
    const/4 v12, 0x5

    invoke-virtual {v1, v12, v6}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 1762
    or-int/lit8 v3, v3, 0x20

    .line 1765
    :cond_a0
    nop

    .line 1766
    const/16 v6, 0x40

    invoke-direct {v0, v6, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v7

    .line 1765
    const/4 v6, 0x6

    invoke-virtual {v1, v6, v7}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_b0

    .line 1767
    or-int/lit8 v3, v3, 0x40

    .line 1770
    :cond_b0
    nop

    .line 1771
    const/16 v7, 0x80

    invoke-direct {v0, v7, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v6

    .line 1770
    const/4 v9, 0x7

    invoke-virtual {v1, v9, v6}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v6

    if-eqz v6, :cond_c0

    .line 1772
    or-int/lit16 v3, v3, 0x80

    .line 1775
    :cond_c0
    nop

    .line 1777
    invoke-direct {v0, v11, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v6

    .line 1775
    invoke-virtual {v1, v10, v6}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v6

    xor-int/2addr v6, v8

    .line 1780
    .local v6, "suppressFullScreenIntent":Z
    nop

    .line 1782
    invoke-direct {v0, v13, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v9

    .line 1780
    invoke-virtual {v1, v8, v9}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v9

    xor-int/2addr v9, v8

    .line 1785
    .local v9, "suppressLights":Z
    nop

    .line 1787
    invoke-direct {v0, v7, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v7

    .line 1785
    invoke-virtual {v1, v12, v7}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v7

    xor-int/2addr v7, v8

    .line 1790
    .local v7, "suppressAmbient":Z
    if-eqz v6, :cond_e6

    if-eqz v9, :cond_e6

    if-eqz v7, :cond_e6

    .line 1791
    or-int/lit8 v4, v4, 0x1

    .line 1794
    :cond_e6
    if-eqz v6, :cond_ea

    .line 1795
    or-int/lit8 v4, v4, 0x4

    .line 1798
    :cond_ea
    if-eqz v9, :cond_ee

    .line 1799
    or-int/lit8 v4, v4, 0x8

    .line 1802
    :cond_ee
    nop

    .line 1803
    invoke-direct {v0, v5, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v5

    .line 1802
    const/4 v10, 0x2

    invoke-virtual {v1, v10, v5}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v5

    if-nez v5, :cond_fd

    .line 1805
    or-int/lit8 v4, v4, 0x10

    .line 1806
    or-int/2addr v4, v10

    .line 1809
    :cond_fd
    nop

    .line 1810
    const/16 v5, 0x20

    invoke-direct {v0, v5, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v5

    .line 1809
    const/4 v10, 0x3

    invoke-virtual {v1, v10, v5}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v5

    if-nez v5, :cond_10d

    .line 1812
    or-int/lit8 v4, v4, 0x20

    .line 1815
    :cond_10d
    nop

    .line 1816
    const/16 v5, 0x40

    invoke-direct {v0, v5, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v5

    .line 1815
    invoke-virtual {v1, v11, v5}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v5

    if-nez v5, :cond_11c

    .line 1818
    or-int/lit8 v4, v4, 0x40

    .line 1821
    :cond_11c
    if-eqz v7, :cond_120

    .line 1822
    or-int/lit16 v4, v4, 0x80

    .line 1825
    :cond_120
    nop

    .line 1826
    const/16 v5, 0x100

    invoke-direct {v0, v5, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v5

    .line 1825
    const/4 v10, 0x6

    invoke-virtual {v1, v10, v5}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v5

    if-nez v5, :cond_133

    .line 1828
    or-int/lit16 v4, v4, 0x100

    move/from16 v16, v4

    goto :goto_135

    .line 1825
    :cond_133
    move/from16 v16, v4

    .line 1831
    .end local v4    # "suppressedVisualEffects":I
    .local v16, "suppressedVisualEffects":I
    :goto_135
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->hasPriorityChannels()Z

    move-result v4

    .line 1832
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v5

    invoke-static {v5, v8}, Landroid/service/notification/ZenPolicy;->stateToBoolean(IZ)Z

    move-result v5

    .line 1831
    invoke-static {v4, v5}, Landroid/app/NotificationManager$Policy;->policyState(ZZ)I

    move-result v17

    .line 1835
    .local v17, "state":I
    new-instance v12, Landroid/app/NotificationManager$Policy;

    move v13, v3

    .end local v3    # "priorityCategories":I
    .local v13, "priorityCategories":I
    invoke-direct/range {v12 .. v18}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    return-object v12
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 533
    const-string/jumbo v1, "user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v1

    if-nez v1, :cond_cb

    .line 535
    const-string v1, ",allowAlarms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 536
    const-string v2, ",allowMedia="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 537
    const-string v2, ",allowSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 538
    const-string v2, ",allowReminders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 539
    const-string v2, ",allowEvents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 540
    const-string v2, ",allowCalls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 541
    const-string v2, ",allowRepeatCallers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 542
    const-string v2, ",allowMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 543
    const-string v2, ",allowConversations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 544
    const-string v2, ",allowCallsFrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 545
    const-string v2, ",allowMessagesFrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 546
    const-string v2, ",allowConvFrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 547
    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->conversationTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 546
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    const-string v2, "\nsuppressedVisualEffects="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    :cond_cb
    const-string v1, "\nhasPriorityChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 552
    const-string v1, ",allowPriorityChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 553
    const-string v1, ",\nautomaticRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->rulesToString(Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string v1, ",\nmanualRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 555
    const-string v1, ",\ndeletedRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->rulesToString(Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist toZenPolicy()Landroid/service/notification/ZenPolicy;
    .registers 5

    .line 1670
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 1671
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_11

    .line 1672
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v1

    goto :goto_12

    .line 1673
    :cond_11
    move v1, v2

    .line 1671
    :goto_12
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 1674
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1675
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v1, :cond_27

    .line 1676
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v1

    goto :goto_28

    .line 1677
    :cond_27
    move v1, v2

    .line 1675
    :goto_28
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 1678
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 1679
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 1680
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 1681
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 1682
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1683
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    if-eqz v1, :cond_51

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    goto :goto_52

    .line 1684
    :cond_51
    const/4 v1, 0x3

    .line 1683
    :goto_52
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1685
    .local v0, "builder":Landroid/service/notification/ZenPolicy$Builder;
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    if-nez v1, :cond_5f

    .line 1686
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    goto/16 :goto_b3

    .line 1689
    :cond_5f
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_68

    move v1, v2

    goto :goto_69

    :cond_68
    move v1, v3

    :goto_69
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1691
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_74

    move v1, v2

    goto :goto_75

    :cond_74
    move v1, v3

    :goto_75
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1693
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_80

    move v1, v2

    goto :goto_81

    :cond_80
    move v1, v3

    :goto_81
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1695
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_8c

    move v1, v2

    goto :goto_8d

    :cond_8c
    move v1, v3

    :goto_8d
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1697
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_98

    move v1, v2

    goto :goto_99

    :cond_98
    move v1, v3

    :goto_99
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1699
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_a4

    move v1, v2

    goto :goto_a5

    :cond_a4
    move v1, v3

    :goto_a5
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1701
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_af

    goto :goto_b0

    :cond_af
    move v2, v3

    :goto_b0
    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1705
    :goto_b3
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1706
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 485
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_29

    .line 486
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    :cond_29
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 496
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v0, p1, p2}, Landroid/service/notification/ZenModeConfig;->writeRulesToParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;I)V

    .line 497
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-static {v0, p1, p2}, Landroid/service/notification/ZenModeConfig;->writeRulesToParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;I)V

    .line 498
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_58

    .line 499
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    :cond_58
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_72

    .line 506
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 507
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 510
    :cond_72
    return-void
.end method

.method public blacklist writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Integer;ZLandroid/app/backup/BackupRestoreEventLogger;)V
    .registers 15
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p2, "version"    # Ljava/lang/Integer;
    .param p3, "forBackup"    # Z
    .param p4, "logger"    # Landroid/app/backup/BackupRestoreEventLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1107
    const/4 v0, 0x0

    .line 1108
    .local v0, "writtenRuleCount":I
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getCurrentXmlVersion()I

    move-result v1

    .line 1109
    .local v1, "xmlVersion":I
    const/4 v2, 0x0

    const-string/jumbo v3, "zen"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1110
    if-nez p2, :cond_13

    .line 1111
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1b

    :cond_13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1110
    :goto_1b
    const-string/jumbo v5, "version"

    invoke-interface {p1, v2, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1112
    const-string/jumbo v4, "user"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-interface {p1, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1113
    const-string v4, "allow"

    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1117
    const-string v5, "calls"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1118
    const-string/jumbo v5, "repeatCallers"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1119
    const-string/jumbo v5, "messages"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1120
    const-string/jumbo v5, "reminders"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1121
    const-string v5, "events"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1122
    const-string v5, "callsFrom"

    iget v6, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1123
    const-string/jumbo v5, "messagesFrom"

    iget v6, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1124
    const-string v5, "alarms"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1125
    const-string/jumbo v5, "media"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1126
    const-string/jumbo v5, "system"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1127
    const-string v5, "convos"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1128
    const-string v5, "convosFrom"

    iget v6, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1129
    const-string/jumbo v5, "priorityChannelsAllowed"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1130
    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1132
    const-string v4, "disallow"

    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1133
    const-string/jumbo v5, "visualEffects"

    iget v6, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1134
    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1136
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v4, :cond_b5

    .line 1137
    const-string/jumbo v4, "manual"

    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1138
    iget-object v5, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v5, p1, p3}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 1139
    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1141
    :cond_b5
    add-int/lit8 v0, v0, 0x1

    .line 1142
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1143
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_be
    const-string/jumbo v6, "ruleId"

    if-ge v5, v4, :cond_e7

    .line 1144
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1145
    .local v7, "id":Ljava/lang/String;
    iget-object v8, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1146
    .local v8, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string v9, "automatic"

    invoke-interface {p1, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1147
    invoke-interface {p1, v2, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1148
    invoke-static {v8, p1, p3}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 1149
    invoke-interface {p1, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1150
    nop

    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    add-int/lit8 v0, v0, 0x1

    .line 1143
    add-int/lit8 v5, v5, 0x1

    goto :goto_be

    .line 1152
    .end local v5    # "i":I
    :cond_e7
    if-nez p3, :cond_10d

    .line 1153
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_ea
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v5, v7, :cond_10d

    .line 1154
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1155
    .local v7, "deletedRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string v8, "deleted"

    invoke-interface {p1, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1156
    iget-object v9, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-interface {p1, v2, v6, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1157
    invoke-static {v7, p1, p3}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 1158
    invoke-interface {p1, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1153
    .end local v7    # "deletedRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    add-int/lit8 v5, v5, 0x1

    goto :goto_ea

    .line 1162
    .end local v5    # "i":I
    :cond_10d
    const-string/jumbo v5, "state"

    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1163
    const-string v6, "areChannelsBypassingDnd"

    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    invoke-interface {p1, v2, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1164
    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1166
    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1167
    if-eqz p4, :cond_128

    .line 1168
    const-string/jumbo v2, "notifications:zen_rules"

    invoke-virtual {p4, v2, v0}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackedUp(Ljava/lang/String;I)V

    .line 1170
    :cond_128
    return-void
.end method
