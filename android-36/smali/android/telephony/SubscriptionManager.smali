.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;,
        Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;,
        Landroid/telephony/SubscriptionManager$CallISubMethodHelper;,
        Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;,
        Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;,
        Landroid/telephony/SubscriptionManager$TransferStatus;,
        Landroid/telephony/SubscriptionManager$ServiceCapability;,
        Landroid/telephony/SubscriptionManager$PhoneNumberSource;,
        Landroid/telephony/SubscriptionManager$UsageSetting;,
        Landroid/telephony/SubscriptionManager$ProfileClass;,
        Landroid/telephony/SubscriptionManager$DataRoamingMode;,
        Landroid/telephony/SubscriptionManager$DeviceToDeviceStatusSharingPreference;,
        Landroid/telephony/SubscriptionManager$SimDisplayNameSource;,
        Landroid/telephony/SubscriptionManager$SubscriptionType;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACCESS_RULES:Ljava/lang/String; = "access_rules"

.field public static final blacklist ACCESS_RULES_FROM_CARRIER_CONFIGS:Ljava/lang/String; = "access_rules_from_carrier_configs"

.field public static final whitelist ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

.field public static final whitelist ACTION_DEFAULT_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

.field public static final whitelist ACTION_MANAGE_SUBSCRIPTION_PLANS:Ljava/lang/String; = "android.telephony.action.MANAGE_SUBSCRIPTION_PLANS"

.field public static final whitelist ACTION_REFRESH_SUBSCRIPTION_PLANS:Ljava/lang/String; = "android.telephony.action.REFRESH_SUBSCRIPTION_PLANS"

.field public static final whitelist ACTION_SUBSCRIPTION_PLANS_CHANGED:Ljava/lang/String; = "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ADVANCED_CALLING_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ALLOWED_NETWORK_TYPES:Ljava/lang/String; = "allowed_network_types_for_reasons"

.field private static final blacklist CACHE_KEY_SUBSCRIPTION_MANAGER_SERVICE_PROPERTY:Ljava/lang/String; = "cache_key.telephony.subscription_manager_service"

.field public static final greylist-max-o CARD_ID:Ljava/lang/String; = "card_id"

.field public static final blacklist CARRIER_ID:Ljava/lang/String; = "carrier_id"

.field public static final greylist-max-o CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field public static final greylist-max-o CB_ALERT_REMINDER_INTERVAL:Ljava/lang/String; = "alert_reminder_interval"

.field public static final greylist-max-o CB_ALERT_SOUND_DURATION:Ljava/lang/String; = "alert_sound_duration"

.field public static final greylist-max-o CB_ALERT_SPEECH:Ljava/lang/String; = "enable_alert_speech"

.field public static final greylist-max-o CB_ALERT_VIBRATE:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final greylist-max-o CB_AMBER_ALERT:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final greylist-max-o CB_CHANNEL_50_ALERT:Ljava/lang/String; = "enable_channel_50_alerts"

.field public static final greylist-max-o CB_CMAS_TEST_ALERT:Ljava/lang/String; = "enable_cmas_test_alerts"

.field public static final greylist-max-o CB_EMERGENCY_ALERT:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final greylist-max-o CB_ETWS_TEST_ALERT:Ljava/lang/String; = "enable_etws_test_alerts"

.field public static final greylist-max-o CB_EXTREME_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final greylist-max-o CB_OPT_OUT_DIALOG:Ljava/lang/String; = "show_cmas_opt_out_dialog"

.field public static final greylist-max-o CB_SEVERE_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final greylist-max-r CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist CROSS_SIM_CALLING_ENABLED:Ljava/lang/String; = "cross_sim_calling_enabled"

.field public static final whitelist CROSS_SIM_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist D2D_SHARING_ALL:I = 0x3

.field public static final whitelist D2D_SHARING_ALL_CONTACTS:I = 0x1

.field public static final whitelist D2D_SHARING_DISABLED:I = 0x0

.field public static final whitelist D2D_SHARING_SELECTED_CONTACTS:I = 0x2

.field public static final whitelist D2D_STATUS_SHARING:Ljava/lang/String; = "d2d_sharing_status"

.field public static final whitelist D2D_STATUS_SHARING_SELECTED_CONTACTS:Ljava/lang/String; = "d2d_sharing_contacts"

.field public static final greylist-max-o DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final whitelist DATA_ROAMING_DISABLE:I = 0x0

.field public static final whitelist DATA_ROAMING_ENABLE:I = 0x1

.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o DEFAULT_NAME_RES:I = 0x104000e

.field public static final greylist-max-o DEFAULT_PHONE_INDEX:I = 0x7fffffff

.field public static final greylist-max-o DEFAULT_SIM_SLOT_INDEX:I = 0x7fffffff

.field public static final whitelist DEFAULT_SUBSCRIPTION_ID:I = 0x7fffffff

.field public static final greylist-max-o DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final blacklist EHPLMNS:Ljava/lang/String; = "ehplmns"

.field public static final blacklist ENABLED_MOBILE_DATA_POLICIES:Ljava/lang/String; = "enabled_mobile_data_policies"

.field public static final greylist-max-o ENHANCED_4G_MODE_ENABLED:Ljava/lang/String; = "volte_vt_enabled"

.field public static final whitelist EXTRA_SLOT_INDEX:Ljava/lang/String; = "android.telephony.extra.SLOT_INDEX"

.field public static final whitelist EXTRA_SUBSCRIPTION_INDEX:Ljava/lang/String; = "android.telephony.extra.SUBSCRIPTION_INDEX"

.field public static final blacklist GET_SIM_SPECIFIC_SETTINGS_METHOD_NAME:Ljava/lang/String; = "getSimSpecificSettings"

.field public static final blacklist GROUP_OWNER:Ljava/lang/String; = "group_owner"

.field public static final blacklist GROUP_UUID:Ljava/lang/String; = "group_uuid"

.field public static final blacklist HPLMNS:Ljava/lang/String; = "hplmns"

.field public static final blacklist HUE:Ljava/lang/String; = "color"

.field public static final greylist-max-o ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final blacklist IMSI:Ljava/lang/String; = "imsi"

.field public static final blacklist IMS_RCS_UCE_ENABLED:Ljava/lang/String; = "ims_rcs_uce_enabled"

.field public static final greylist-max-o INVALID_PHONE_INDEX:I = -0x1

.field public static final whitelist INVALID_SIM_SLOT_INDEX:I = -0x1

.field public static final whitelist INVALID_SUBSCRIPTION_ID:I = -0x1

.field public static final blacklist ISO_COUNTRY_CODE:Ljava/lang/String; = "iso_country_code"

.field public static final greylist-max-o IS_EMBEDDED:Ljava/lang/String; = "is_embedded"

.field public static final blacklist IS_ONLY_NTN:Ljava/lang/String; = "is_only_ntn"

.field public static final blacklist IS_OPPORTUNISTIC:Ljava/lang/String; = "is_opportunistic"

.field public static final greylist-max-o IS_REMOVABLE:Ljava/lang/String; = "is_removable"

.field public static final blacklist IS_SATELLITE_PROVISIONED_FOR_NON_IP_DATAGRAM:Ljava/lang/String; = "is_satellite_provisioned_for_non_ip_datagram"

.field public static final blacklist KEY_SIM_SPECIFIC_SETTINGS_DATA:Ljava/lang/String; = "KEY_SIM_SPECIFIC_SETTINGS_DATA"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field private static final blacklist MAX_CACHE_SIZE:I = 0x4

.field private static final blacklist MAX_RESOURCE_CACHE_ENTRY_COUNT:I = 0x3e8

.field public static final greylist-max-o MAX_SUBSCRIPTION_ID_VALUE:I = 0x7ffffffe

.field public static final greylist-max-o MCC:Ljava/lang/String; = "mcc"

.field public static final blacklist MCC_STRING:Ljava/lang/String; = "mcc_string"

.field public static final greylist-max-o MIN_SUBSCRIPTION_ID_VALUE:I = 0x0

.field public static final greylist-max-o MNC:Ljava/lang/String; = "mnc"

.field public static final blacklist MNC_STRING:Ljava/lang/String; = "mnc_string"

.field public static final greylist-max-o NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final blacklist NAME_SOURCE_CARRIER:I = 0x3

.field public static final blacklist NAME_SOURCE_CARRIER_ID:I = 0x0

.field public static final blacklist NAME_SOURCE_SIM_PNN:I = 0x4

.field public static final blacklist NAME_SOURCE_SIM_SPN:I = 0x1

.field public static final blacklist NAME_SOURCE_UNKNOWN:I = -0x1

.field public static final greylist-max-p NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final blacklist NR_ADVANCED_CALLING_ENABLED:Ljava/lang/String; = "nr_advanced_calling_enabled"

.field public static final greylist-max-o NUMBER:Ljava/lang/String; = "number"

.field public static final whitelist PHONE_NUMBER_SOURCE_CARRIER:I = 0x2

.field public static final whitelist PHONE_NUMBER_SOURCE_IMS:I = 0x3

.field public static final whitelist PHONE_NUMBER_SOURCE_UICC:I = 0x1

.field public static final blacklist PLACEHOLDER_SUBSCRIPTION_ID_BASE:I = -0x2

.field public static final blacklist PORT_INDEX:Ljava/lang/String; = "port_index"

.field public static final blacklist PROFILE_CLASS:Ljava/lang/String; = "profile_class"

.field public static final whitelist PROFILE_CLASS_DEFAULT:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROFILE_CLASS_OPERATIONAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROFILE_CLASS_PROVISIONING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROFILE_CLASS_TESTING:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROFILE_CLASS_UNSET:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist RESTORE_SIM_SPECIFIC_SETTINGS_DATABASE_UPDATED:Ljava/lang/String; = "restoreSimSpecificSettingsDatabaseUpdated"

.field public static final blacklist RESTORE_SIM_SPECIFIC_SETTINGS_METHOD_NAME:Ljava/lang/String; = "restoreSimSpecificSettings"

.field public static final blacklist SATELLITE_ATTACH_ENABLED_FOR_CARRIER:Ljava/lang/String; = "satellite_attach_enabled_for_carrier"

.field public static final blacklist SATELLITE_ENABLED:Ljava/lang/String; = "satellite_enabled"

.field public static final blacklist SATELLITE_ENTITLEMENT_BARRED_PLMNS:Ljava/lang/String; = "satellite_entitlement_barred_plmns"

.field public static final blacklist SATELLITE_ENTITLEMENT_DATA_PLAN_PLMNS:Ljava/lang/String; = "satellite_entitlement_data_plan_plmns"

.field public static final blacklist SATELLITE_ENTITLEMENT_DATA_SERVICE_POLICY:Ljava/lang/String; = "satellite_entitlement_data_service_policy"

.field public static final blacklist SATELLITE_ENTITLEMENT_PLMNS:Ljava/lang/String; = "satellite_entitlement_plmns"

.field public static final blacklist SATELLITE_ENTITLEMENT_SERVICE_TYPE_MAP:Ljava/lang/String; = "satellite_entitlement_service_type_map"

.field public static final blacklist SATELLITE_ENTITLEMENT_STATUS:Ljava/lang/String; = "satellite_entitlement_status"

.field public static final blacklist SATELLITE_ENTITLEMENT_VOICE_SERVICE_POLICY:Ljava/lang/String; = "satellite_entitlement_voice_service_policy"

.field public static final blacklist SATELLITE_ESOS_SUPPORTED:Ljava/lang/String; = "satellite_esos_supported"

.field public static final blacklist SERVICE_CAPABILITIES:Ljava/lang/String; = "service_capabilities"

.field public static final whitelist SERVICE_CAPABILITY_DATA:I = 0x3

.field public static final blacklist SERVICE_CAPABILITY_DATA_BITMASK:I

.field public static final blacklist SERVICE_CAPABILITY_MAX:I = 0x3

.field public static final whitelist SERVICE_CAPABILITY_SMS:I = 0x2

.field public static final blacklist SERVICE_CAPABILITY_SMS_BITMASK:I

.field public static final whitelist SERVICE_CAPABILITY_VOICE:I = 0x1

.field public static final blacklist SERVICE_CAPABILITY_VOICE_BITMASK:I

.field public static final blacklist SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist SIM_INFO_SUW_RESTORE_CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o SIM_NOT_INSERTED:I = -0x1

.field public static final greylist-max-o SIM_SLOT_INDEX:Ljava/lang/String; = "sim_id"

.field public static final blacklist SLOT_INDEX_FOR_REMOTE_SIM_SUB:I = -0x1

.field public static final blacklist SUBSCRIPTION_TYPE:Ljava/lang/String; = "subscription_type"

.field public static final whitelist SUBSCRIPTION_TYPE_LOCAL_SIM:I = 0x0

.field public static final whitelist SUBSCRIPTION_TYPE_REMOTE_SIM:I = 0x1

.field public static final greylist-max-o SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final blacklist TP_MESSAGE_REF:Ljava/lang/String; = "tp_message_ref"

.field public static final blacklist TRANSFER_STATUS:Ljava/lang/String; = "transfer_status"

.field public static final whitelist TRANSFER_STATUS_CONVERTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TRANSFER_STATUS_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TRANSFER_STATUS_TRANSFERRED_OUT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist UICC_APPLICATIONS_ENABLED:Ljava/lang/String; = "uicc_applications_enabled"

.field public static final greylist-max-o UNIQUE_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "_id"

.field public static final blacklist USAGE_SETTING:Ljava/lang/String; = "usage_setting"

.field public static final whitelist USAGE_SETTING_DATA_CENTRIC:I = 0x2

.field public static final whitelist USAGE_SETTING_DEFAULT:I = 0x0

.field public static final whitelist USAGE_SETTING_UNKNOWN:I = -0x1

.field public static final whitelist USAGE_SETTING_VOICE_CENTRIC:I = 0x1

.field public static final blacklist USER_HANDLE:Ljava/lang/String; = "user_handle"

.field private static final greylist-max-o VDBG:Z = false

.field public static final blacklist VOIMS_OPT_IN_STATUS:Ljava/lang/String; = "voims_opt_in_status"

.field public static final whitelist VT_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o VT_IMS_ENABLED:Ljava/lang/String; = "vt_ims_enabled"

.field public static final whitelist WFC_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o WFC_IMS_ENABLED:Ljava/lang/String; = "wfc_ims_enabled"

.field public static final greylist-max-o WFC_IMS_MODE:Ljava/lang/String; = "wfc_ims_mode"

.field public static final greylist-max-o WFC_IMS_ROAMING_ENABLED:Ljava/lang/String; = "wfc_ims_roaming_enabled"

.field public static final greylist-max-o WFC_IMS_ROAMING_MODE:Ljava/lang/String; = "wfc_ims_roaming_mode"

.field public static final whitelist WFC_MODE_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WFC_ROAMING_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WFC_ROAMING_MODE_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static blacklist sGetActiveDataSubscriptionIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sGetDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sGetDefaultSmsSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sGetDefaultSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sGetPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sGetSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sGetSubIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sResourcesCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/res/Configuration;",
            ">;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mIsForAllUserProfiles:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$1eo3N-t4L7428ca0yAgbUgEpBao(Landroid/telephony/SubscriptionManager;Landroid/telephony/SubscriptionInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionManager;->lambda$getActiveSubscriptionInfoList$2(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$4qyfT2nanfDxhPKgO8rARHDz9Ao(Landroid/telephony/SubscriptionManager;Landroid/telephony/SubscriptionInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionManager;->lambda$getActiveSubscriptionInfoList$1(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$7vgQE1sb2eIt3k4-21aTcUWQN7Q(Landroid/telephony/SubscriptionManager;ZILcom/android/internal/telephony/ISub;)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/SubscriptionManager;->lambda$setOpportunistic$7(ZILcom/android/internal/telephony/ISub;)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$y-NltIiKGCtMq1bnaz_GXbvdtGs(Landroid/telephony/SubscriptionManager;IILcom/android/internal/telephony/ISub;)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/SubscriptionManager;->lambda$setUsageSetting$13(IILcom/android/internal/telephony/ISub;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 148
    sget-object v0, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 272
    new-instance v0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda9;-><init>()V

    .line 275
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cache_key.telephony.subscription_manager_service"

    invoke-direct {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    .line 277
    new-instance v0, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda10;-><init>()V

    .line 280
    invoke-direct {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    .line 282
    new-instance v0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda11;-><init>()V

    .line 285
    invoke-direct {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSmsSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    .line 287
    new-instance v0, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda12;-><init>()V

    .line 290
    invoke-direct {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sGetActiveDataSubscriptionIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    .line 292
    new-instance v0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda13;-><init>()V

    .line 295
    invoke-direct {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sGetSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    .line 297
    new-instance v0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda14;-><init>()V

    .line 300
    invoke-direct {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sGetSubIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    .line 302
    new-instance v0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda15;-><init>()V

    .line 305
    invoke-direct {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sGetPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    .line 334
    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "wfc"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->WFC_ENABLED_CONTENT_URI:Landroid/net/Uri;

    .line 356
    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "advanced_calling"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->ADVANCED_CALLING_ENABLED_CONTENT_URI:Landroid/net/Uri;

    .line 374
    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "wfc_mode"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->WFC_MODE_CONTENT_URI:Landroid/net/Uri;

    .line 391
    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "wfc_roaming_mode"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->WFC_ROAMING_MODE_CONTENT_URI:Landroid/net/Uri;

    .line 410
    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "vt_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->VT_ENABLED_CONTENT_URI:Landroid/net/Uri;

    .line 428
    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "wfc_roaming_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->WFC_ROAMING_ENABLED_CONTENT_URI:Landroid/net/Uri;

    .line 441
    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "backup_and_restore"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    .line 450
    sget-object v0, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "suw_restore"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->SIM_INFO_SUW_RESTORE_CONTENT_URI:Landroid/net/Uri;

    .line 470
    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "cross_sim_calling_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->CROSS_SIM_ENABLED_CONTENT_URI:Landroid/net/Uri;

    .line 1514
    nop

    .line 1515
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->serviceCapabilityToBitmask(I)I

    move-result v0

    sput v0, Landroid/telephony/SubscriptionManager;->SERVICE_CAPABILITY_VOICE_BITMASK:I

    .line 1521
    nop

    .line 1522
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->serviceCapabilityToBitmask(I)I

    move-result v0

    sput v0, Landroid/telephony/SubscriptionManager;->SERVICE_CAPABILITY_SMS_BITMASK:I

    .line 1528
    nop

    .line 1529
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->serviceCapabilityToBitmask(I)I

    move-result v0

    sput v0, Landroid/telephony/SubscriptionManager;->SERVICE_CAPABILITY_DATA_BITMASK:I

    .line 1544
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sResourcesCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1691
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;Z)V

    .line 1692
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Z)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isForAllUserProfiles"    # Z

    .line 1695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1700
    iput-boolean p2, p0, Landroid/telephony/SubscriptionManager;->mIsForAllUserProfiles:Z

    .line 1701
    iput-object p1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1702
    return-void
.end method

.method public static blacklist clearCaches()V
    .registers 1

    .line 4394
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    .line 4395
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    .line 4396
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetActiveDataSubscriptionIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    .line 4397
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSmsSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    .line 4398
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    .line 4399
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetSubIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    .line 4400
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    .line 4401
    return-void
.end method

.method public static blacklist disableCaching()V
    .registers 1

    .line 4380
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    .line 4381
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    .line 4382
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetActiveDataSubscriptionIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    .line 4383
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSmsSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    .line 4384
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    .line 4385
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetSubIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    .line 4386
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    .line 4387
    return-void
.end method

.method public static blacklist displayNameSourceToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # I

    .line 4680
    packed-switch p0, :pswitch_data_30

    .line 4688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4686
    :pswitch_1d
    const-string v0, "SIM_PNN"

    return-object v0

    .line 4685
    :pswitch_20
    const-string v0, "CARRIER"

    return-object v0

    .line 4684
    :pswitch_23
    const-string v0, "USER_INPUT"

    return-object v0

    .line 4683
    :pswitch_26
    const-string v0, "SIM_SPN"

    return-object v0

    .line 4682
    :pswitch_29
    const-string v0, "CARRIER_ID"

    return-object v0

    .line 4681
    :pswitch_2c
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch -0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static whitelist from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1715
    nop

    .line 1716
    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 1715
    return-object v0
.end method

.method public static whitelist getActiveDataSubscriptionId()I
    .registers 2

    .line 4351
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetActiveDataSubscriptionIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist getAllServiceCapabilityBitmasks()I
    .registers 2

    .line 4929
    sget v0, Landroid/telephony/SubscriptionManager;->SERVICE_CAPABILITY_VOICE_BITMASK:I

    sget v1, Landroid/telephony/SubscriptionManager;->SERVICE_CAPABILITY_SMS_BITMASK:I

    or-int/2addr v0, v1

    sget v1, Landroid/telephony/SubscriptionManager;->SERVICE_CAPABILITY_DATA_BITMASK:I

    or-int/2addr v0, v1

    return v0
.end method

.method public static greylist-max-o getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z
    .registers 7
    .param p0, "subscriptionId"    # I
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .line 3083
    invoke-static {p3, p0, p1}, Landroid/telephony/SubscriptionManager;->getStringSubscriptionProperty(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3084
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 3086
    :try_start_a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_14

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2

    .line 3087
    :catch_14
    move-exception v1

    .line 3088
    .local v1, "err":Ljava/lang/NumberFormatException;
    const-string v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 3091
    .end local v1    # "err":Ljava/lang/NumberFormatException;
    :cond_1a
    return p2
.end method

.method public static whitelist getDefaultDataSubscriptionId()I
    .registers 2

    .line 2762
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static whitelist getDefaultSmsSubscriptionId()I
    .registers 2

    .line 2726
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSmsSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static whitelist getDefaultSubscriptionId()I
    .registers 2

    .line 2629
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static greylist-max-r getDefaultVoicePhoneId()I
    .registers 1

    .line 2715
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getDefaultVoiceSubscriptionId()I
    .registers 3

    .line 2643
    const/4 v0, -0x1

    .line 2646
    .local v0, "subId":I
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2647
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_14

    .line 2648
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubIdAsUser(I)I

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_15

    move v0, v2

    .line 2652
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_14
    goto :goto_16

    .line 2650
    :catch_15
    move-exception v1

    .line 2655
    :goto_16
    return v0
.end method

.method public static greylist-max-o getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I
    .registers 7
    .param p0, "subscriptionId"    # I
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 3119
    invoke-static {p3, p0, p1}, Landroid/telephony/SubscriptionManager;->getStringSubscriptionProperty(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3120
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 3122
    :try_start_a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    return v1

    .line 3123
    :catch_f
    move-exception v1

    .line 3124
    .local v1, "err":Ljava/lang/NumberFormatException;
    const-string v2, "getIntegerSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 3127
    .end local v1    # "err":Ljava/lang/NumberFormatException;
    :cond_15
    return p2
.end method

.method public static blacklist getLongSubscriptionProperty(ILjava/lang/String;JLandroid/content/Context;)J
    .registers 8
    .param p0, "subscriptionId"    # I
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "context"    # Landroid/content/Context;

    .line 3155
    invoke-static {p4, p0, p1}, Landroid/telephony/SubscriptionManager;->getStringSubscriptionProperty(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3156
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 3158
    :try_start_a
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    return-wide v1

    .line 3159
    :catch_f
    move-exception v1

    .line 3160
    .local v1, "err":Ljava/lang/NumberFormatException;
    const-string v2, "getLongSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 3163
    .end local v1    # "err":Ljava/lang/NumberFormatException;
    :cond_15
    return-wide p2
.end method

.method private blacklist getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;
    .registers 3

    .line 1705
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1706
    const-string/jumbo v1, "netpolicy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    .line 1705
    return-object v0
.end method

.method public static greylist-max-p getPhoneId(I)I
    .registers 3
    .param p0, "subId"    # I

    .line 2608
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static whitelist getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3183
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "useRootLocale"    # Z

    .line 3199
    const/4 v0, 0x0

    .line 3200
    .local v0, "cacheKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/res/Configuration;>;"
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 3201
    new-instance v1, Landroid/content/res/Configuration;

    .line 3202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3203
    .local v1, "configurationKey":Landroid/content/res/Configuration;
    if-eqz p2, :cond_1b

    .line 3204
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 3206
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 3207
    .end local v0    # "cacheKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/res/Configuration;>;"
    .local v2, "cacheKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/res/Configuration;>;"
    sget-object v3, Landroid/telephony/SubscriptionManager;->sResourcesCache:Landroid/util/LruCache;

    monitor-enter v3

    .line 3208
    :try_start_3d
    sget-object v0, Landroid/telephony/SubscriptionManager;->sResourcesCache:Landroid/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 3209
    .local v0, "cached":Landroid/content/res/Resources;
    if-eqz v0, :cond_49

    .line 3211
    monitor-exit v3

    return-object v0

    .line 3213
    .end local v0    # "cached":Landroid/content/res/Resources;
    :cond_49
    monitor-exit v3

    move-object v0, v2

    goto :goto_4f

    :catchall_4c
    move-exception v0

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_4c

    throw v0

    .line 3216
    .end local v1    # "configurationKey":Landroid/content/res/Configuration;
    .end local v2    # "cacheKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/res/Configuration;>;"
    .local v0, "cacheKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/res/Configuration;>;"
    :cond_4f
    :goto_4f
    nop

    .line 3217
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 3219
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 3220
    .local v2, "overrideConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_76

    .line 3221
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mcc:I

    .line 3222
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    .line 3223
    iget v3, v2, Landroid/content/res/Configuration;->mnc:I

    if-nez v3, :cond_77

    .line 3224
    const v3, 0xffff

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    .line 3225
    const/4 v0, 0x0

    goto :goto_77

    .line 3228
    :cond_76
    const/4 v0, 0x0

    .line 3231
    :cond_77
    :goto_77
    if-eqz p2, :cond_7e

    .line 3232
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 3240
    :cond_7e
    invoke-virtual {p0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    .line 3241
    .local v3, "newContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3243
    .local v4, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_95

    .line 3244
    sget-object v5, Landroid/telephony/SubscriptionManager;->sResourcesCache:Landroid/util/LruCache;

    monitor-enter v5

    .line 3246
    :try_start_8b
    sget-object v6, Landroid/telephony/SubscriptionManager;->sResourcesCache:Landroid/util/LruCache;

    invoke-virtual {v6, v0, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3247
    monitor-exit v5

    goto :goto_95

    :catchall_92
    move-exception v6

    monitor-exit v5
    :try_end_94
    .catchall {:try_start_8b .. :try_end_94} :catchall_92

    throw v6

    .line 3249
    :cond_95
    :goto_95
    return-object v4
.end method

.method public static blacklist getServiceCapabilitiesSet(I)Ljava/util/Set;
    .registers 5
    .param p0, "combinedServiceCapabilities"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4940
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4941
    .local v0, "capabilities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1b

    .line 4942
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->serviceCapabilityToBitmask(I)I

    move-result v2

    .line 4943
    .local v2, "capabilityBitmask":I
    and-int v3, p0, v2

    if-ne v3, v2, :cond_18

    .line 4944
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4941
    .end local v2    # "capabilityBitmask":I
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4947
    .end local v1    # "i":I
    :cond_1b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getSlotIndex(I)I
    .registers 3
    .param p0, "subscriptionId"    # I

    .line 2544
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static blacklist getStringSubscriptionProperty(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscriptionId"    # I
    .param p2, "columnName"    # Ljava/lang/String;

    .line 3045
    const/4 v0, 0x0

    .line 3047
    .local v0, "resultValue":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 3048
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_15

    .line 3049
    nop

    .line 3050
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 3049
    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/ISub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_16

    move-object v0, v2

    .line 3054
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_15
    goto :goto_17

    .line 3052
    :catch_16
    move-exception v1

    .line 3055
    :goto_17
    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSubId(I)[I
    .registers 2
    .param p0, "slotIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2585
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2586
    const/4 v0, 0x0

    return-object v0

    .line 2588
    :cond_8
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getSubscriptionId(I)I
    .registers 3
    .param p0, "slotIndex"    # I

    .line 2598
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2599
    const/4 v0, -0x1

    return v0

    .line 2602
    :cond_8
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetSubIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist getUriForSubscriptionId(I)Landroid/net/Uri;
    .registers 3
    .param p0, "subscriptionId"    # I

    .line 315
    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist invalidateSubscriptionManagerServiceCaches()V
    .registers 1

    .line 4371
    const-string v0, "cache_key.telephony.subscription_manager_service"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 4372
    return-void
.end method

.method private blacklist isSystemProcess()Z
    .registers 3

    .line 3888
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-p isUsableSubIdValue(I)Z
    .registers 2
    .param p0, "subId"    # I

    .line 2843
    if-ltz p0, :cond_9

    const v0, 0x7ffffffe

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static whitelist isUsableSubscriptionId(I)Z
    .registers 2
    .param p0, "subscriptionId"    # I

    .line 2833
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r isValidPhoneId(I)Z
    .registers 2
    .param p0, "phoneId"    # I

    .line 2855
    if-ltz p0, :cond_e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    if-ge p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static greylist-max-p isValidSlotIndex(I)Z
    .registers 2
    .param p0, "slotIndex"    # I

    .line 2849
    if-ltz p0, :cond_e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    if-ge p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static whitelist isValidSubscriptionId(I)Z
    .registers 2
    .param p0, "subscriptionId"    # I

    .line 2818
    const/4 v0, -0x1

    if-le p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method static synthetic blacklist lambda$addOnSubscriptionsChangedListener$0(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 1
    .param p0, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1778
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onAddListenerFailed()V

    return-void
.end method

.method static synthetic blacklist lambda$addSubscriptionsIntoGroup$9(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 3872
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$createSubscriptionGroup$8(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 3825
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$getActiveSubscriptionInfoList$1(Landroid/telephony/SubscriptionInfo;)Z
    .registers 3
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .line 2078
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$getActiveSubscriptionInfoList$2(Landroid/telephony/SubscriptionInfo;)Z
    .registers 3
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .line 2155
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$removeSubscriptionsFromGroup$10(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 3921
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDataRoaming$6(IILcom/android/internal/telephony/ISub;)I
    .registers 4
    .param p0, "roaming"    # I
    .param p1, "subId"    # I
    .param p2, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2532
    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setDataRoaming(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDeviceToDeviceStatusSharingContacts$12(Ljava/util/List;ILcom/android/internal/telephony/ISub;)I
    .registers 4
    .param p0, "contacts"    # Ljava/util/List;
    .param p1, "subscriptionId"    # I
    .param p2, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4247
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->serializeUriLists(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/android/internal/telephony/ISub;->setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDeviceToDeviceStatusSharingPreference$11(IILcom/android/internal/telephony/ISub;)I
    .registers 4
    .param p0, "sharing"    # I
    .param p1, "subscriptionId"    # I
    .param p2, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4205
    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setDeviceToDeviceStatusSharing(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDisplayName$4(Ljava/lang/String;IILcom/android/internal/telephony/ISub;)I
    .registers 5
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .param p2, "nameSource"    # I
    .param p3, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2499
    invoke-interface {p3, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDisplayNumber$5(Ljava/lang/String;ILcom/android/internal/telephony/ISub;)I
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .param p2, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2517
    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setIconTint$3(IILcom/android/internal/telephony/ISub;)I
    .registers 4
    .param p0, "subId"    # I
    .param p1, "tint"    # I
    .param p2, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2479
    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setIconTint(II)I

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$setOpportunistic$7(ZILcom/android/internal/telephony/ISub;)I
    .registers 5
    .param p1, "opportunistic"    # Z
    .param p2, "subId"    # I
    .param p3, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3778
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 3779
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3778
    invoke-interface {p3, p1, p2, v0}, Lcom/android/internal/telephony/ISub;->setOpportunistic(ZILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$setUsageSetting$13(IILcom/android/internal/telephony/ISub;)I
    .registers 5
    .param p1, "usageSetting"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4645
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 4646
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4645
    invoke-interface {p3, p1, p2, v0}, Lcom/android/internal/telephony/ISub;->setUsageSetting(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 2612
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 2616
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    return-void
.end method

.method public static blacklist phoneNumberSourceToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # I

    .line 4660
    packed-switch p0, :pswitch_data_26

    .line 4665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4663
    :pswitch_1d
    const-string v0, "IMS"

    return-object v0

    .line 4662
    :pswitch_20
    const-string v0, "CARRIER"

    return-object v0

    .line 4661
    :pswitch_23
    const-string v0, "UICC"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist putPhoneIdAndMaybeSubIdExtra(Landroid/content/Intent;II)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .line 2888
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2889
    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    goto :goto_15

    .line 2892
    :cond_a
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2893
    const-string v0, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2895
    :goto_15
    return-void
.end method

.method public static greylist-max-p putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .line 2867
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    .line 2868
    .local v0, "subId":I
    invoke-static {p0, p1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndMaybeSubIdExtra(Landroid/content/Intent;II)V

    .line 2869
    return-void
.end method

.method public static greylist-max-r putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .line 2875
    const-string v0, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2876
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2877
    invoke-static {p0, p2}, Landroid/telephony/SubscriptionManager;->putSubscriptionIdExtra(Landroid/content/Intent;I)V

    .line 2878
    return-void
.end method

.method public static blacklist putSubscriptionIdExtra(Landroid/content/Intent;I)V
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "subId"    # I

    .line 4365
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4366
    const-string/jumbo v0, "subscription"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4367
    return-void
.end method

.method public static blacklist serializeUriLists(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3004
    .local p0, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3005
    .local v0, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 3006
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3007
    .end local v2    # "uri":Landroid/net/Uri;
    goto :goto_9

    .line 3009
    :cond_1d
    :try_start_1d
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3010
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3011
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3012
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 3013
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_36} :catch_37

    return-object v3

    .line 3014
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_37
    move-exception v1

    .line 3015
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "serializeUriLists IO exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 3017
    .end local v1    # "e":Ljava/io/IOException;
    const-string v1, ""

    return-object v1
.end method

.method public static blacklist serviceCapabilityToBitmask(I)I
    .registers 3
    .param p0, "capability"    # I

    .line 4955
    add-int/lit8 v0, p0, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method public static greylist-max-o setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "subscriptionId"    # I
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2990
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2991
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_9

    .line 2992
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2996
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_9
    goto :goto_b

    .line 2994
    :catch_a
    move-exception v0

    .line 2997
    :goto_b
    return-void
.end method

.method private blacklist setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I
    .registers 7
    .param p1, "subId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "helper"    # Landroid/telephony/SubscriptionManager$CallISubMethodHelper;

    .line 4321
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 4322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]- fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 4323
    const/4 v0, -0x1

    return v0

    .line 4326
    :cond_24
    const/4 v0, 0x0

    .line 4329
    .local v0, "result":I
    :try_start_25
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 4330
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_30

    .line 4331
    invoke-interface {p3, v1}, Landroid/telephony/SubscriptionManager$CallISubMethodHelper;->callMethod(Lcom/android/internal/telephony/ISub;)I

    move-result v2
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2f} :catch_31

    move v0, v2

    .line 4335
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_30
    goto :goto_32

    .line 4333
    :catch_31
    move-exception v1

    .line 4337
    :goto_32
    return v0
.end method

.method public static blacklist subscriptionTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 4702
    packed-switch p0, :pswitch_data_24

    .line 4706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4704
    :pswitch_1d
    const-string v0, "REMOTE_SIM"

    return-object v0

    .line 4703
    :pswitch_20
    const-string v0, "LOCAL_SIM"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist usageSettingToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "usageSetting"    # I

    .line 4720
    packed-switch p0, :pswitch_data_2a

    .line 4726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4724
    :pswitch_1d
    const-string v0, "DATA_CENTRIC"

    return-object v0

    .line 4723
    :pswitch_20
    const-string v0, "VOICE_CENTRIC"

    return-object v0

    .line 4722
    :pswitch_23
    const-string v0, "DEFAULT"

    return-object v0

    .line 4721
    :pswitch_26
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public whitelist addOnOpportunisticSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    .line 1844
    if-eqz p1, :cond_23

    if-nez p2, :cond_5

    goto :goto_23

    .line 1848
    :cond_5
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_10
    const-string v0, "<unknown>"

    .line 1856
    .local v0, "pkgName":Ljava/lang/String;
    :goto_12
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1857
    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    .line 1858
    .local v1, "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    if-eqz v1, :cond_22

    .line 1859
    invoke-virtual {v1, p2, p1}, Landroid/telephony/TelephonyRegistryManager;->addOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    .line 1862
    :cond_22
    return-void

    .line 1845
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    :cond_23
    :goto_23
    return-void
.end method

.method public whitelist addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1734
    if-nez p1, :cond_3

    return-void

    .line 1736
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->getCreatorLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1737
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_17

    .line 1743
    new-instance v1, Lcom/android/internal/telephony/util/HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/util/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v1, p1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1744
    return-void

    .line 1738
    :cond_17
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t create handler inside thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1739
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " that has not called Looper.prepare()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1761
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "<unknown>"

    .line 1768
    .local v0, "pkgName":Ljava/lang/String;
    :goto_d
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1769
    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    .line 1770
    .local v1, "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    if-eqz v1, :cond_1e

    .line 1771
    invoke-virtual {v1, p2, p1}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    goto :goto_42

    .line 1776
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOnSubscriptionsChangedListener: pkgname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed to be added  due to TELEPHONY_REGISTRY_SERVICE being unavailable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    .line 1778
    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1780
    :goto_42
    return-void
.end method

.method public greylist-max-o addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .registers 5
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotIndex"    # I

    .line 2368
    if-nez p1, :cond_7

    .line 2369
    const-string v0, "[addSubscriptionInfoRecord]- null iccId"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2371
    :cond_7
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2372
    const-string v0, "[addSubscriptionInfoRecord]- invalid slotIndex"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2375
    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2378
    return-object v1
.end method

.method public blacklist addSubscriptionInfoRecord(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "slotIndex"    # I
    .param p4, "subscriptionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2403
    const-string v0, "SubscriptionManager"

    if-nez p1, :cond_a

    .line 2404
    const-string v1, "[addSubscriptionInfoRecord]- uniqueId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    return-void

    .line 2409
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2410
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-nez v1, :cond_16

    .line 2411
    const-string v2, "[addSubscriptionInfoRecord]- ISub service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    return-void

    .line 2414
    :cond_16
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISub;->addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    .line 2415
    .local v2, "result":I
    if-gez v2, :cond_33

    .line 2416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding of subscription didn\'t succeed: error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 2418
    :cond_33
    const-string/jumbo v0, "successfully added new subscription"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_39} :catch_3a

    .line 2422
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":I
    :goto_39
    goto :goto_3b

    .line 2420
    :catch_3a
    move-exception v0

    .line 2423
    :goto_3b
    return-void
.end method

.method public whitelist addSubscriptionsIntoGroup(Ljava/util/List;Landroid/os/ParcelUuid;)V
    .registers 8
    .param p2, "groupUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/ParcelUuid;",
            ")V"
        }
    .end annotation

    .line 3865
    .local p1, "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v0, "subIdList can\'t be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3866
    const-string/jumbo v0, "groupUuid can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3867
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_17
    const-string v0, "<unknown>"

    .line 3872
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_19
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda20;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda20;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 3875
    .local v1, "subIdArray":[I
    :try_start_2a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v2

    .line 3876
    .local v2, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v2, :cond_34

    .line 3877
    invoke-interface {v2, v1, p2, v0}, Lcom/android/internal/telephony/ISub;->addSubscriptionsIntoGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 3884
    .end local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    goto :goto_57

    .line 3879
    .restart local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_34
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "telephony service is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local v1    # "subIdArray":[I
    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "groupUuid":Landroid/os/ParcelUuid;
    throw v3
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3d} :catch_3d

    .line 3881
    .end local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local v1    # "subIdArray":[I
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p2    # "groupUuid":Landroid/os/ParcelUuid;
    :catch_3d
    move-exception v2

    .line 3882
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSubscriptionsIntoGroup RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    .line 3883
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3885
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_57
    return-void
.end method

.method public whitelist canDisablePhysicalSubscription()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4150
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4151
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_b

    .line 4152
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->canDisablePhysicalSubscription()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 4156
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_b
    goto :goto_d

    .line 4154
    :catch_c
    move-exception v0

    .line 4158
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist canManageSubscription(Landroid/telephony/SubscriptionInfo;)Z
    .registers 3
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .line 3507
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z
    .registers 10
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3529
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->hsumPackageManager()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3530
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/SubscriptionManager;->canManageSubscriptionAsUser(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 3532
    :cond_11
    const/4 v0, 0x0

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAccessRules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_60

    if-nez p2, :cond_1d

    goto :goto_60

    .line 3535
    :cond_1d
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3538
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x8000000

    :try_start_25
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_29} :catch_48

    .line 3543
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 3544
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAccessRules()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccAccessRule;

    .line 3545
    .local v4, "rule":Landroid/telephony/UiccAccessRule;
    invoke-virtual {v4, v2}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_46

    .line 3547
    return v6

    .line 3549
    .end local v4    # "rule":Landroid/telephony/UiccAccessRule;
    :cond_46
    goto :goto_32

    .line 3550
    :cond_47
    return v0

    .line 3540
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_48
    move-exception v2

    .line 3541
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 3542
    return v0

    .line 3533
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_60
    :goto_60
    return v0
.end method

.method public blacklist canManageSubscriptionAsUser(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 11
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 3575
    const/4 v0, 0x0

    if-eqz p1, :cond_67

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAccessRules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_67

    if-nez p2, :cond_c

    goto :goto_67

    .line 3578
    :cond_c
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3579
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    goto :goto_29

    .line 3580
    :cond_1f
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :goto_29
    nop

    .line 3583
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x8000000

    :try_start_2c
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_30} :catch_4f

    .line 3588
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 3589
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAccessRules()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccAccessRule;

    .line 3590
    .local v4, "rule":Landroid/telephony/UiccAccessRule;
    invoke-virtual {v4, v2}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4d

    .line 3592
    return v6

    .line 3594
    .end local v4    # "rule":Landroid/telephony/UiccAccessRule;
    :cond_4d
    goto :goto_39

    .line 3595
    :cond_4e
    return v0

    .line 3585
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_4f
    move-exception v2

    .line 3586
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 3587
    return v0

    .line 3576
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_67
    :goto_67
    return v0
.end method

.method public blacklist createForAllUserProfiles()Landroid/telephony/SubscriptionManager;
    .registers 4

    .line 2130
    new-instance v0, Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public whitelist createSubscriptionGroup(Ljava/util/List;)Landroid/os/ParcelUuid;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/ParcelUuid;"
        }
    .end annotation

    .line 3818
    .local p1, "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "can\'t create group for null subId list"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3819
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_10
    const-string v0, "<unknown>"

    .line 3824
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_12
    const/4 v1, 0x0

    .line 3825
    .local v1, "groupUuid":Landroid/os/ParcelUuid;
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    .line 3827
    .local v2, "subIdArray":[I
    :try_start_24
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v3

    .line 3828
    .local v3, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v3, :cond_30

    .line 3829
    invoke-interface {v3, v2, v0}, Lcom/android/internal/telephony/ISub;->createSubscriptionGroup([ILjava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    move-object v1, v4

    .line 3836
    .end local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    goto :goto_53

    .line 3831
    .restart local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_30
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "telephony service is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local v1    # "groupUuid":Landroid/os/ParcelUuid;
    .end local v2    # "subIdArray":[I
    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    throw v4
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_39} :catch_39

    .line 3833
    .end local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local v1    # "groupUuid":Landroid/os/ParcelUuid;
    .restart local v2    # "subIdArray":[I
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_39
    move-exception v3

    .line 3834
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSubscriptionGroup RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    .line 3835
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3838
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_53
    return-object v1
.end method

.method public whitelist getAccessibleSubscriptionInfoList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2238
    const/4 v0, 0x0

    .line 2241
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2242
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_12

    .line 2243
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    move-object v0, v2

    .line 2247
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_12
    goto :goto_14

    .line 2245
    :catch_13
    move-exception v1

    .line 2248
    :goto_14
    if-nez v0, :cond_1b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    move-object v1, v0

    :goto_1c
    return-object v1
.end method

.method public whitelist getActiveSubscriptionIdList()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2910
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActiveSubscriptionIdList(Z)[I
    .registers 4
    .param p1, "visibleOnly"    # Z

    .line 2941
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2942
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_d

    .line 2943
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList(Z)[I

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    .line 2944
    .local v1, "subId":[I
    if-eqz v1, :cond_d

    return-object v1

    .line 2948
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v1    # "subId":[I
    :cond_d
    goto :goto_f

    .line 2946
    :catch_e
    move-exception v0

    .line 2950
    :goto_f
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .registers 6
    .param p1, "subId"    # I

    .line 1904
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1908
    const/4 v0, 0x0

    return-object v0

    .line 1911
    :cond_8
    const/4 v0, 0x0

    .line 1914
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    :try_start_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1915
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_20

    .line 1916
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1917
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1916
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1f} :catch_21

    move-object v0, v2

    .line 1921
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_20
    goto :goto_22

    .line 1919
    :catch_21
    move-exception v1

    .line 1923
    :goto_22
    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfoCount()I
    .registers 6

    .line 2324
    const/4 v0, 0x0

    .line 2327
    .local v0, "result":I
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2328
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1a

    .line 2329
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 2330
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/SubscriptionManager;->mIsForAllUserProfiles:Z

    .line 2329
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_1b

    move v0, v2

    .line 2334
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1a
    goto :goto_1c

    .line 2332
    :catch_1b
    move-exception v1

    .line 2336
    :goto_1c
    return v0
.end method

.method public whitelist getActiveSubscriptionInfoCountMax()I
    .registers 4

    .line 2345
    const/4 v0, 0x0

    .line 2348
    .local v0, "result":I
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2349
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_c

    .line 2350
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCountMax()I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    .line 2354
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_c
    goto :goto_e

    .line 2352
    :catch_d
    move-exception v1

    .line 2356
    :goto_e
    return v0
.end method

.method public whitelist getActiveSubscriptionInfoForIcc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .registers 6
    .param p1, "iccId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1941
    if-nez p1, :cond_9

    .line 1942
    const-string v0, "[getActiveSubscriptionInfoForIccIndex]- null iccid"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1943
    const/4 v0, 0x0

    return-object v0

    .line 1946
    :cond_9
    const/4 v0, 0x0

    .line 1949
    .local v0, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1950
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_21

    .line 1951
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1952
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1951
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_20} :catch_22

    move-object v0, v2

    .line 1956
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_21
    goto :goto_23

    .line 1954
    :catch_22
    move-exception v1

    .line 1958
    :goto_23
    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .registers 6
    .param p1, "slotIndex"    # I

    .line 1978
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1979
    const-string v0, "[getActiveSubscriptionInfoForSimSlotIndex]- invalid slotIndex"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1980
    const/4 v0, 0x0

    return-object v0

    .line 1983
    :cond_d
    const/4 v0, 0x0

    .line 1986
    .local v0, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1987
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_25

    .line 1988
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1989
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1988
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_24} :catch_26

    move-object v0, v2

    .line 1993
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_25
    goto :goto_27

    .line 1991
    :catch_26
    move-exception v1

    .line 1995
    :goto_27
    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfoList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2065
    const/4 v0, 0x0

    .line 2068
    .local v0, "activeList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2069
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1a

    .line 2070
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 2071
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/SubscriptionManager;->mIsForAllUserProfiles:Z

    .line 2070
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_1b

    move-object v0, v2

    .line 2075
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1a
    goto :goto_1c

    .line 2073
    :catch_1b
    move-exception v1

    .line 2077
    :goto_1c
    if-eqz v0, :cond_37

    .line 2078
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/SubscriptionManager;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 2079
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    goto :goto_3b

    .line 2081
    :cond_37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2083
    :goto_3b
    return-object v0
.end method

.method public blacklist getActiveSubscriptionInfoList(Z)Ljava/util/List;
    .registers 7
    .param p1, "userVisibleOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2140
    const/4 v0, 0x0

    .line 2143
    .local v0, "activeList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2144
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_19

    .line 2145
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 2146
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2145
    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1a

    move-object v0, v2

    .line 2150
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_19
    goto :goto_1b

    .line 2148
    :catch_1a
    move-exception v1

    .line 2152
    :goto_1b
    if-eqz v0, :cond_3f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_3f

    .line 2154
    :cond_24
    if-eqz p1, :cond_3e

    .line 2155
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/SubscriptionManager;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 2156
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2155
    return-object v1

    .line 2158
    :cond_3e
    return-object v0

    .line 2153
    :cond_3f
    :goto_3f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getAllSimSpecificSettingsForBackup()[B
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4414
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "getSimSpecificSettings"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 4417
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "KEY_SIM_SPECIFIC_SETTINGS_DATA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public whitelist getAllSubscriptionInfoList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2026
    const/4 v0, 0x0

    .line 2028
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2029
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_18

    .line 2030
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 2031
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2030
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19

    move-object v0, v2

    .line 2035
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_18
    goto :goto_1a

    .line 2033
    :catch_19
    move-exception v1

    .line 2037
    :goto_1a
    if-nez v0, :cond_20

    .line 2038
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2040
    :cond_20
    return-object v0
.end method

.method public whitelist getAvailableSubscriptionInfoList()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2196
    const/4 v0, 0x0

    .line 2199
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2200
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_18

    .line 2201
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 2202
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2201
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19

    move-object v0, v2

    .line 2206
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_18
    goto :goto_1a

    .line 2204
    :catch_19
    move-exception v1

    .line 2207
    :goto_1a
    if-nez v0, :cond_21

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_22

    :cond_21
    move-object v1, v0

    :goto_22
    return-object v1
.end method

.method public whitelist getCompleteActiveSubscriptionIdList()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2931
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCompleteActiveSubscriptionInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .registers 2

    .line 2803
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .registers 2

    .line 2709
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceToDeviceStatusSharingContacts(I)Ljava/util/List;
    .registers 11
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 4262
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string v1, "d2d_sharing_contacts"

    invoke-static {v0, p1, v1}, Landroid/telephony/SubscriptionManager;->getStringSubscriptionProperty(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4264
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_52

    .line 4266
    const/4 v1, 0x0

    :try_start_b
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 4267
    .local v1, "b":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4268
    .local v2, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4269
    .local v3, "ois":Ljava/io/ObjectInputStream;
    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 4270
    .local v4, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4271
    .local v5, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 4272
    .local v7, "contact":Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_41} :catch_4b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_41} :catch_44

    .line 4273
    nop

    .end local v7    # "contact":Ljava/lang/String;
    goto :goto_2e

    .line 4274
    :cond_43
    return-object v5

    .line 4277
    .end local v1    # "b":[B
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .end local v4    # "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catch_44
    move-exception v1

    .line 4278
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "getDeviceToDeviceStatusSharingContacts ClassNotFound exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_52

    .line 4275
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4b
    move-exception v1

    .line 4276
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "getDeviceToDeviceStatusSharingContacts IO exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 4279
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 4281
    :cond_52
    :goto_52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public whitelist getDeviceToDeviceStatusSharingPreference(I)I
    .registers 5
    .param p1, "subscriptionId"    # I

    .line 4222
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string v2, "d2d_sharing_status"

    invoke-static {p1, v2, v0, v1}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public whitelist getEnabledSubscriptionId(I)I
    .registers 5
    .param p1, "slotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4300
    const/4 v0, -0x1

    .line 4303
    .local v0, "subId":I
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 4304
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_c

    .line 4305
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->getEnabledSubscriptionId(I)I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    .line 4309
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_c
    goto :goto_e

    .line 4307
    :catch_d
    move-exception v1

    .line 4312
    :goto_e
    return v0
.end method

.method public whitelist getOpportunisticSubscriptions()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 3705
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "<unknown>"

    .line 3706
    .local v0, "contextPkg":Ljava/lang/String;
    :goto_d
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 3707
    .local v1, "contextAttributionTag":Ljava/lang/String;
    :goto_19
    const/4 v2, 0x0

    .line 3710
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_1a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v3

    .line 3711
    .local v3, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v3, :cond_25

    .line 3712
    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/ISub;->getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_26

    move-object v2, v4

    .line 3717
    .end local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_25
    goto :goto_27

    .line 3715
    :catch_26
    move-exception v3

    .line 3719
    :goto_27
    if-nez v2, :cond_2f

    .line 3720
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 3723
    :cond_2f
    return-object v2
.end method

.method public whitelist getPhoneNumber(I)Ljava/lang/String;
    .registers 5
    .param p1, "subscriptionId"    # I

    .line 4564
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_9

    .line 4565
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 4568
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4569
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_20

    .line 4570
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 4571
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 4570
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ISub;->getPhoneNumberFromFirstAvailableSource(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4573
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subscription service unavailable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subscriptionId":I
    throw v1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_29} :catch_29

    .line 4575
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subscriptionId":I
    :catch_29
    move-exception v0

    .line 4576
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPhoneNumber(II)Ljava/lang/String;
    .registers 6
    .param p1, "subscriptionId"    # I
    .param p2, "source"    # I

    .line 4504
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_9

    .line 4505
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 4507
    :cond_9
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2d

    const/4 v0, 0x3

    if-ne p2, v0, :cond_13

    goto :goto_2d

    .line 4510
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4513
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4514
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_44

    .line 4515
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 4516
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 4515
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/ISub;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4518
    :cond_44
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subscription service unavailable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subscriptionId":I
    .end local p2    # "source":I
    throw v1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4d} :catch_4d

    .line 4520
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subscriptionId":I
    .restart local p2    # "source":I
    :catch_4d
    move-exception v0

    .line 4521
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPreferredDataSubscriptionId()I
    .registers 4

    .line 3674
    const v0, 0x7fffffff

    .line 3676
    .local v0, "preferredSubId":I
    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 3677
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_e

    .line 3678
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getPreferredDataSubscriptionId()I

    move-result v2
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_f

    move v0, v2

    .line 3682
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_e
    goto :goto_10

    .line 3680
    :catch_f
    move-exception v1

    .line 3684
    :goto_10
    return v0
.end method

.method public blacklist getSelectableSubscriptionInfoList()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 4036
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 4037
    .local v0, "availableList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_8

    .line 4038
    const/4 v1, 0x0

    return-object v1

    .line 4043
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4044
    .local v1, "selectableList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4046
    .local v2, "groupMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 4049
    .local v4, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v5

    if-eqz v5, :cond_2f

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v5

    if-eqz v5, :cond_2f

    goto :goto_16

    .line 4051
    :cond_2f
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v5

    .line 4052
    .local v5, "groupUuid":Landroid/os/ParcelUuid;
    if-nez v5, :cond_39

    .line 4054
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 4055
    :cond_39
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 4056
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5f

    .line 4057
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    if-eq v6, v7, :cond_5f

    .line 4060
    :cond_52
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4061
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4062
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4065
    .end local v4    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "groupUuid":Landroid/os/ParcelUuid;
    :cond_5f
    :goto_5f
    goto :goto_16

    .line 4066
    :cond_60
    return-object v1
.end method

.method public whitelist getSubscriptionIds(I)[I
    .registers 3
    .param p1, "slotIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2563
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2564
    const/4 v0, 0x0

    return-object v0

    .line 2566
    :cond_8
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubscriptionInfoListAssociatedWithUser(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 4911
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4912
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_b

    .line 4913
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->getSubscriptionInfoListAssociatedWithUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 4915
    :cond_b
    const-string v1, "SubscriptionManager"

    const-string v2, "[getSubscriptionInfoListAssociatedWithUser]: subscription service unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 4920
    nop

    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    goto :goto_18

    .line 4918
    :catch_14
    move-exception v0

    .line 4919
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 4921
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getSubscriptionPlans(I)Ljava/util/List;
    .registers 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation

    .line 3304
    nop

    .line 3305
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/net/NetworkPolicyManager;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    .line 3306
    .local v0, "subscriptionPlans":[Landroid/telephony/SubscriptionPlan;
    if-nez v0, :cond_16

    .line 3307
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1a

    :cond_16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3306
    :goto_1a
    return-object v1
.end method

.method public blacklist getSubscriptionUserHandle(I)Landroid/os/UserHandle;
    .registers 5
    .param p1, "subscriptionId"    # I

    .line 4808
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4814
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4815
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_11

    .line 4816
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->getSubscriptionUserHandle(I)Landroid/os/UserHandle;

    move-result-object v1

    return-object v1

    .line 4818
    :cond_11
    const-string v1, "SubscriptionManager"

    const-string v2, "[getSubscriptionUserHandle]: subscription service unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_1a

    .line 4822
    nop

    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    goto :goto_1e

    .line 4820
    :catch_1a
    move-exception v0

    .line 4821
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 4823
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1e
    const/4 v0, 0x0

    return-object v0

    .line 4809
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSubscriptionUserHandle]: Invalid subscriptionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;
    .registers 8
    .param p1, "groupUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 3966
    const-string/jumbo v0, "groupUuid can\'t be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3967
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    const-string v0, "<unknown>"

    .line 3968
    .local v0, "contextPkg":Ljava/lang/String;
    :goto_13
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 3973
    .local v1, "contextAttributionTag":Ljava/lang/String;
    :goto_1f
    const/4 v2, 0x0

    .line 3975
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_20
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v3

    .line 3976
    .local v3, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v3, :cond_2c

    .line 3977
    invoke-interface {v3, p1, v0, v1}, Lcom/android/internal/telephony/ISub;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    goto :goto_32

    .line 3980
    :cond_2c
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 3989
    .end local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    :goto_32
    goto :goto_5d

    .line 3981
    .restart local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_33
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "telephony service is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "contextPkg":Ljava/lang/String;
    .end local v1    # "contextAttributionTag":Ljava/lang/String;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "groupUuid":Landroid/os/ParcelUuid;
    throw v4
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_3c} :catch_3c

    .line 3984
    .end local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local v0    # "contextPkg":Ljava/lang/String;
    .restart local v1    # "contextAttributionTag":Ljava/lang/String;
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "groupUuid":Landroid/os/ParcelUuid;
    :catch_3c
    move-exception v3

    .line 3985
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeSubscriptionsFromGroup RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    .line 3986
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-nez v4, :cond_5d

    .line 3987
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3994
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    if-nez v2, :cond_63

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 3996
    :cond_63
    return-object v2
.end method

.method public greylist isActiveSubId(I)Z
    .registers 5
    .param p1, "subId"    # I

    .line 3277
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 3278
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_17

    .line 3279
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 3280
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 3279
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ISub;->isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return v1

    .line 3283
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_17
    goto :goto_19

    .line 3282
    :catch_18
    move-exception v0

    .line 3284
    :goto_19
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isActiveSubscriptionId(I)Z
    .registers 3
    .param p1, "subscriptionId"    # I

    .line 3266
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isNetworkRoaming(I)Z
    .registers 4
    .param p1, "subId"    # I

    .line 2963
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2964
    .local v0, "phoneId":I
    if-gez v0, :cond_8

    .line 2966
    const/4 v1, 0x0

    return v1

    .line 2968
    :cond_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    return v1
.end method

.method public blacklist isSubscriptionAssociatedWithUser(I)Z
    .registers 7
    .param p1, "subscriptionId"    # I

    .line 4874
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 4879
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    const-string v0, "<unknown>"

    .line 4880
    .local v0, "contextPkg":Ljava/lang/String;
    :goto_13
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 4883
    .local v1, "contextAttributionTag":Ljava/lang/String;
    :goto_1f
    :try_start_1f
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v2

    .line 4884
    .local v2, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v2, :cond_2a

    .line 4885
    invoke-interface {v2, p1, v0, v1}, Lcom/android/internal/telephony/ISub;->isSubscriptionAssociatedWithCallingUser(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 4888
    :cond_2a
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "subscription service unavailable."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "contextPkg":Ljava/lang/String;
    .end local v1    # "contextAttributionTag":Ljava/lang/String;
    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subscriptionId":I
    throw v3
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_33} :catch_33

    .line 4890
    .end local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local v0    # "contextPkg":Ljava/lang/String;
    .restart local v1    # "contextAttributionTag":Ljava/lang/String;
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subscriptionId":I
    :catch_33
    move-exception v2

    .line 4891
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 4893
    .end local v2    # "ex":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2

    .line 4875
    .end local v0    # "contextPkg":Ljava/lang/String;
    .end local v1    # "contextAttributionTag":Ljava/lang/String;
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isSubscriptionAssociatedWithCallingUser]: Invalid subscriptionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isSubscriptionAssociatedWithUser(ILandroid/os/UserHandle;)Z
    .registers 6
    .param p1, "subscriptionId"    # I
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 4842
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4848
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4849
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_11

    .line 4850
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->isSubscriptionAssociatedWithUser(ILandroid/os/UserHandle;)Z

    move-result v1

    return v1

    .line 4852
    :cond_11
    const-string v1, "SubscriptionManager"

    const-string v2, "[isSubscriptionAssociatedWithUser]: subscription service unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_1a

    .line 4857
    nop

    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    goto :goto_1e

    .line 4855
    :catch_1a
    move-exception v0

    .line 4856
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 4858
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1e
    const/4 v0, 0x0

    return v0

    .line 4843
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isSubscriptionAssociatedWithUser]: Invalid subscriptionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isSubscriptionEnabled(I)Z
    .registers 4
    .param p1, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4174
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4175
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_b

    .line 4176
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->isSubscriptionEnabled(I)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 4180
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_b
    goto :goto_d

    .line 4178
    :catch_c
    move-exception v0

    .line 4182
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z
    .registers 6
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .line 4012
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 4014
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_2a

    .line 4018
    :cond_12
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 4019
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 4020
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;)Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_28
    move v0, v2

    .line 4021
    .local v0, "hasCarrierPrivilegePermission":Z
    :cond_29
    return v0

    .line 4014
    .end local v0    # "hasCarrierPrivilegePermission":Z
    :cond_2a
    :goto_2a
    return v2
.end method

.method public whitelist removeOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    .line 1874
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    const-string v0, "<unknown>"

    .line 1880
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_13
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1881
    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    .line 1882
    .local v1, "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    if-eqz v1, :cond_23

    .line 1883
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyRegistryManager;->removeOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V

    .line 1885
    :cond_23
    return-void
.end method

.method public whitelist removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1790
    if-nez p1, :cond_3

    return-void

    .line 1791
    :cond_3
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_e
    const-string v0, "<unknown>"

    .line 1798
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_10
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1799
    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    .line 1800
    .local v1, "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    if-eqz v1, :cond_20

    .line 1801
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyRegistryManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1803
    :cond_20
    return-void
.end method

.method public blacklist removeSubscriptionInfoRecord(Ljava/lang/String;I)V
    .registers 7
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "subscriptionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2446
    const-string v0, "SubscriptionManager"

    if-nez p1, :cond_a

    .line 2447
    const-string v1, "[addSubscriptionInfoRecord]- uniqueId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    return-void

    .line 2452
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2453
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-nez v1, :cond_16

    .line 2454
    const-string v2, "[removeSubscriptionInfoRecord]- ISub service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    return-void

    .line 2457
    :cond_16
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->removeSubInfo(Ljava/lang/String;I)Z

    move-result v2

    .line 2458
    .local v2, "result":Z
    if-nez v2, :cond_22

    .line 2459
    const-string v3, "Removal of subscription didn\'t succeed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 2461
    :cond_22
    const-string/jumbo v0, "successfully removed subscription"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_28} :catch_29

    .line 2465
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":Z
    :goto_28
    goto :goto_2a

    .line 2463
    :catch_29
    move-exception v0

    .line 2466
    :goto_2a
    return-void
.end method

.method public whitelist removeSubscriptionsFromGroup(Ljava/util/List;Landroid/os/ParcelUuid;)V
    .registers 8
    .param p2, "groupUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/ParcelUuid;",
            ")V"
        }
    .end annotation

    .line 3914
    .local p1, "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v0, "subIdList can\'t be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3915
    const-string/jumbo v0, "groupUuid can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3916
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_17
    const-string v0, "<unknown>"

    .line 3921
    .local v0, "callingPackage":Ljava/lang/String;
    :goto_19
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 3924
    .local v1, "subIdArray":[I
    :try_start_2a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v2

    .line 3925
    .local v2, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v2, :cond_34

    .line 3926
    invoke-interface {v2, v1, p2, v0}, Lcom/android/internal/telephony/ISub;->removeSubscriptionsFromGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 3933
    .end local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    goto :goto_58

    .line 3928
    .restart local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_34
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "telephony service is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingPackage":Ljava/lang/String;
    .end local v1    # "subIdArray":[I
    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "groupUuid":Landroid/os/ParcelUuid;
    throw v3
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3d} :catch_3d

    .line 3930
    .end local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local v0    # "callingPackage":Ljava/lang/String;
    .restart local v1    # "subIdArray":[I
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p2    # "groupUuid":Landroid/os/ParcelUuid;
    :catch_3d
    move-exception v2

    .line 3931
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSubscriptionsFromGroup RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    .line 3932
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3934
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_58
    return-void
.end method

.method public whitelist requestEmbeddedSubscriptionInfoListRefresh()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2270
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v0

    .line 2272
    .local v0, "cardId":I
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2273
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_13

    .line 2274
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ISub;->requestEmbeddedSubscriptionInfoListRefresh(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 2278
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_13
    goto :goto_32

    .line 2276
    :catch_14
    move-exception v1

    .line 2277
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestEmbeddedSubscriptionInfoListFresh for card = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2279
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method public whitelist requestEmbeddedSubscriptionInfoListRefresh(I)V
    .registers 5
    .param p1, "cardId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2303
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2304
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_9

    .line 2305
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->requestEmbeddedSubscriptionInfoListRefresh(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2309
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_9
    goto :goto_28

    .line 2307
    :catch_a
    move-exception v0

    .line 2308
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestEmbeddedSubscriptionInfoListFresh for card = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2310
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method public whitelist restoreAllSimSpecificSettingsFromBackup([B)V
    .registers 5
    .param p1, "data"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4442
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4443
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_a

    .line 4444
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->restoreAllSimSpecificSettingsFromBackup([B)V

    .line 4452
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    goto :goto_1d

    .line 4446
    .restart local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subscription service unavailable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "data":[B
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 4448
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "data":[B
    :catch_13
    move-exception v0

    .line 4449
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 4450
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 4453
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    return-void
.end method

.method public whitelist setCarrierPhoneNumber(ILjava/lang/String;)V
    .registers 9
    .param p1, "subscriptionId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 4602
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_b

    .line 4603
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    move v1, p1

    goto :goto_c

    .line 4602
    :cond_b
    move v1, p1

    .line 4605
    .end local p1    # "subscriptionId":I
    .local v1, "subscriptionId":I
    :goto_c
    if-eqz p2, :cond_3c

    .line 4609
    :try_start_e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4610
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_27

    .line 4611
    iget-object p1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 4612
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_20} :catch_34

    .line 4611
    const/4 v2, 0x2

    move-object v3, p2

    .end local p2    # "number":Ljava/lang/String;
    .local v3, "number":Ljava/lang/String;
    :try_start_22
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISub;->setPhoneNumber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4618
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    nop

    .line 4619
    return-void

    .line 4614
    .end local v3    # "number":Ljava/lang/String;
    .restart local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local p2    # "number":Ljava/lang/String;
    :cond_27
    move-object v3, p2

    .end local p2    # "number":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "subscription service unavailable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "subscriptionId":I
    .end local v3    # "number":Ljava/lang/String;
    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    throw p1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_31} :catch_31

    .line 4616
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local v1    # "subscriptionId":I
    .restart local v3    # "number":Ljava/lang/String;
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    :catch_31
    move-exception v0

    move-object p1, v0

    goto :goto_37

    .end local v3    # "number":Ljava/lang/String;
    .restart local p2    # "number":Ljava/lang/String;
    :catch_34
    move-exception v0

    move-object v3, p2

    move-object p1, v0

    .line 4617
    .end local p2    # "number":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_37
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 4606
    .end local v3    # "number":Ljava/lang/String;
    .end local p1    # "ex":Landroid/os/RemoteException;
    .restart local p2    # "number":Ljava/lang/String;
    :cond_3c
    move-object v3, p2

    .end local p2    # "number":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "invalid number null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-r setDataRoaming(II)I
    .registers 5
    .param p1, "roaming"    # I
    .param p2, "subId"    # I

    .line 2531
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda5;-><init>(II)V

    const-string/jumbo v1, "setDataRoaming"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public whitelist setDefaultDataSubId(I)V
    .registers 3
    .param p1, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2781
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2782
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_9

    .line 2783
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2787
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_9
    goto :goto_b

    .line 2785
    :catch_a
    move-exception v0

    .line 2788
    :goto_b
    return-void
.end method

.method public whitelist setDefaultSmsSubId(I)V
    .registers 3
    .param p1, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2745
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2746
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_9

    .line 2747
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2751
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_9
    goto :goto_e

    .line 2749
    :catch_a
    move-exception v0

    .line 2750
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2752
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public greylist-max-o setDefaultVoiceSubId(I)V
    .registers 2
    .param p1, "subId"    # I

    .line 2696
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubscriptionId(I)V

    .line 2697
    return-void
.end method

.method public whitelist setDefaultVoiceSubscriptionId(I)V
    .registers 3
    .param p1, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2678
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2679
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_9

    .line 2680
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2684
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_9
    goto :goto_b

    .line 2682
    :catch_a
    move-exception v0

    .line 2685
    :goto_b
    return-void
.end method

.method public whitelist setDeviceToDeviceStatusSharingContacts(ILjava/util/List;)V
    .registers 6
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 4241
    .local p2, "contacts":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->serializeUriLists(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 4246
    .local v0, "contactString":Ljava/lang/String;
    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda8;-><init>(Ljava/util/List;I)V

    const-string/jumbo v2, "setDeviceToDeviceSharingStatus"

    invoke-direct {p0, p1, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    .line 4249
    return-void
.end method

.method public whitelist setDeviceToDeviceStatusSharingPreference(II)V
    .registers 5
    .param p1, "subscriptionId"    # I
    .param p2, "sharing"    # I

    .line 4204
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda1;-><init>(II)V

    const-string/jumbo v1, "setDeviceToDeviceSharingStatus"

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    .line 4206
    return-void
.end method

.method public blacklist setDisplayName(Ljava/lang/String;II)I
    .registers 6
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # I

    .line 2498
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1, p2, p3}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;II)V

    const-string/jumbo v1, "setDisplayName"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public greylist-max-r setDisplayNumber(Ljava/lang/String;I)I
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 2512
    if-nez p1, :cond_9

    .line 2513
    const-string v0, "[setDisplayNumber]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2514
    const/4 v0, -0x1

    return v0

    .line 2516
    :cond_9
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda19;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v1, "setDisplayNumber"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public blacklist setGroupOwner(ILjava/lang/String;)V
    .registers 6
    .param p1, "subscriptionId"    # I
    .param p2, "groupOwner"    # Ljava/lang/String;

    .line 4743
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4744
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_a

    .line 4745
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setGroupOwner(ILjava/lang/String;)V

    .line 4752
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    goto :goto_16

    .line 4747
    .restart local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "[setGroupOwner]: subscription service unavailable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subscriptionId":I
    .end local p2    # "groupOwner":Ljava/lang/String;
    throw v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_12

    .line 4750
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subscriptionId":I
    .restart local p2    # "groupOwner":Ljava/lang/String;
    :catch_12
    move-exception v0

    .line 4751
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 4753
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist setIconTint(II)I
    .registers 5
    .param p1, "tint"    # I
    .param p2, "subId"    # I

    .line 2478
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda4;-><init>(II)V

    const-string/jumbo v1, "setIconTint"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public whitelist setOpportunistic(ZI)Z
    .registers 5
    .param p1, "opportunistic"    # Z
    .param p2, "subId"    # I

    .line 3777
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/SubscriptionManager;ZI)V

    const-string/jumbo v1, "setOpportunistic"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public whitelist setPreferredDataSubscriptionId(IZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "subId"    # I
    .param p2, "needValidation"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3630
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 3631
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 3635
    new-instance v1, Landroid/telephony/SubscriptionManager$1;

    invoke-direct {v1, p0, p3, p4}, Landroid/telephony/SubscriptionManager$1;-><init>(Landroid/telephony/SubscriptionManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3651
    .local v1, "callbackStub":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/ISub;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    .line 3655
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v1    # "callbackStub":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    goto :goto_33

    .line 3632
    .restart local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subscription manager service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subId":I
    .end local p2    # "needValidation":Z
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 3652
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subId":I
    .restart local p2    # "needValidation":Z
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :catch_18
    move-exception v0

    .line 3653
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreferredDataSubscriptionId RemoteException="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    .line 3654
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3656
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_33
    return-void
.end method

.method public whitelist setSubscriptionEnabled(IZ)Z
    .registers 5
    .param p1, "subscriptionId"    # I
    .param p2, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4087
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4088
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_9

    .line 4089
    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/ISub;->setUiccApplicationsEnabled(ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c

    .line 4093
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_9
    nop

    .line 4094
    const/4 v0, 0x1

    return v0

    .line 4091
    :catch_c
    move-exception v0

    .line 4092
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setSubscriptionOverrideCongested(IZJ)V
    .registers 11
    .param p1, "subId"    # I
    .param p2, "overrideCongested"    # Z
    .param p3, "expirationDurationMillis"    # J

    .line 3458
    nop

    .line 3459
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v3

    .line 3458
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    .end local p1    # "subId":I
    .end local p2    # "overrideCongested":Z
    .end local p3    # "expirationDurationMillis":J
    .local v1, "subId":I
    .local v2, "overrideCongested":Z
    .local v4, "expirationDurationMillis":J
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SubscriptionManager;->setSubscriptionOverrideCongested(IZ[IJ)V

    .line 3460
    return-void
.end method

.method public whitelist setSubscriptionOverrideCongested(IZ[IJ)V
    .registers 15
    .param p1, "subId"    # I
    .param p2, "overrideCongested"    # Z
    .param p3, "networkTypes"    # [I
    .param p4, "expirationDurationMillis"    # J

    .line 3489
    if-eqz p2, :cond_4

    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    move v4, v0

    .line 3490
    .local v4, "overrideValue":I
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 3491
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3490
    const/4 v3, 0x2

    move v2, p1

    move-object v5, p3

    move-wide v6, p4

    .end local p1    # "subId":I
    .end local p3    # "networkTypes":[I
    .end local p4    # "expirationDurationMillis":J
    .local v2, "subId":I
    .local v5, "networkTypes":[I
    .local v6, "expirationDurationMillis":J
    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkPolicyManager;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    .line 3492
    return-void
.end method

.method public whitelist setSubscriptionOverrideUnmetered(IZJ)V
    .registers 11
    .param p1, "subId"    # I
    .param p2, "overrideUnmetered"    # Z
    .param p3, "expirationDurationMillis"    # J

    .line 3395
    nop

    .line 3396
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v3

    .line 3395
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    .end local p1    # "subId":I
    .end local p2    # "overrideUnmetered":Z
    .end local p3    # "expirationDurationMillis":J
    .local v1, "subId":I
    .local v2, "overrideUnmetered":Z
    .local v4, "expirationDurationMillis":J
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SubscriptionManager;->setSubscriptionOverrideUnmetered(IZ[IJ)V

    .line 3397
    return-void
.end method

.method public whitelist setSubscriptionOverrideUnmetered(IZ[IJ)V
    .registers 14
    .param p1, "subId"    # I
    .param p2, "overrideUnmetered"    # Z
    .param p3, "networkTypes"    # [I
    .param p4, "expirationDurationMillis"    # J

    .line 3427
    move v3, p2

    .line 3428
    .local v3, "overrideValue":I
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 3429
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3428
    const/4 v2, 0x1

    move v1, p1

    move-object v4, p3

    move-wide v5, p4

    .end local p1    # "subId":I
    .end local p3    # "networkTypes":[I
    .end local p4    # "expirationDurationMillis":J
    .local v1, "subId":I
    .local v4, "networkTypes":[I
    .local v5, "expirationDurationMillis":J
    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkPolicyManager;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    .line 3430
    return-void
.end method

.method public whitelist setSubscriptionPlans(ILjava/util/List;)V
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3335
    .local p2, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionPlans(ILjava/util/List;J)V

    .line 3336
    return-void
.end method

.method public whitelist setSubscriptionPlans(ILjava/util/List;J)V
    .registers 11
    .param p1, "subId"    # I
    .param p3, "expirationDurationMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;J)V"
        }
    .end annotation

    .line 3365
    .local p2, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/telephony/SubscriptionPlan;

    .line 3366
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Landroid/telephony/SubscriptionPlan;

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 3367
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3365
    move v1, p1

    move-wide v3, p3

    .end local p1    # "subId":I
    .end local p3    # "expirationDurationMillis":J
    .local v1, "subId":I
    .local v3, "expirationDurationMillis":J
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkPolicyManager;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    .line 3368
    return-void
.end method

.method public blacklist setSubscriptionUserHandle(ILandroid/os/UserHandle;)V
    .registers 6
    .param p1, "subscriptionId"    # I
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 4774
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4780
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4781
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_10

    .line 4782
    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/ISub;->setSubscriptionUserHandle(Landroid/os/UserHandle;I)I

    .line 4789
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    goto :goto_1c

    .line 4784
    .restart local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "[setSubscriptionUserHandle]: subscription service unavailable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subscriptionId":I
    .end local p2    # "userHandle":Landroid/os/UserHandle;
    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_18

    .line 4787
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subscriptionId":I
    .restart local p2    # "userHandle":Landroid/os/UserHandle;
    :catch_18
    move-exception v0

    .line 4788
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 4790
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1c
    return-void

    .line 4775
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSubscriptionUserHandle]: Invalid subscriptionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTransferStatus(II)V
    .registers 6
    .param p1, "subscriptionId"    # I
    .param p2, "status"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4971
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4972
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_9

    .line 4973
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setTransferStatus(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 4978
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_9
    nop

    .line 4979
    return-void

    .line 4975
    :catch_b
    move-exception v0

    .line 4976
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTransferStatus for subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 4977
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setUiccApplicationsEnabled(IZ)V
    .registers 4
    .param p1, "subscriptionId"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4120
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4121
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_9

    .line 4122
    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/ISub;->setUiccApplicationsEnabled(ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4126
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_9
    goto :goto_b

    .line 4124
    :catch_a
    move-exception v0

    .line 4127
    :goto_b
    return-void
.end method

.method blacklist setUsageSetting(II)V
    .registers 5
    .param p1, "subscriptionId"    # I
    .param p2, "usageSetting"    # I

    .line 4644
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/SubscriptionManager;II)V

    const-string/jumbo v1, "setUsageSetting"

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    .line 4647
    return-void
.end method

.method public whitelist switchToSubscription(ILandroid/app/PendingIntent;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3744
    const-string v0, "callbackIntent cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3745
    new-instance v0, Landroid/telephony/euicc/EuiccManager;

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/euicc/EuiccManager;-><init>(Landroid/content/Context;)V

    .line 3746
    .local v0, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    invoke-virtual {v0, p1, p2}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(ILandroid/app/PendingIntent;)V

    .line 3747
    return-void
.end method
