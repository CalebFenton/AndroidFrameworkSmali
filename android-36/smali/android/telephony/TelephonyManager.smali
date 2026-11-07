.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$MultiSimVariants;,
        Landroid/telephony/TelephonyManager$DeathRecipient;,
        Landroid/telephony/TelephonyManager$CellInfoCallback;,
        Landroid/telephony/TelephonyManager$UssdResponseCallback;,
        Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;,
        Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;,
        Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;,
        Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;,
        Landroid/telephony/TelephonyManager$ModemActivityInfoException;,
        Landroid/telephony/TelephonyManager$CallComposerException;,
        Landroid/telephony/TelephonyManager$EmergencyCallbackModeStopReason;,
        Landroid/telephony/TelephonyManager$EmergencyCallbackModeType;,
        Landroid/telephony/TelephonyManager$CellBroadcastResult;,
        Landroid/telephony/TelephonyManager$PurchasePremiumCapabilityResult;,
        Landroid/telephony/TelephonyManager$PremiumCapability;,
        Landroid/telephony/TelephonyManager$ModemErrorException;,
        Landroid/telephony/TelephonyManager$TimeoutException;,
        Landroid/telephony/TelephonyManager$NetworkSlicingException;,
        Landroid/telephony/TelephonyManager$PrepareUnattendedRebootResult;,
        Landroid/telephony/TelephonyManager$AuthenticationFailureReason;,
        Landroid/telephony/TelephonyManager$IncludeLocationData;,
        Landroid/telephony/TelephonyManager$RadioInterfaceCapability;,
        Landroid/telephony/TelephonyManager$NrDualConnectivityState;,
        Landroid/telephony/TelephonyManager$EnableNrDualConnectivityResult;,
        Landroid/telephony/TelephonyManager$MobileDataPolicy;,
        Landroid/telephony/TelephonyManager$CallWaitingStatus;,
        Landroid/telephony/TelephonyManager$HalService;,
        Landroid/telephony/TelephonyManager$IsMultiSimSupportedResult;,
        Landroid/telephony/TelephonyManager$UpdateAvailableNetworksResult;,
        Landroid/telephony/TelephonyManager$SetOpportunisticSubscriptionResult;,
        Landroid/telephony/TelephonyManager$NetworkTypeBitMask;,
        Landroid/telephony/TelephonyManager$DataEnabledChangedReason;,
        Landroid/telephony/TelephonyManager$DataEnabledReason;,
        Landroid/telephony/TelephonyManager$EnableVoNrResult;,
        Landroid/telephony/TelephonyManager$CarrierRestrictionStatus;,
        Landroid/telephony/TelephonyManager$SetSimPowerStateResult;,
        Landroid/telephony/TelephonyManager$SetCarrierRestrictionResult;,
        Landroid/telephony/TelephonyManager$SimPowerState;,
        Landroid/telephony/TelephonyManager$CdmaSubscription;,
        Landroid/telephony/TelephonyManager$CallComposerStatus;,
        Landroid/telephony/TelephonyManager$AllowedNetworkTypesReason;,
        Landroid/telephony/TelephonyManager$PrefNetworkMode;,
        Landroid/telephony/TelephonyManager$AuthType;,
        Landroid/telephony/TelephonyManager$EriIconMode;,
        Landroid/telephony/TelephonyManager$EriIconIndex;,
        Landroid/telephony/TelephonyManager$DataState;,
        Landroid/telephony/TelephonyManager$SimState;,
        Landroid/telephony/TelephonyManager$SimCombinationWarningType;,
        Landroid/telephony/TelephonyManager$DefaultSubscriptionSelectType;,
        Landroid/telephony/TelephonyManager$CdmaRoamingMode;,
        Landroid/telephony/TelephonyManager$KeyType;,
        Landroid/telephony/TelephonyManager$RadioPowerReason;,
        Landroid/telephony/TelephonyManager$NetworkSelectionMode;,
        Landroid/telephony/TelephonyManager$WifiCallingChoices;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ANOMALY_REPORTED:Ljava/lang/String; = "android.telephony.action.ANOMALY_REPORTED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_CALL_DISCONNECT_CAUSE_CHANGED:Ljava/lang/String; = "android.intent.action.CALL_DISCONNECT_CAUSE"

.field public static final whitelist ACTION_CARRIER_MESSAGING_CLIENT_SERVICE:Ljava/lang/String; = "android.telephony.action.CARRIER_MESSAGING_CLIENT_SERVICE"

.field public static final whitelist ACTION_CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE:Ljava/lang/String; = "android.telephony.action.CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE"

.field public static final whitelist ACTION_CARRIER_SIGNAL_PCO_VALUE:Ljava/lang/String; = "android.telephony.action.CARRIER_SIGNAL_PCO_VALUE"

.field public static final whitelist ACTION_CARRIER_SIGNAL_REDIRECTED:Ljava/lang/String; = "android.telephony.action.CARRIER_SIGNAL_REDIRECTED"

.field public static final whitelist ACTION_CARRIER_SIGNAL_REQUEST_NETWORK_FAILED:Ljava/lang/String; = "android.telephony.action.CARRIER_SIGNAL_REQUEST_NETWORK_FAILED"

.field public static final whitelist ACTION_CARRIER_SIGNAL_RESET:Ljava/lang/String; = "android.telephony.action.CARRIER_SIGNAL_RESET"

.field public static final whitelist ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "android.telephony.action.CONFIGURE_VOICEMAIL"

.field public static final greylist-max-o ACTION_DATA_STALL_DETECTED:Ljava/lang/String; = "android.intent.action.DATA_STALL_DETECTED"

.field public static final whitelist ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_EMERGENCY_ASSISTANCE:Ljava/lang/String; = "android.telephony.action.EMERGENCY_ASSISTANCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_EMERGENCY_CALL_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MULTI_SIM_CONFIG_CHANGED:Ljava/lang/String; = "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

.field public static final whitelist ACTION_NETWORK_COUNTRY_CHANGED:Ljava/lang/String; = "android.telephony.action.NETWORK_COUNTRY_CHANGED"

.field public static final whitelist ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final blacklist ACTION_PRIMARY_SUBSCRIPTION_LIST_CHANGED:Ljava/lang/String; = "android.telephony.action.PRIMARY_SUBSCRIPTION_LIST_CHANGED"

.field public static final whitelist ACTION_REQUEST_OMADM_CONFIGURATION_UPDATE:Ljava/lang/String; = "com.android.omadm.service.CONFIGURATION_UPDATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_RESET_MOBILE_NETWORK_SETTINGS:Ljava/lang/String; = "android.telephony.action.RESET_MOBILE_NETWORK_SETTINGS"

.field public static final whitelist ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final whitelist ACTION_SECRET_CODE:Ljava/lang/String; = "android.telephony.action.SECRET_CODE"

.field public static final blacklist ACTION_SERVICE_PROVIDERS_UPDATED:Ljava/lang/String; = "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

.field public static final whitelist ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS:Ljava/lang/String; = "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SHOW_VOICEMAIL_NOTIFICATION:Ljava/lang/String; = "android.telephony.action.SHOW_VOICEMAIL_NOTIFICATION"

.field public static final whitelist ACTION_SIM_APPLICATION_STATE_CHANGED:Ljava/lang/String; = "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SIM_CARD_STATE_CHANGED:Ljava/lang/String; = "android.telephony.action.SIM_CARD_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SIM_SLOT_STATUS_CHANGED:Ljava/lang/String; = "android.telephony.action.SIM_SLOT_STATUS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SUBSCRIPTION_CARRIER_IDENTITY_CHANGED:Ljava/lang/String; = "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

.field public static final whitelist ACTION_SUBSCRIPTION_SPECIFIC_CARRIER_IDENTITY_CHANGED:Ljava/lang/String; = "android.telephony.action.SUBSCRIPTION_SPECIFIC_CARRIER_IDENTITY_CHANGED"

.field public static final whitelist ALLOWED_NETWORK_TYPES_REASON_CARRIER:I = 0x2

.field public static final whitelist ALLOWED_NETWORK_TYPES_REASON_ENABLE_2G:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ALLOWED_NETWORK_TYPES_REASON_POWER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ALLOWED_NETWORK_TYPES_REASON_TEST:I = 0x4

.field public static final whitelist ALLOWED_NETWORK_TYPES_REASON_USER:I = 0x0

.field public static final whitelist APPTYPE_CSIM:I = 0x4

.field public static final whitelist APPTYPE_ISIM:I = 0x5

.field public static final whitelist APPTYPE_RUIM:I = 0x3

.field public static final whitelist APPTYPE_SIM:I = 0x1

.field public static final whitelist APPTYPE_UNKNOWN:I = 0x0

.field public static final whitelist APPTYPE_USIM:I = 0x2

.field public static final whitelist AUTHTYPE_EAP_AKA:I = 0x81

.field public static final whitelist AUTHTYPE_EAP_SIM:I = 0x80

.field public static final whitelist AUTHTYPE_GBA_BOOTSTRAP:I = 0x84

.field public static final whitelist AUTHTYPE_GBA_NAF_KEY_EXTERNAL:I = 0x85

.field public static final blacklist CACHE_KEY_PHONE_ACCOUNT_TO_SUBID:Ljava/lang/String; = "cache_key.telephony.phone_account_to_subid"

.field private static final blacklist CACHE_MAX_SIZE:I = 0x4

.field private static final blacklist CALLBACK_ON_MORE_ERROR_CODE_CHANGE:J = 0x7c8ba7fL

.field public static final whitelist CALL_COMPOSER_STATUS_BUSINESS_ONLY:I = 0x2

.field public static final whitelist CALL_COMPOSER_STATUS_OFF:I = 0x0

.field public static final whitelist CALL_COMPOSER_STATUS_ON:I = 0x1

.field public static final whitelist CALL_STATE_IDLE:I = 0x0

.field public static final whitelist CALL_STATE_OFFHOOK:I = 0x2

.field public static final whitelist CALL_STATE_RINGING:I = 0x1

.field public static final whitelist CALL_WAITING_STATUS_DISABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_WAITING_STATUS_ENABLED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_WAITING_STATUS_FDN_CHECK_FAILURE:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_WAITING_STATUS_NOT_SUPPORTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_WAITING_STATUS_UNKNOWN_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_NR_DUAL_CONNECTIVITY_CONFIGURATION_AVAILABLE:Ljava/lang/String; = "CAPABILITY_NR_DUAL_CONNECTIVITY_CONFIGURATION_AVAILABLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CAPABILITY_PHYSICAL_CHANNEL_CONFIG_1_6_SUPPORTED:Ljava/lang/String; = "CAPABILITY_PHYSICAL_CHANNEL_CONFIG_1_6_SUPPORTED"

.field public static final whitelist CAPABILITY_SECONDARY_LINK_BANDWIDTH_VISIBLE:Ljava/lang/String; = "CAPABILITY_SECONDARY_LINK_BANDWIDTH_VISIBLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CAPABILITY_SIM_PHONEBOOK_IN_MODEM:Ljava/lang/String; = "CAPABILITY_SIM_PHONEBOOK_IN_MODEM"

.field public static final whitelist CAPABILITY_SLICING_CONFIG_SUPPORTED:Ljava/lang/String; = "CAPABILITY_SLICING_CONFIG_SUPPORTED"

.field public static final whitelist CAPABILITY_THERMAL_MITIGATION_DATA_THROTTLING:Ljava/lang/String; = "CAPABILITY_THERMAL_MITIGATION_DATA_THROTTLING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_USES_ALLOWED_NETWORK_TYPES_BITMASK:Ljava/lang/String; = "CAPABILITY_USES_ALLOWED_NETWORK_TYPES_BITMASK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o CARD_POWER_DOWN:I = 0x0

.field public static final greylist-max-o CARD_POWER_UP:I = 0x1

.field public static final greylist-max-o CARD_POWER_UP_PASS_THROUGH:I = 0x2

.field public static final whitelist CARRIER_PRIVILEGE_STATUS_ERROR_LOADING_RULES:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CARRIER_PRIVILEGE_STATUS_HAS_ACCESS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CARRIER_PRIVILEGE_STATUS_NO_ACCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CARRIER_PRIVILEGE_STATUS_RULES_NOT_LOADED:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CARRIER_RESTRICTION_STATUS_NOT_RESTRICTED:I = 0x1

.field public static final whitelist CARRIER_RESTRICTION_STATUS_RESTRICTED:I = 0x2

.field public static final whitelist CARRIER_RESTRICTION_STATUS_RESTRICTED_TO_CALLER:I = 0x3

.field public static final whitelist CARRIER_RESTRICTION_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist CDMA_ROAMING_MODE_AFFILIATED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CDMA_ROAMING_MODE_ANY:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CDMA_ROAMING_MODE_HOME:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CDMA_ROAMING_MODE_RADIO_DEFAULT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CDMA_SUBSCRIPTION_NV:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CDMA_SUBSCRIPTION_RUIM_SIM:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CDMA_SUBSCRIPTION_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CELL_BROADCAST_RESULT_FAIL_ACTIVATION:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CELL_BROADCAST_RESULT_FAIL_CONFIG:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CELL_BROADCAST_RESULT_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CELL_BROADCAST_RESULT_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CELL_BROADCAST_RESULT_UNSUPPORTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CHANGE_ICC_LOCK_SUCCESS:I = 0x7fffffff

.field public static final whitelist DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final whitelist DATA_ACTIVITY_IN:I = 0x1

.field public static final whitelist DATA_ACTIVITY_INOUT:I = 0x3

.field public static final whitelist DATA_ACTIVITY_NONE:I = 0x0

.field public static final whitelist DATA_ACTIVITY_OUT:I = 0x2

.field public static final whitelist DATA_CONNECTED:I = 0x2

.field public static final whitelist DATA_CONNECTING:I = 0x1

.field public static final whitelist DATA_DISCONNECTED:I = 0x0

.field public static final whitelist DATA_DISCONNECTING:I = 0x4

.field public static final whitelist DATA_ENABLED_REASON_CARRIER:I = 0x2

.field public static final whitelist DATA_ENABLED_REASON_OVERRIDE:I = 0x4

.field public static final whitelist DATA_ENABLED_REASON_POLICY:I = 0x1

.field public static final whitelist DATA_ENABLED_REASON_THERMAL:I = 0x3

.field public static final whitelist DATA_ENABLED_REASON_UNKNOWN:I = -0x1

.field public static final whitelist DATA_ENABLED_REASON_USER:I = 0x0

.field public static final whitelist DATA_HANDOVER_IN_PROGRESS:I = 0x5

.field public static final whitelist DATA_SUSPENDED:I = 0x3

.field public static final whitelist DATA_UNKNOWN:I = -0x1

.field public static final whitelist DEFAULT_PORT_INDEX:I = 0x0

.field public static final blacklist DEFAULT_PREFERRED_NETWORK_MODE:I

.field public static final greylist-max-o EMERGENCY_ASSISTANCE_ENABLED:Z = true

.field public static final whitelist EMERGENCY_CALLBACK_MODE_CALL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EMERGENCY_CALLBACK_MODE_SMS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ENABLE_FEATURE_MAPPING:J = 0x11c2f5c6L

.field public static final whitelist ENABLE_NR_DUAL_CONNECTIVITY_INVALID_STATE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENABLE_NR_DUAL_CONNECTIVITY_NOT_SUPPORTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENABLE_NR_DUAL_CONNECTIVITY_RADIO_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENABLE_NR_DUAL_CONNECTIVITY_RADIO_NOT_AVAILABLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENABLE_NR_DUAL_CONNECTIVITY_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ENABLE_VONR_RADIO_ERROR:I = 0x3

.field public static final blacklist ENABLE_VONR_RADIO_INVALID_STATE:I = 0x4

.field public static final blacklist ENABLE_VONR_RADIO_NOT_AVAILABLE:I = 0x2

.field public static final blacklist ENABLE_VONR_REQUEST_NOT_SUPPORTED:I = 0x5

.field public static final blacklist ENABLE_VONR_SUCCESS:I = 0x0

.field public static final whitelist ERI_FLASH:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ERI_ICON_MODE_FLASH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ERI_ICON_MODE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERI_OFF:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERI_ON:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EVENT_CALL_FORWARDED:Ljava/lang/String; = "android.telephony.event.EVENT_CALL_FORWARDED"

.field public static final whitelist EVENT_DISPLAY_EMERGENCY_MESSAGE:Ljava/lang/String; = "android.telephony.event.DISPLAY_EMERGENCY_MESSAGE"

.field public static final greylist-max-o EVENT_DOWNGRADE_DATA_DISABLED:Ljava/lang/String; = "android.telephony.event.EVENT_DOWNGRADE_DATA_DISABLED"

.field public static final greylist-max-o EVENT_DOWNGRADE_DATA_LIMIT_REACHED:Ljava/lang/String; = "android.telephony.event.EVENT_DOWNGRADE_DATA_LIMIT_REACHED"

.field public static final greylist-max-o EVENT_HANDOVER_TO_WIFI_FAILED:Ljava/lang/String; = "android.telephony.event.EVENT_HANDOVER_TO_WIFI_FAILED"

.field public static final greylist-max-o EVENT_HANDOVER_VIDEO_FROM_LTE_TO_WIFI:Ljava/lang/String; = "android.telephony.event.EVENT_HANDOVER_VIDEO_FROM_LTE_TO_WIFI"

.field public static final greylist-max-o EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE:Ljava/lang/String; = "android.telephony.event.EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE"

.field public static final greylist-max-o EVENT_NOTIFY_INTERNATIONAL_CALL_ON_WFC:Ljava/lang/String; = "android.telephony.event.EVENT_NOTIFY_INTERNATIONAL_CALL_ON_WFC"

.field public static final greylist-max-o EVENT_SUPPLEMENTARY_SERVICE_NOTIFICATION:Ljava/lang/String; = "android.telephony.event.EVENT_SUPPLEMENTARY_SERVICE_NOTIFICATION"

.field public static final blacklist EXCEPTION_RESULT_KEY:Ljava/lang/String; = "exception"

.field public static final whitelist EXTRA_ACTIVE_SIM_SUPPORTED_COUNT:Ljava/lang/String; = "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

.field public static final whitelist EXTRA_ANOMALY_DESCRIPTION:Ljava/lang/String; = "android.telephony.extra.ANOMALY_DESCRIPTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ANOMALY_ID:Ljava/lang/String; = "android.telephony.extra.ANOMALY_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_APN_PROTOCOL:Ljava/lang/String; = "android.telephony.extra.APN_PROTOCOL"

.field public static final whitelist EXTRA_APN_TYPE:Ljava/lang/String; = "android.telephony.extra.APN_TYPE"

.field public static final whitelist EXTRA_CALL_VOICEMAIL_INTENT:Ljava/lang/String; = "android.telephony.extra.CALL_VOICEMAIL_INTENT"

.field public static final whitelist EXTRA_CARRIER_ID:Ljava/lang/String; = "android.telephony.extra.CARRIER_ID"

.field public static final whitelist EXTRA_CARRIER_NAME:Ljava/lang/String; = "android.telephony.extra.CARRIER_NAME"

.field public static final whitelist EXTRA_DATA_FAIL_CAUSE:Ljava/lang/String; = "android.telephony.extra.DATA_FAIL_CAUSE"

.field public static final blacklist EXTRA_DATA_SPN:Ljava/lang/String; = "android.telephony.extra.DATA_SPN"

.field public static final whitelist EXTRA_DEFAULT_NETWORK_AVAILABLE:Ljava/lang/String; = "android.telephony.extra.DEFAULT_NETWORK_AVAILABLE"

.field public static final blacklist EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE:Ljava/lang/String; = "android.telephony.extra.DEFAULT_SUBSCRIPTION_SELECT_TYPE"

.field public static final blacklist EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_ALL:I = 0x4

.field public static final blacklist EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_DATA:I = 0x1

.field public static final blacklist EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_DISMISS:I = 0x5

.field public static final blacklist EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_NONE:I = 0x0

.field public static final blacklist EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_SMS:I = 0x3

.field public static final blacklist EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_VOICE:I = 0x2

.field public static final greylist-max-o EXTRA_DISCONNECT_CAUSE:Ljava/lang/String; = "disconnect_cause"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_EMERGENCY_CALL_TO_SATELLITE_HANDOVER_TYPE:Ljava/lang/String; = "android.telephony.extra.EMERGENCY_CALL_TO_SATELLITE_HANDOVER_TYPE"

.field public static final whitelist EXTRA_EMERGENCY_CALL_TO_SATELLITE_LAUNCH_INTENT:Ljava/lang/String; = "android.telephony.extra.EMERGENCY_CALL_TO_SATELLITE_LAUNCH_INTENT"

.field public static final whitelist EXTRA_HIDE_PUBLIC_SETTINGS:Ljava/lang/String; = "android.telephony.extra.HIDE_PUBLIC_SETTINGS"

.field public static final whitelist EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_IS_REFRESH:Ljava/lang/String; = "android.telephony.extra.IS_REFRESH"

.field public static final whitelist EXTRA_LAST_KNOWN_NETWORK_COUNTRY:Ljava/lang/String; = "android.telephony.extra.LAST_KNOWN_NETWORK_COUNTRY"

.field public static final whitelist EXTRA_LAUNCH_VOICEMAIL_SETTINGS_INTENT:Ljava/lang/String; = "android.telephony.extra.LAUNCH_VOICEMAIL_SETTINGS_INTENT"

.field public static final whitelist EXTRA_NETWORK_COUNTRY:Ljava/lang/String; = "android.telephony.extra.NETWORK_COUNTRY"

.field public static final greylist-max-o EXTRA_NOTIFICATION_CODE:Ljava/lang/String; = "android.telephony.extra.NOTIFICATION_CODE"

.field public static final whitelist EXTRA_NOTIFICATION_COUNT:Ljava/lang/String; = "android.telephony.extra.NOTIFICATION_COUNT"

.field public static final greylist-max-o EXTRA_NOTIFICATION_MESSAGE:Ljava/lang/String; = "android.telephony.extra.NOTIFICATION_MESSAGE"

.field public static final greylist-max-o EXTRA_NOTIFICATION_TYPE:Ljava/lang/String; = "android.telephony.extra.NOTIFICATION_TYPE"

.field public static final whitelist EXTRA_PCO_ID:Ljava/lang/String; = "android.telephony.extra.PCO_ID"

.field public static final whitelist EXTRA_PCO_VALUE:Ljava/lang/String; = "android.telephony.extra.PCO_VALUE"

.field public static final whitelist EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telephony.extra.PHONE_ACCOUNT_HANDLE"

.field public static final whitelist EXTRA_PHONE_IN_ECM_STATE:Ljava/lang/String; = "android.telephony.extra.PHONE_IN_ECM_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PHONE_IN_EMERGENCY_CALL:Ljava/lang/String; = "android.telephony.extra.PHONE_IN_EMERGENCY_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_PLMN:Ljava/lang/String; = "android.telephony.extra.PLMN"

.field public static final greylist-max-o EXTRA_PRECISE_DISCONNECT_CAUSE:Ljava/lang/String; = "precise_disconnect_cause"

.field public static final greylist-max-o EXTRA_RECOVERY_ACTION:Ljava/lang/String; = "recoveryAction"

.field public static final whitelist EXTRA_REDIRECTION_URL:Ljava/lang/String; = "android.telephony.extra.REDIRECTION_URL"

.field public static final blacklist EXTRA_SHOW_PLMN:Ljava/lang/String; = "android.telephony.extra.SHOW_PLMN"

.field public static final blacklist EXTRA_SHOW_SPN:Ljava/lang/String; = "android.telephony.extra.SHOW_SPN"

.field public static final blacklist EXTRA_SIM_COMBINATION_NAMES:Ljava/lang/String; = "android.telephony.extra.SIM_COMBINATION_NAMES"

.field public static final blacklist EXTRA_SIM_COMBINATION_WARNING_TYPE:Ljava/lang/String; = "android.telephony.extra.SIM_COMBINATION_WARNING_TYPE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_SIM_COMBINATION_WARNING_TYPE_DUAL_CDMA:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_SIM_COMBINATION_WARNING_TYPE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SIM_STATE:Ljava/lang/String; = "android.telephony.extra.SIM_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SPECIFIC_CARRIER_ID:Ljava/lang/String; = "android.telephony.extra.SPECIFIC_CARRIER_ID"

.field public static final whitelist EXTRA_SPECIFIC_CARRIER_NAME:Ljava/lang/String; = "android.telephony.extra.SPECIFIC_CARRIER_NAME"

.field public static final blacklist EXTRA_SPN:Ljava/lang/String; = "android.telephony.extra.SPN"

.field public static final whitelist EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final whitelist EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final whitelist EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final whitelist EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final whitelist EXTRA_SUBSCRIPTION_ID:Ljava/lang/String; = "android.telephony.extra.SUBSCRIPTION_ID"

.field public static final whitelist EXTRA_VISUAL_VOICEMAIL_ENABLED_BY_USER_BOOL:Ljava/lang/String; = "android.telephony.extra.VISUAL_VOICEMAIL_ENABLED_BY_USER_BOOL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_VOICEMAIL_NUMBER:Ljava/lang/String; = "android.telephony.extra.VOICEMAIL_NUMBER"

.field public static final whitelist EXTRA_VOICEMAIL_SCRAMBLED_PIN_STRING:Ljava/lang/String; = "android.telephony.extra.VOICEMAIL_SCRAMBLED_PIN_STRING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_FAILURE_REASON_FEATURE_NOT_READY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_FAILURE_REASON_FEATURE_NOT_SUPPORTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_FAILURE_REASON_INCORRECT_NAF_ID:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_FAILURE_REASON_NETWORK_FAILURE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_FAILURE_REASON_SECURITY_PROTOCOL_NOT_SUPPORTED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_FAILURE_REASON_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist GET_DATA_STATE_R_VERSION:J = 0x8da744cL

.field public static final blacklist HAL_SERVICE_DATA:I = 0x1

.field public static final blacklist HAL_SERVICE_IMS:I = 0x7

.field public static final blacklist HAL_SERVICE_MESSAGING:I = 0x2

.field public static final blacklist HAL_SERVICE_MODEM:I = 0x3

.field public static final blacklist HAL_SERVICE_NETWORK:I = 0x4

.field public static final blacklist HAL_SERVICE_RADIO:I = 0x0

.field public static final blacklist HAL_SERVICE_SIM:I = 0x5

.field public static final blacklist HAL_SERVICE_VOICE:I = 0x6

.field public static final blacklist HAL_VERSION_UNKNOWN:Landroid/util/Pair;

.field public static final blacklist HAL_VERSION_UNSUPPORTED:Landroid/util/Pair;

.field public static final whitelist INCLUDE_LOCATION_DATA_COARSE:I = 0x1

.field public static final whitelist INCLUDE_LOCATION_DATA_FINE:I = 0x2

.field public static final whitelist INCLUDE_LOCATION_DATA_NONE:I = 0x0

.field public static final greylist-max-o INDICATION_FILTER_DATA_CALL_DORMANCY_CHANGED:I = 0x4

.field public static final greylist-max-o INDICATION_FILTER_FULL_NETWORK_STATE:I = 0x2

.field public static final greylist-max-o INDICATION_FILTER_LINK_CAPACITY_ESTIMATE:I = 0x8

.field public static final greylist-max-o INDICATION_FILTER_PHYSICAL_CHANNEL_CONFIG:I = 0x10

.field public static final greylist-max-o INDICATION_FILTER_SIGNAL_STRENGTH:I = 0x1

.field public static final whitelist INVALID_EMERGENCY_NUMBER_DB_VERSION:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INVALID_PORT_INDEX:I = -0x1

.field public static final blacklist KEY_CALL_COMPOSER_PICTURE_HANDLE:Ljava/lang/String; = "call_composer_picture_handle"

.field public static final blacklist KEY_SLICING_CONFIG_HANDLE:Ljava/lang/String; = "slicing_config_handle"

.field public static final whitelist KEY_TYPE_EPDG:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_TYPE_WLAN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist MAXIMUM_CALL_COMPOSER_PICTURE_SIZE:I = 0x13880

.field private static final blacklist MAX_NUMBER_VERIFICATION_TIMEOUT_MILLIS:J = 0xea60L

.field public static final whitelist METADATA_HIDE_VOICEMAIL_SETTINGS_MENU:Ljava/lang/String; = "android.telephony.HIDE_VOICEMAIL_SETTINGS_MENU"

.field public static final whitelist MOBILE_DATA_POLICY_AUTO_DATA_SWITCH:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MOBILE_DATA_POLICY_DATA_ON_NON_DEFAULT_DURING_VOICE_CALL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MOBILE_DATA_POLICY_MMS_ALWAYS_ALLOWED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MODEM_ACTIVITY_RESULT_KEY:Ljava/lang/String; = "controller_activity"

.field public static final whitelist MULTISIM_ALLOWED:I = 0x0

.field public static final whitelist MULTISIM_NOT_SUPPORTED_BY_CARRIER:I = 0x2

.field public static final whitelist MULTISIM_NOT_SUPPORTED_BY_HARDWARE:I = 0x1

.field public static final blacklist NETWORK_CLASS_BITMASK_2G:J = 0x804bL

.field public static final blacklist NETWORK_CLASS_BITMASK_3G:J = 0x16bb4L

.field public static final blacklist NETWORK_CLASS_BITMASK_4G:J = 0x61000L

.field public static final blacklist NETWORK_CLASS_BITMASK_5G:J = 0x80000L

.field public static final blacklist NETWORK_MODE_CDMA_EVDO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_CDMA_NO_EVDO:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_EVDO_NO_CDMA:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_GLOBAL:I = 0x7

.field public static final blacklist NETWORK_MODE_GSM_ONLY:I = 0x1

.field public static final blacklist NETWORK_MODE_GSM_UMTS:I = 0x3

.field public static final blacklist NETWORK_MODE_LTE_CDMA_EVDO:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_LTE_CDMA_EVDO_GSM_WCDMA:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_LTE_GSM_WCDMA:I = 0x9

.field public static final blacklist NETWORK_MODE_LTE_ONLY:I = 0xb

.field public static final blacklist NETWORK_MODE_LTE_TDSCDMA:I = 0xf

.field public static final blacklist NETWORK_MODE_LTE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_LTE_TDSCDMA_GSM:I = 0x11

.field public static final blacklist NETWORK_MODE_LTE_TDSCDMA_GSM_WCDMA:I = 0x14

.field public static final blacklist NETWORK_MODE_LTE_TDSCDMA_WCDMA:I = 0x13

.field public static final blacklist NETWORK_MODE_LTE_WCDMA:I = 0xc

.field public static final blacklist NETWORK_MODE_NR_LTE:I = 0x18

.field public static final blacklist NETWORK_MODE_NR_LTE_CDMA_EVDO:I = 0x19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_NR_LTE_CDMA_EVDO_GSM_WCDMA:I = 0x1b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_NR_LTE_GSM_WCDMA:I = 0x1a

.field public static final blacklist NETWORK_MODE_NR_LTE_TDSCDMA:I = 0x1d

.field public static final blacklist NETWORK_MODE_NR_LTE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_NR_LTE_TDSCDMA_GSM:I = 0x1e

.field public static final blacklist NETWORK_MODE_NR_LTE_TDSCDMA_GSM_WCDMA:I = 0x20

.field public static final blacklist NETWORK_MODE_NR_LTE_TDSCDMA_WCDMA:I = 0x1f

.field public static final blacklist NETWORK_MODE_NR_LTE_WCDMA:I = 0x1c

.field public static final blacklist NETWORK_MODE_NR_ONLY:I = 0x17

.field public static final blacklist NETWORK_MODE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_TDSCDMA_GSM:I = 0x10

.field public static final blacklist NETWORK_MODE_TDSCDMA_GSM_WCDMA:I = 0x12

.field public static final blacklist NETWORK_MODE_TDSCDMA_ONLY:I = 0xd

.field public static final blacklist NETWORK_MODE_TDSCDMA_WCDMA:I = 0xe

.field public static final blacklist NETWORK_MODE_WCDMA_ONLY:I = 0x2

.field public static final blacklist NETWORK_MODE_WCDMA_PREF:I = 0x0

.field public static final whitelist NETWORK_SELECTION_MODE_AUTO:I = 0x1

.field public static final whitelist NETWORK_SELECTION_MODE_MANUAL:I = 0x2

.field public static final whitelist NETWORK_SELECTION_MODE_UNKNOWN:I = 0x0

.field public static final blacklist NETWORK_STANDARDS_FAMILY_BITMASK_3GPP:J = 0xdd387L

.field public static final blacklist NETWORK_STANDARDS_FAMILY_BITMASK_3GPP2:J = 0x2878L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist NETWORK_TYPES:[I

.field public static final whitelist NETWORK_TYPE_1xRTT:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_BITMASK_1xRTT:J = 0x40L

.field public static final whitelist NETWORK_TYPE_BITMASK_CDMA:J = 0x8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_BITMASK_EDGE:J = 0x2L

.field public static final whitelist NETWORK_TYPE_BITMASK_EHRPD:J = 0x2000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_BITMASK_EVDO_0:J = 0x10L

.field public static final whitelist NETWORK_TYPE_BITMASK_EVDO_A:J = 0x20L

.field public static final whitelist NETWORK_TYPE_BITMASK_EVDO_B:J = 0x800L

.field public static final whitelist NETWORK_TYPE_BITMASK_GPRS:J = 0x1L

.field public static final whitelist NETWORK_TYPE_BITMASK_GSM:J = 0x8000L

.field public static final whitelist NETWORK_TYPE_BITMASK_HSDPA:J = 0x80L

.field public static final whitelist NETWORK_TYPE_BITMASK_HSPA:J = 0x200L

.field public static final whitelist NETWORK_TYPE_BITMASK_HSPAP:J = 0x4000L

.field public static final whitelist NETWORK_TYPE_BITMASK_HSUPA:J = 0x100L

.field public static final blacklist NETWORK_TYPE_BITMASK_IDEN:J = 0x400L

.field public static final whitelist NETWORK_TYPE_BITMASK_IWLAN:J = 0x20000L

.field public static final whitelist NETWORK_TYPE_BITMASK_LTE:J = 0x1000L

.field public static final whitelist NETWORK_TYPE_BITMASK_LTE_CA:J = 0x40000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_BITMASK_NR:J = 0x80000L

.field public static final whitelist NETWORK_TYPE_BITMASK_TD_SCDMA:J = 0x10000L

.field public static final whitelist NETWORK_TYPE_BITMASK_UMTS:J = 0x4L

.field public static final whitelist NETWORK_TYPE_BITMASK_UNKNOWN:J = 0x0L

.field public static final whitelist NETWORK_TYPE_CDMA:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_EDGE:I = 0x2

.field public static final whitelist NETWORK_TYPE_EHRPD:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_EVDO_0:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_EVDO_A:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_EVDO_B:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_GPRS:I = 0x1

.field public static final whitelist NETWORK_TYPE_GSM:I = 0x10

.field public static final whitelist NETWORK_TYPE_HSDPA:I = 0x8

.field public static final whitelist NETWORK_TYPE_HSPA:I = 0xa

.field public static final whitelist NETWORK_TYPE_HSPAP:I = 0xf

.field public static final whitelist NETWORK_TYPE_HSUPA:I = 0x9

.field public static final whitelist NETWORK_TYPE_IDEN:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_IWLAN:I = 0x12

.field public static final whitelist NETWORK_TYPE_LTE:I = 0xd

.field public static final greylist-max-r NETWORK_TYPE_LTE_CA:I = 0x13

.field public static final whitelist NETWORK_TYPE_NR:I = 0x14

.field public static final whitelist NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final whitelist NETWORK_TYPE_UMTS:I = 0x3

.field public static final whitelist NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist NR_DUAL_CONNECTIVITY_DISABLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NR_DUAL_CONNECTIVITY_DISABLE_IMMEDIATE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NR_DUAL_CONNECTIVITY_ENABLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist NULL_TELEPHONY_THROW_NO_CB:J = 0xadbeeaaL

.field public static final greylist-max-o OTASP_NEEDED:I = 0x2

.field public static final greylist-max-o OTASP_NOT_NEEDED:I = 0x3

.field public static final greylist-max-o OTASP_SIM_UNPROVISIONED:I = 0x5

.field public static final greylist-max-o OTASP_UNINITIALIZED:I = 0x0

.field public static final greylist-max-o OTASP_UNKNOWN:I = 0x1

.field public static final greylist-max-o PHONE_PROCESS_NAME:Ljava/lang/String; = "com.android.phone"

.field public static final whitelist PHONE_TYPE_CDMA:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PHONE_TYPE_GSM:I = 0x1

.field public static final blacklist PHONE_TYPE_IMS:I = 0x5

.field public static final whitelist PHONE_TYPE_NONE:I = 0x0

.field public static final whitelist PHONE_TYPE_SIP:I = 0x3

.field public static final blacklist PHONE_TYPE_THIRD_PARTY:I = 0x4

.field public static final whitelist PREMIUM_CAPABILITY_PRIORITIZE_LATENCY:I = 0x22

.field public static final whitelist PREPARE_UNATTENDED_REBOOT_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREPARE_UNATTENDED_REBOOT_PIN_REQUIRED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREPARE_UNATTENDED_REBOOT_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PROPERTY_ENABLE_NULL_CIPHER_TOGGLE:Ljava/lang/String; = "enable_null_cipher_toggle"

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_ALREADY_IN_PROGRESS:I = 0x4

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_ALREADY_PURCHASED:I = 0x3

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_CARRIER_DISABLED:I = 0x7

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_CARRIER_ERROR:I = 0x8

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_ENTITLEMENT_CHECK_FAILED:I = 0xd

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_FEATURE_NOT_SUPPORTED:I = 0xa

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_NETWORK_NOT_AVAILABLE:I = 0xc

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_NOT_DEFAULT_DATA_SUBSCRIPTION:I = 0xe

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_NOT_FOREGROUND:I = 0x5

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_PENDING_NETWORK_SETUP:I = 0xf

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_REQUEST_FAILED:I = 0xb

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_SUCCESS:I = 0x1

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_THROTTLED:I = 0x2

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_TIMEOUT:I = 0x9

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_USER_CANCELED:I = 0x6

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_USER_DISABLED:I = 0x10

.field public static final whitelist RADIO_POWER_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RADIO_POWER_ON:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RADIO_POWER_REASON_CARRIER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RADIO_POWER_REASON_NEARBY_DEVICE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RADIO_POWER_REASON_THERMAL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RADIO_POWER_REASON_USER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RADIO_POWER_UNAVAILABLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_CARRIER_RESTRICTION_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_CARRIER_RESTRICTION_NOT_SUPPORTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_CARRIER_RESTRICTION_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_OPPORTUNISTIC_SUB_INACTIVE_SUBSCRIPTION:I = 0x2

.field public static final whitelist SET_OPPORTUNISTIC_SUB_NO_OPPORTUNISTIC_SUB_AVAILABLE:I = 0x3

.field public static final whitelist SET_OPPORTUNISTIC_SUB_REMOTE_SERVICE_EXCEPTION:I = 0x4

.field public static final whitelist SET_OPPORTUNISTIC_SUB_SUCCESS:I = 0x0

.field public static final whitelist SET_OPPORTUNISTIC_SUB_VALIDATION_FAILED:I = 0x1

.field public static final whitelist SET_SIM_POWER_STATE_ALREADY_IN_STATE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SIM_POWER_STATE_MODEM_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SIM_POWER_STATE_NOT_SUPPORTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SIM_POWER_STATE_SIM_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SIM_POWER_STATE_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_ACTIVATION_STATE_ACTIVATED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_ACTIVATION_STATE_ACTIVATING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_ACTIVATION_STATE_DEACTIVATED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_ACTIVATION_STATE_RESTRICTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_ACTIVATION_STATE_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_STATE_ABSENT:I = 0x1

.field public static final whitelist SIM_STATE_CARD_IO_ERROR:I = 0x8

.field public static final whitelist SIM_STATE_CARD_RESTRICTED:I = 0x9

.field public static final whitelist SIM_STATE_LOADED:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final whitelist SIM_STATE_NOT_READY:I = 0x6

.field public static final whitelist SIM_STATE_PERM_DISABLED:I = 0x7

.field public static final whitelist SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final whitelist SIM_STATE_PRESENT:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final whitelist SIM_STATE_READY:I = 0x5

.field public static final whitelist SIM_STATE_UNKNOWN:I = 0x0

.field public static final whitelist SRVCC_STATE_HANDOVER_CANCELED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SRVCC_STATE_HANDOVER_COMPLETED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SRVCC_STATE_HANDOVER_FAILED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SRVCC_STATE_HANDOVER_NONE:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SRVCC_STATE_HANDOVER_STARTED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STOP_REASON_EMERGENCY_SMS_SENT:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STOP_REASON_NORMAL_SMS_SENT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STOP_REASON_OUTGOING_EMERGENCY_CALL_INITIATED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STOP_REASON_OUTGOING_NORMAL_CALL_INITIATED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STOP_REASON_TIMER_EXPIRED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STOP_REASON_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STOP_REASON_USER_ACTION:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TelephonyManager"

.field public static final whitelist THERMAL_MITIGATION_RESULT_INVALID_STATE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist THERMAL_MITIGATION_RESULT_MODEM_ERROR:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist THERMAL_MITIGATION_RESULT_MODEM_NOT_AVAILABLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist THERMAL_MITIGATION_RESULT_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist THERMAL_MITIGATION_RESULT_UNKNOWN_ERROR:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UNINITIALIZED_CARD_ID:I = -0x2

.field public static final whitelist UNKNOWN_CARRIER_ID:I = -0x1

.field public static final blacklist UNKNOWN_CARRIER_ID_LIST_VERSION:I = -0x1

.field public static final whitelist UNSUPPORTED_CARD_ID:I = -0x1

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_ABORTED:I = 0x2

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_DISABLE_MODEM_FAIL:I = 0x5

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_ENABLE_MODEM_FAIL:I = 0x6

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_INVALID_ARGUMENTS:I = 0x3

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_MULTIPLE_NETWORKS_NOT_SUPPORTED:I = 0x7

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_NO_CARRIER_PRIVILEGE:I = 0x4

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_NO_OPPORTUNISTIC_SUB_AVAILABLE:I = 0x8

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_REMOTE_SERVICE_EXCEPTION:I = 0x9

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_SERVICE_IS_DISABLED:I = 0xa

.field public static final blacklist UPDATE_AVAILABLE_NETWORKS_SIM_PORT_NOT_AVAILABLE:I = 0xb

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_SUCCESS:I = 0x0

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_UNKNOWN_FAILURE:I = 0x1

.field public static final whitelist USSD_ERROR_SERVICE_UNAVAIL:I = -0x2

.field public static final greylist-max-o USSD_RESPONSE:Ljava/lang/String; = "USSD_RESPONSE"

.field public static final whitelist USSD_RETURN_FAILURE:I = -0x1

.field public static final greylist-max-o USSD_RETURN_SUCCESS:I = 0x64

.field public static final whitelist VVM_TYPE_CVVM:Ljava/lang/String; = "vvm_type_cvvm"

.field public static final whitelist VVM_TYPE_OMTP:Ljava/lang/String; = "vvm_type_omtp"

.field private static final blacklist sCacheLock:Ljava/lang/Object;

.field private static blacklist sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

.field private static blacklist sISms:Lcom/android/internal/telephony/ISms;

.field private static blacklist sISub:Lcom/android/internal/telephony/ISub;

.field private static blacklist sITelephony:Lcom/android/internal/telephony/ITelephony;

.field private static greylist-max-o sInstance:Landroid/telephony/TelephonyManager;

.field private static final blacklist sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

.field private static blacklist sServiceHandleCacheEnabled:Z


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mPhoneAccountHandleToSubIdCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSubId:I

.field private greylist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private blacklist mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

.field private greylist-max-o mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$u03PMP6iKZdBMAnqo06SCV9YlyU(Landroid/telephony/TelephonyManager;Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/TelephonyManager;->lambda$uploadCallComposerPicture$1(Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/telephony/TelephonyManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 2

    invoke-static {p0, p1}, Landroid/telephony/TelephonyManager;->createThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smresetServiceCache()V
    .registers 0

    invoke-static {}, Landroid/telephony/TelephonyManager;->resetServiceCache()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 443
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    .line 446
    const/4 v0, 0x1

    sput-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    .line 457
    new-instance v0, Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager$DeathRecipient;-><init>(Landroid/telephony/TelephonyManager-IA;)V

    sput-object v0, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    .line 536
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 950
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 956
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 962
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 3209
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_58

    sput-object v0, Landroid/telephony/TelephonyManager;->NETWORK_TYPES:[I

    .line 9650
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    sput v0, Landroid/telephony/TelephonyManager;->DEFAULT_PREFERRED_NETWORK_MODE:I

    .line 16376
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/TelephonyManager;->HAL_VERSION_UNKNOWN:Landroid/util/Pair;

    .line 16383
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/TelephonyManager;->HAL_VERSION_UNSUPPORTED:Landroid/util/Pair;

    return-void

    nop

    :array_58
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
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

.method private constructor greylist <init>()V
    .registers 4

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    new-instance v0, Landroid/telephony/TelephonyManager$1;

    const/4 v1, 0x4

    const-string v2, "cache_key.telephony.phone_account_to_subid"

    invoke-direct {v0, p0, v1, v2}, Landroid/telephony/TelephonyManager$1;-><init>(Landroid/telephony/TelephonyManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mPhoneAccountHandleToSubIdCache:Landroid/app/PropertyInvalidatedCache;

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 533
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 534
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 517
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 518
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    new-instance v0, Landroid/telephony/TelephonyManager$1;

    const/4 v1, 0x4

    const-string v2, "cache_key.telephony.phone_account_to_subid"

    invoke-direct {v0, p0, v1, v2}, Landroid/telephony/TelephonyManager$1;-><init>(Landroid/telephony/TelephonyManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mPhoneAccountHandleToSubIdCache:Landroid/app/PropertyInvalidatedCache;

    .line 523
    iput p2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 524
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/telephony/TelephonyManager;->mergeAttributionAndRenouncedPermissions(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 526
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 527
    return-void
.end method

.method private blacklist checkNetworkTypeBitmask(J)J
    .registers 9
    .param p1, "networkTypeBitmask"    # J

    .line 10225
    const-wide/32 v0, 0x40000

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    .line 10226
    xor-long/2addr p1, v0

    .line 10227
    const-wide/16 v0, 0x1000

    or-long/2addr p1, v0

    .line 10229
    :cond_f
    return-wide p1
.end method

.method public static blacklist convertNetworkTypeBitmaskToString(J)Ljava/lang/String;
    .registers 4
    .param p0, "networkTypeBitmask"    # J

    .line 10454
    const/4 v0, 0x1

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda2;-><init>(J)V

    .line 10455
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda3;-><init>()V

    .line 10459
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 10460
    const-string/jumbo v1, "|"

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10461
    .local v0, "networkTypeName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "UNKNOWN"

    goto :goto_30

    :cond_2f
    move-object v1, v0

    :goto_30
    return-object v1
.end method

.method public static blacklist convertPremiumCapabilityToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "capability"    # I

    .line 18713
    packed-switch p0, :pswitch_data_20

    .line 18717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

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

    .line 18715
    :pswitch_1d
    const-string v0, "PRIORITIZE_LATENCY"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x22
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist convertPurchaseResultToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "result"    # I

    .line 18925
    packed-switch p0, :pswitch_data_4a

    .line 18957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

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

    .line 18955
    :pswitch_1d
    const-string v0, "PENDING_NETWORK_SETUP"

    return-object v0

    .line 18953
    :pswitch_20
    const-string v0, "NOT_DEFAULT_DATA_SUBSCRIPTION"

    return-object v0

    .line 18951
    :pswitch_23
    const-string v0, "ENTITLEMENT_CHECK_FAILED"

    return-object v0

    .line 18949
    :pswitch_26
    const-string v0, "NETWORK_NOT_AVAILABLE"

    return-object v0

    .line 18947
    :pswitch_29
    const-string v0, "REQUEST_FAILED"

    return-object v0

    .line 18945
    :pswitch_2c
    const-string v0, "FEATURE_NOT_SUPPORTED"

    return-object v0

    .line 18943
    :pswitch_2f
    const-string v0, "TIMEOUT"

    return-object v0

    .line 18941
    :pswitch_32
    const-string v0, "CARRIER_ERROR"

    return-object v0

    .line 18939
    :pswitch_35
    const-string v0, "CARRIER_DISABLED"

    return-object v0

    .line 18937
    :pswitch_38
    const-string v0, "USER_CANCELED"

    return-object v0

    .line 18935
    :pswitch_3b
    const-string v0, "NOT_FOREGROUND"

    return-object v0

    .line 18933
    :pswitch_3e
    const-string v0, "ALREADY_IN_PROGRESS"

    return-object v0

    .line 18931
    :pswitch_41
    const-string v0, "ALREADY_PURCHASED"

    return-object v0

    .line 18929
    :pswitch_44
    const-string v0, "THROTTLED"

    return-object v0

    .line 18927
    :pswitch_47
    const-string v0, "SUCCESS"

    return-object v0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private static blacklist createThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 7404
    if-nez p0, :cond_4

    .line 7405
    const/4 v0, 0x0

    return-object v0

    .line 7408
    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 7409
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_1e
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_4 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_1e} :catch_1f

    return-object v1

    .line 7410
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1f
    move-exception v0

    .line 7412
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist disableServiceHandleCaching()V
    .registers 1

    .line 17644
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    .line 17645
    return-void
.end method

.method public static blacklist enableServiceHandleCaching()V
    .registers 1

    .line 17653
    const/4 v0, 0x1

    sput-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    .line 17654
    return-void
.end method

.method public static greylist-max-p from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 742
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static blacklist getAllNetworkTypes()[I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3241
    sget-object v0, Landroid/telephony/TelephonyManager;->NETWORK_TYPES:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static blacklist getAllNetworkTypesBitmask()J
    .registers 2

    .line 10442
    const-wide/32 v0, 0xdfbff

    return-wide v0
.end method

.method private blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 598
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 599
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 601
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getBitMaskForNetworkType(I)J
    .registers 3
    .param p0, "networkType"    # I

    .line 3507
    packed-switch p0, :pswitch_data_44

    .line 3548
    const-wide/16 v0, 0x0

    return-wide v0

    .line 3542
    :pswitch_6
    const-wide/32 v0, 0x80000

    return-wide v0

    .line 3544
    :pswitch_a
    const-wide/32 v0, 0x20000

    return-wide v0

    .line 3537
    :pswitch_e
    const-wide/32 v0, 0x10000

    return-wide v0

    .line 3509
    :pswitch_12
    const-wide/32 v0, 0x8000

    return-wide v0

    .line 3533
    :pswitch_16
    const-wide/16 v0, 0x4000

    return-wide v0

    .line 3525
    :pswitch_19
    const-wide/16 v0, 0x2000

    return-wide v0

    .line 3540
    :pswitch_1c
    const-wide/16 v0, 0x1000

    return-wide v0

    .line 3523
    :pswitch_1f
    const-wide/16 v0, 0x800

    return-wide v0

    .line 3546
    :pswitch_22
    const-wide/16 v0, 0x400

    return-wide v0

    .line 3531
    :pswitch_25
    const-wide/16 v0, 0x200

    return-wide v0

    .line 3527
    :pswitch_28
    const-wide/16 v0, 0x100

    return-wide v0

    .line 3529
    :pswitch_2b
    const-wide/16 v0, 0x80

    return-wide v0

    .line 3517
    :pswitch_2e
    const-wide/16 v0, 0x40

    return-wide v0

    .line 3521
    :pswitch_31
    const-wide/16 v0, 0x20

    return-wide v0

    .line 3519
    :pswitch_34
    const-wide/16 v0, 0x10

    return-wide v0

    .line 3515
    :pswitch_37
    const-wide/16 v0, 0x8

    return-wide v0

    .line 3535
    :pswitch_3a
    const-wide/16 v0, 0x4

    return-wide v0

    .line 3513
    :pswitch_3d
    const-wide/16 v0, 0x2

    return-wide v0

    .line 3511
    :pswitch_40
    const-wide/16 v0, 0x1

    return-wide v0

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_a
        :pswitch_1c
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-p getDefault()Landroid/telephony/TelephonyManager;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 543
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private blacklist getFirstActivePortIndex(I)I
    .registers 5
    .param p1, "physicalSlotIndex"    # I

    .line 7481
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    .line 7482
    .local v0, "slotInfos":[Landroid/telephony/UiccSlotInfo;
    if-eqz v0, :cond_37

    if-ltz p1, :cond_37

    array-length v1, v0

    if-ge p1, v1, :cond_37

    aget-object v1, v0, p1

    if-eqz v1, :cond_37

    .line 7484
    aget-object v1, v0, p1

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda18;-><init>()V

    .line 7485
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 7486
    .local v1, "result":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/telephony/UiccPortInfo;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 7487
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v2}, Landroid/telephony/UiccPortInfo;->getPortIndex()I

    move-result v2

    return v2

    .line 7490
    .end local v1    # "result":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/telephony/UiccPortInfo;>;"
    :cond_37
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist getIOns()Lcom/android/internal/telephony/IOns;
    .registers 2

    .line 6789
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 6790
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getOpportunisticNetworkServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 6791
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 6787
    invoke-static {v0}, Lcom/android/internal/telephony/IOns$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOns;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 5

    .line 6757
    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    .line 6760
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 6761
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 6762
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 6758
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0

    .line 6765
    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_4a

    .line 6768
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 6769
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 6770
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 6766
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6771
    .local v0, "temp":Lcom/android/internal/telephony/ITelephony;
    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6772
    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_47

    if-nez v2, :cond_45

    if-eqz v0, :cond_45

    .line 6774
    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 6775
    sget-object v2, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_41
    .catchall {:try_start_32 .. :try_end_40} :catchall_47

    .line 6779
    goto :goto_45

    .line 6776
    :catch_41
    move-exception v2

    .line 6778
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_43
    sput-object v3, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 6781
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_45
    :goto_45
    monitor-exit v1

    goto :goto_4a

    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_47

    throw v2

    .line 6783
    .end local v0    # "temp":Lcom/android/internal/telephony/ITelephony;
    :cond_4a
    :goto_4a
    sget-object v0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method public static greylist-max-r getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 8730
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8731
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 8732
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8733
    .local v1, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_1d

    array-length v2, v1

    if-ge p2, v2, :cond_1d

    aget-object v2, v1, p2

    if-eqz v2, :cond_1d

    .line 8735
    :try_start_15
    aget-object v2, v1, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1c

    return v2

    .line 8736
    :catch_1c
    move-exception v2

    .line 8741
    .end local v1    # "valArray":[Ljava/lang/String;
    :cond_1d
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getLocationData()I
    .registers 4

    .line 18035
    nop

    .line 18036
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 18037
    .local v0, "renounceCoarseLocation":Z
    nop

    .line 18038
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 18039
    .local v1, "renounceFineLocation":Z
    if-eqz v0, :cond_1a

    .line 18040
    const/4 v2, 0x0

    return v2

    .line 18041
    :cond_1a
    if-eqz v1, :cond_1e

    .line 18042
    const/4 v2, 0x1

    return v2

    .line 18044
    :cond_1e
    const/4 v2, 0x2

    return v2
.end method

.method private blacklist getLogicalSlotIndex(II)I
    .registers 7
    .param p1, "physicalSlotIndex"    # I
    .param p2, "portIndex"    # I

    .line 3924
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    .line 3925
    .local v0, "slotInfos":[Landroid/telephony/UiccSlotInfo;
    if-eqz v0, :cond_31

    if-ltz p1, :cond_31

    array-length v1, v0

    if-ge p1, v1, :cond_31

    aget-object v1, v0, p1

    if-eqz v1, :cond_31

    .line 3927
    aget-object v1, v0, p1

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccPortInfo;

    .line 3928
    .local v2, "portInfo":Landroid/telephony/UiccPortInfo;
    invoke-virtual {v2}, Landroid/telephony/UiccPortInfo;->getPortIndex()I

    move-result v3

    if-ne v3, p2, :cond_30

    .line 3929
    invoke-virtual {v2}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v1

    return v1

    .line 3931
    .end local v2    # "portInfo":Landroid/telephony/UiccPortInfo;
    :cond_30
    goto :goto_19

    .line 3934
    :cond_31
    const/4 v1, -0x1

    return v1
.end method

.method public static whitelist getMaxNumberVerificationTimeoutMillis()J
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2903
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public static whitelist getMaximumCallComposerPictureSize()J
    .registers 2

    .line 790
    const-wide/32 v0, 0x13880

    return-wide v0
.end method

.method private greylist-max-o getNaiBySubscriberId(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 2617
    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2618
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_a

    .line 2619
    return-object v1

    .line 2620
    :cond_a
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2621
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 2620
    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getNaiForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2622
    .local v3, "nai":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 2623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Nai = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_37} :catch_3a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_37} :catch_38

    .line 2625
    :cond_37
    return-object v3

    .line 2628
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .end local v3    # "nai":Ljava/lang/String;
    :catch_38
    move-exception v0

    .line 2629
    .local v0, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 2626
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_3a
    move-exception v0

    .line 2627
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public static greylist getNetworkTypeName(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 3452
    packed-switch p0, :pswitch_data_5e

    .line 3496
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

    .line 3492
    :pswitch_1d
    const-string v0, "NR"

    return-object v0

    .line 3490
    :pswitch_20
    const-string v0, "LTE_CA"

    return-object v0

    .line 3488
    :pswitch_23
    const-string v0, "IWLAN"

    return-object v0

    .line 3486
    :pswitch_26
    const-string v0, "TD_SCDMA"

    return-object v0

    .line 3484
    :pswitch_29
    const-string v0, "GSM"

    return-object v0

    .line 3482
    :pswitch_2c
    const-string v0, "HSPA+"

    return-object v0

    .line 3478
    :pswitch_2f
    const-string v0, "CDMA - eHRPD"

    return-object v0

    .line 3476
    :pswitch_32
    const-string v0, "LTE"

    return-object v0

    .line 3472
    :pswitch_35
    const-string v0, "CDMA - EvDo rev. B"

    return-object v0

    .line 3480
    :pswitch_38
    const-string/jumbo v0, "iDEN"

    return-object v0

    .line 3464
    :pswitch_3c
    const-string v0, "HSPA"

    return-object v0

    .line 3462
    :pswitch_3f
    const-string v0, "HSUPA"

    return-object v0

    .line 3460
    :pswitch_42
    const-string v0, "HSDPA"

    return-object v0

    .line 3474
    :pswitch_45
    const-string v0, "CDMA - 1xRTT"

    return-object v0

    .line 3470
    :pswitch_48
    const-string v0, "CDMA - EvDo rev. A"

    return-object v0

    .line 3468
    :pswitch_4b
    const-string v0, "CDMA - EvDo rev. 0"

    return-object v0

    .line 3466
    :pswitch_4e
    const-string v0, "CDMA"

    return-object v0

    .line 3458
    :pswitch_51
    const-string v0, "UMTS"

    return-object v0

    .line 3456
    :pswitch_54
    const-string v0, "EDGE"

    return-object v0

    .line 3454
    :pswitch_57
    const-string v0, "GPRS"

    return-object v0

    .line 3494
    :pswitch_5a
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private greylist-max-o getOpPackageName()Ljava/lang/String;
    .registers 4

    .line 579
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 580
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 582
    :cond_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 583
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    if-nez v0, :cond_13

    return-object v1

    .line 585
    :cond_13
    :try_start_13
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_17} :catch_18

    return-object v1

    .line 588
    :catch_18
    move-exception v2

    .line 589
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 586
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1a
    move-exception v2

    .line 587
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method private greylist-max-o getPhoneId()I
    .registers 2

    .line 8573
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private greylist getPhoneId(I)I
    .registers 3
    .param p1, "preferredSubId"    # I

    .line 8588
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static greylist getPhoneType(I)I
    .registers 5
    .param p0, "networkMode"    # I

    .line 2855
    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_20

    .line 2893
    return v1

    .line 2886
    :pswitch_6
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->lte_on_cdma_device()Ljava/util/Optional;

    move-result-object v2

    .line 2887
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2886
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1c

    .line 2888
    return v0

    .line 2890
    :cond_1c
    return v1

    .line 2883
    :pswitch_1d
    return v0

    .line 2859
    :pswitch_1e
    return v0

    .line 2877
    :pswitch_1f
    return v1

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1f
        :pswitch_1f
        :pswitch_6
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1d
        :pswitch_1f
    .end packed-switch
.end method

.method private greylist-max-o getPhoneTypeFromNetworkType(I)I
    .registers 4
    .param p1, "phoneId"    # I

    .line 2837
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->default_network()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2838
    .local v0, "mode":Ljava/lang/Integer;
    if-eqz v0, :cond_16

    .line 2839
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    return v1

    .line 2841
    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method private greylist getPhoneTypeFromProperty(I)I
    .registers 4
    .param p1, "phoneId"    # I

    .line 2826
    nop

    .line 2827
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->current_active_phone()Ljava/util/List;

    move-result-object v0

    .line 2826
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2828
    .local v0, "type":Ljava/lang/Integer;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 2829
    :cond_13
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v1

    return v1
.end method

.method private blacklist getRenouncedPermissions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_f

    .line 609
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 611
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getServiceStateForSlot(IZZ)Landroid/telephony/ServiceState;
    .registers 11
    .param p1, "slotIndex"    # I
    .param p2, "renounceFineLocationAccess"    # Z
    .param p3, "renounceCoarseLocationAccess"    # Z

    .line 13524
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v1, v0

    .line 13525
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1e

    .line 13526
    nop

    .line 13528
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v6
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_4c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_10} :catch_22

    .line 13526
    move v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "slotIndex":I
    .end local p2    # "renounceFineLocationAccess":Z
    .end local p3    # "renounceCoarseLocationAccess":Z
    .local v2, "slotIndex":I
    .local v3, "renounceFineLocationAccess":Z
    .local v4, "renounceCoarseLocationAccess":Z
    :try_start_13
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephony;->getServiceStateForSlot(IZZLjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object p1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_17} :catch_18

    return-object p1

    .line 13532
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_18
    move-exception v0

    move-object p1, v0

    goto :goto_27

    .line 13530
    :catch_1b
    move-exception v0

    move-object p1, v0

    goto :goto_51

    .line 13525
    .end local v2    # "slotIndex":I
    .end local v3    # "renounceFineLocationAccess":Z
    .end local v4    # "renounceCoarseLocationAccess":Z
    .restart local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    .restart local p1    # "slotIndex":I
    .restart local p2    # "renounceFineLocationAccess":Z
    .restart local p3    # "renounceCoarseLocationAccess":Z
    :cond_1e
    move v2, p1

    move v3, p2

    move v4, p3

    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    .end local p1    # "slotIndex":I
    .end local p2    # "renounceFineLocationAccess":Z
    .end local p3    # "renounceCoarseLocationAccess":Z
    .restart local v2    # "slotIndex":I
    .restart local v3    # "renounceFineLocationAccess":Z
    .restart local v4    # "renounceCoarseLocationAccess":Z
    goto :goto_58

    .line 13532
    .end local v2    # "slotIndex":I
    .end local v3    # "renounceFineLocationAccess":Z
    .end local v4    # "renounceCoarseLocationAccess":Z
    .restart local p1    # "slotIndex":I
    .restart local p2    # "renounceFineLocationAccess":Z
    .restart local p3    # "renounceCoarseLocationAccess":Z
    :catch_22
    move-exception v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object p1, v0

    .line 13533
    .end local p2    # "renounceFineLocationAccess":Z
    .end local p3    # "renounceCoarseLocationAccess":Z
    .restart local v2    # "slotIndex":I
    .restart local v3    # "renounceFineLocationAccess":Z
    .restart local v4    # "renounceCoarseLocationAccess":Z
    .local p1, "e":Ljava/lang/NullPointerException;
    :goto_27
    nop

    .line 13534
    const-string p2, "e2bed88e-def9-476e-bd71-3e572a8de6d1"

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getServiceStateForSlot "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " NPE"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 13533
    invoke-static {p2, p3}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    goto :goto_59

    .line 13530
    .end local v2    # "slotIndex":I
    .end local v3    # "renounceFineLocationAccess":Z
    .end local v4    # "renounceCoarseLocationAccess":Z
    .local p1, "slotIndex":I
    .restart local p2    # "renounceFineLocationAccess":Z
    .restart local p3    # "renounceCoarseLocationAccess":Z
    :catch_4c
    move-exception v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object p1, v0

    .line 13531
    .end local p2    # "renounceFineLocationAccess":Z
    .end local p3    # "renounceCoarseLocationAccess":Z
    .restart local v2    # "slotIndex":I
    .restart local v3    # "renounceFineLocationAccess":Z
    .restart local v4    # "renounceCoarseLocationAccess":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_51
    const-string p2, "TelephonyManager"

    const-string p3, "Error calling ITelephony#getServiceStateForSlot"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13536
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_58
    nop

    .line 13537
    :goto_59
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist getSimApplicationStateFromSimState(I)I
    .registers 3
    .param p1, "simState"    # I

    .line 4022
    sparse-switch p1, :sswitch_data_8

    .line 4033
    return p1

    .line 4031
    :sswitch_4
    const/4 v0, 0x6

    return v0

    .line 4027
    :sswitch_6
    const/4 v0, 0x0

    return v0

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x5 -> :sswitch_4
        0x8 -> :sswitch_6
        0x9 -> :sswitch_6
    .end sparse-switch
.end method

.method private blacklist getSimCardStateFromSimState(I)I
    .registers 3
    .param p1, "simState"    # I

    .line 3905
    sparse-switch p1, :sswitch_data_8

    .line 3912
    const/16 v0, 0xb

    return v0

    .line 3910
    :sswitch_6
    return p1

    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x8 -> :sswitch_6
        0x9 -> :sswitch_6
    .end sparse-switch
.end method

.method public static greylist-max-p getSimCountryIso(I)Ljava/lang/String;
    .registers 3
    .param p0, "subId"    # I

    .line 4238
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 4239
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist getSimCountryIsoForPhone(I)Ljava/lang/String;
    .registers 3
    .param p0, "phoneId"    # I

    .line 4249
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_iso_country()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getSimStateForSlotIndex(I)I
    .registers 4
    .param p0, "slotIndex"    # I

    .line 19210
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19211
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 19212
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ITelephony;->getSimStateForSlotIndex(I)I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 19216
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_25

    .line 19214
    :catch_c
    move-exception v0

    .line 19215
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in getSimStateForSlotIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19217
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o getSimStateIncludingLoaded()I
    .registers 7

    .line 3807
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    .line 3810
    .local v0, "slotIndex":I
    if-gez v0, :cond_67

    .line 3813
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const-string/jumbo v3, "getSimState: default sim:"

    const-string v4, "TelephonyManager"

    const/4 v5, 0x1

    if-ge v1, v2, :cond_4c

    .line 3814
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 3815
    .local v2, "simState":I
    if-eq v2, v5, :cond_49

    .line 3816
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", sim state for slotIndex="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", return state as unknown"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    const/4 v3, 0x0

    return v3

    .line 3813
    .end local v2    # "simState":I
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3821
    .end local v1    # "i":I
    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", all SIMs absent, return state as absent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    return v5

    .line 3825
    :cond_67
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v1

    return v1
.end method

.method static blacklist getSmsService()Lcom/android/internal/telephony/ISms;
    .registers 5

    .line 17609
    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    .line 17612
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 17613
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSmsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 17614
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 17610
    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0

    .line 17617
    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    if-nez v0, :cond_4a

    .line 17620
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 17621
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSmsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 17622
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 17618
    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 17623
    .local v0, "temp":Lcom/android/internal/telephony/ISms;
    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 17624
    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_47

    if-nez v2, :cond_45

    if-eqz v0, :cond_45

    .line 17626
    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    .line 17627
    sget-object v2, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v2}, Lcom/android/internal/telephony/ISms;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_41
    .catchall {:try_start_32 .. :try_end_40} :catchall_47

    .line 17631
    goto :goto_45

    .line 17628
    :catch_41
    move-exception v2

    .line 17630
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_43
    sput-object v3, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    .line 17633
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_45
    :goto_45
    monitor-exit v1

    goto :goto_4a

    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_47

    throw v2

    .line 17635
    .end local v0    # "temp":Lcom/android/internal/telephony/ISms;
    :cond_4a
    :goto_4a
    sget-object v0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    return-object v0
.end method

.method private greylist-max-o getSubId()I
    .registers 2

    .line 8541
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8542
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    return v0

    .line 8544
    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    return v0
.end method

.method private greylist getSubId(I)I
    .registers 3
    .param p1, "preferredSubId"    # I

    .line 8559
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8560
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    return v0

    .line 8562
    :cond_b
    return p1
.end method

.method static blacklist getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 5

    .line 17541
    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    .line 17544
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 17545
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 17546
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 17542
    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0

    .line 17549
    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    if-nez v0, :cond_4a

    .line 17552
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 17553
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 17554
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 17550
    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 17555
    .local v0, "temp":Lcom/android/internal/telephony/IPhoneSubInfo;
    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 17556
    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_47

    if-nez v2, :cond_45

    if-eqz v0, :cond_45

    .line 17558
    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    .line 17559
    sget-object v2, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_41
    .catchall {:try_start_32 .. :try_end_40} :catchall_47

    .line 17563
    goto :goto_45

    .line 17560
    :catch_41
    move-exception v2

    .line 17562
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_43
    sput-object v3, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    .line 17565
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_45
    :goto_45
    monitor-exit v1

    goto :goto_4a

    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_47

    throw v2

    .line 17567
    .end local v0    # "temp":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_4a
    :goto_4a
    sget-object v0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    return-object v0
.end method

.method static blacklist getSubscriptionService()Lcom/android/internal/telephony/ISub;
    .registers 5

    .line 17575
    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    .line 17578
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 17579
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 17580
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 17576
    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    return-object v0

    .line 17583
    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    if-nez v0, :cond_4a

    .line 17586
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 17587
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 17588
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 17584
    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 17589
    .local v0, "temp":Lcom/android/internal/telephony/ISub;
    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 17590
    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_47

    if-nez v2, :cond_45

    if-eqz v0, :cond_45

    .line 17592
    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    .line 17593
    sget-object v2, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    invoke-interface {v2}, Lcom/android/internal/telephony/ISub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_41
    .catchall {:try_start_32 .. :try_end_40} :catchall_47

    .line 17597
    goto :goto_45

    .line 17594
    :catch_41
    move-exception v2

    .line 17596
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_43
    sput-object v3, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    .line 17599
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_45
    :goto_45
    monitor-exit v1

    goto :goto_4a

    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_47

    throw v2

    .line 17601
    .end local v0    # "temp":Lcom/android/internal/telephony/ISub;
    :cond_4a
    :goto_4a
    sget-object v0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    return-object v0
.end method

.method private static blacklist getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 8818
    .local p1, "prop":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 8819
    .local v0, "ret":Ljava/lang/Object;, "TT;"
    if-ltz p0, :cond_d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_d

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 8820
    :cond_d
    if-eqz v0, :cond_11

    move-object v1, v0

    goto :goto_12

    :cond_11
    move-object v1, p2

    :goto_12
    return-object v1
.end method

.method public static greylist getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .line 8803
    const/4 v0, 0x0

    .line 8804
    .local v0, "propVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8805
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1e

    .line 8806
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 8807
    .local v2, "values":[Ljava/lang/String;
    if-ltz p0, :cond_1e

    array-length v3, v2

    if-ge p0, v3, :cond_1e

    aget-object v3, v2, p0

    if-eqz v3, :cond_1e

    .line 8808
    aget-object v0, v2, p0

    .line 8811
    .end local v2    # "values":[Ljava/lang/String;
    :cond_1e
    if-nez v0, :cond_22

    move-object v2, p2

    goto :goto_23

    :cond_22
    move-object v2, v0

    :goto_23
    return-object v2
.end method

.method public static greylist-max-r getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultVal"    # Ljava/lang/String;

    .line 8833
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8834
    .local v0, "propVal":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, p1

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method private blacklist hasCapability(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "legacySetting"    # I

    .line 7043
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 7045
    :cond_6
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 7048
    :cond_13
    const-string/jumbo v0, "ro.vendor.api_level"

    sget v1, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7053
    .local v0, "vendorApiLevel":I
    const v1, 0x316a4

    if-ge v0, v1, :cond_2c

    .line 7054
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1

    .line 7056
    :cond_2c
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isDataEnabledForReason(II)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "reason"    # I

    .line 14756
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14757
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 14758
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isDataEnabledForReason(II)Z

    move-result v1

    return v1

    .line 14760
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "subId":I
    .end local p2    # "reason":I
    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 14762
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "subId":I
    .restart local p2    # "reason":I
    :catch_14
    move-exception v0

    .line 14763
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Telephony#isDataEnabledForReason RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14764
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 14766
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o isImsiEncryptionRequired(II)Z
    .registers 7
    .param p1, "subId"    # I
    .param p2, "keyType"    # I

    .line 4882
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 4883
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 4884
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 4885
    return v1

    .line 4887
    :cond_e
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 4888
    .local v2, "pb":Landroid/os/PersistableBundle;
    if-nez v2, :cond_15

    .line 4889
    return v1

    .line 4891
    :cond_15
    const-string/jumbo v1, "imsi_key_availability_int"

    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 4892
    .local v1, "keyAvailability":I
    invoke-static {v1, p2}, Landroid/telephony/TelephonyManager;->isKeyEnabled(II)Z

    move-result v3

    return v3
.end method

.method private static greylist-max-o isKeyEnabled(II)Z
    .registers 4
    .param p0, "keyAvailability"    # I
    .param p1, "keyType"    # I

    .line 4873
    add-int/lit8 v0, p1, -0x1

    shr-int v0, p0, v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    .line 4874
    .local v0, "returnValue":I
    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public static blacklist isNetworkTypeValid(I)Z
    .registers 2
    .param p0, "networkType"    # I

    .line 18364
    if-ltz p0, :cond_8

    const/16 v0, 0x14

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist isSlotMappingValid(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)Z"
        }
    .end annotation

    .line 4547
    .local p0, "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda11;-><init>()V

    .line 4548
    invoke-static {v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 4547
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4549
    .local v0, "slotMappingInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4550
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 4551
    .local v5, "logicalSlotMap":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_36

    .line 4553
    return v3

    .line 4555
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;>;"
    .end local v5    # "logicalSlotMap":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    :cond_36
    goto :goto_1b

    .line 4559
    :cond_37
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda12;-><init>()V

    .line 4560
    invoke-static {v2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 4559
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 4562
    .local v1, "slotMapInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4563
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 4564
    .local v6, "portAndPhysicalSlotList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v4, :cond_6b

    .line 4566
    return v3

    .line 4568
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;>;"
    .end local v6    # "portAndPhysicalSlotList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    :cond_6b
    goto :goto_52

    .line 4569
    :cond_6c
    return v4
.end method

.method public static blacklist isValidAllowedNetworkTypesReason(I)Z
    .registers 2
    .param p0, "reason"    # I

    .line 10424
    packed-switch p0, :pswitch_data_a

    .line 10433
    const/4 v0, 0x0

    return v0

    .line 10431
    :pswitch_5
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    return v0

    .line 10429
    :pswitch_8
    const/4 v0, 0x1

    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$bootstrapAuthenticationRequest$24(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    .line 18321
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;->onAuthenticationFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$bootstrapAuthenticationRequest$25(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    .line 18351
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;->onAuthenticationFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$convertNetworkTypeBitmaskToString$15(JI)Z
    .registers 7
    .param p0, "networkTypeBitmask"    # J
    .param p2, "x"    # I

    .line 10456
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v0

    and-long/2addr v0, p0

    .line 10457
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 10456
    :goto_10
    return v0
.end method

.method static synthetic blacklist lambda$convertNetworkTypeBitmaskToString$16(I)Ljava/lang/String;
    .registers 2
    .param p0, "x"    # I

    .line 10459
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getFirstActivePortIndex$8(Landroid/telephony/UiccPortInfo;)Z
    .registers 2
    .param p0, "portInfo"    # Landroid/telephony/UiccPortInfo;

    .line 7485
    invoke-virtual {p0}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getSimServiceTable$11(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 9217
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getSimServiceTable: Subscriber Info is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getSimServiceTable$12(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 9233
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getSimServiceTable$13(Landroid/os/OutcomeReceiver;[B)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "simServiceTable"    # [B

    .line 9236
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getSimServiceTable$14(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 9239
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$isSlotMappingValid$0(Landroid/telephony/UiccSlotMapping;)Ljava/util/List;
    .registers 3
    .param p0, "slot"    # Landroid/telephony/UiccSlotMapping;

    .line 4561
    invoke-virtual {p0}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$requestCellInfoUpdate$4(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;
    .param p1, "ex"    # Landroid/os/RemoteException;

    .line 7331
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager$CellInfoCallback;->onError(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCellInfoUpdate$5(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;
    .param p2, "ex"    # Landroid/os/RemoteException;

    .line 7330
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCellInfoUpdate$6(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;
    .param p1, "ex"    # Landroid/os/RemoteException;

    .line 7399
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager$CellInfoCallback;->onError(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCellInfoUpdate$7(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;
    .param p2, "ex"    # Landroid/os/RemoteException;

    .line 7398
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestModemActivityInfo$19(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 13434
    new-instance v0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager$ModemActivityInfoException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNumberVerification$10(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/telephony/NumberVerificationCallback;

    .line 8691
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/NumberVerificationCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNumberVerification$9(Landroid/telephony/NumberVerificationCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/NumberVerificationCallback;

    .line 8692
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/telephony/NumberVerificationCallback;->onVerificationFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$setPreferredOpportunisticDataSubscription$20(Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 15919
    const-wide/32 v0, 0x7c8ba7f

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 15920
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1a

    .line 15922
    :cond_12
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 15924
    :goto_1a
    return-void
.end method

.method static synthetic blacklist lambda$setPreferredOpportunisticDataSubscription$21(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;

    .line 15918
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$setSimPowerStateForSlot$17(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 12884
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$setSimPowerStateForSlot$18(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;

    .line 12883
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$updateAvailableNetworks$22(Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 16020
    const-wide/32 v0, 0x7c8ba7f

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 16021
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1b

    .line 16023
    :cond_13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 16025
    :goto_1b
    return-void
.end method

.method static synthetic blacklist lambda$updateAvailableNetworks$23(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;

    .line 16019
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$uploadCallComposerPicture$1(Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .registers 12
    .param p1, "pictureToUpload"    # Ljava/nio/file/Path;
    .param p2, "callback"    # Landroid/os/OutcomeReceiver;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .line 5072
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5073
    const-string v1, "Uploading call composer picture on main thread! hic sunt dracones!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5076
    :cond_11
    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v1

    .line 5077
    .local v1, "size":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getMaximumCallComposerPictureSize()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_28

    .line 5078
    new-instance v3, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p2, v3}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 5080
    return-void

    .line 5082
    :cond_28
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2f} :catch_5a

    .line 5084
    .local v3, "fileStream":Ljava/io/InputStream;
    :try_start_2f
    new-instance v4, Landroid/telephony/TelephonyManager$2;

    invoke-direct {v4, p0, v3, p2}, Landroid/telephony/TelephonyManager$2;-><init>(Landroid/telephony/TelephonyManager;Ljava/io/InputStream;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {p0, v3, p3, p4, v4}, Landroid/telephony/TelephonyManager;->uploadCallComposerPicture(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_38
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_5a

    .line 5120
    goto :goto_59

    .line 5110
    :catch_38
    move-exception v4

    .line 5111
    .local v4, "e":Ljava/lang/Exception;
    :try_start_39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception calling into stream-version of uploadCallComposerPicture: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_4f} :catch_5a

    .line 5114
    :try_start_4f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 5119
    goto :goto_59

    .line 5115
    :catch_53
    move-exception v5

    .line 5117
    .local v5, "e1":Ljava/io/IOException;
    :try_start_54
    const-string v6, "Error closing file input stream when uploading call composer pic"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_59} :catch_5a

    .line 5125
    .end local v1    # "size":J
    .end local v3    # "fileStream":Ljava/io/InputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "e1":Ljava/io/IOException;
    :goto_59
    goto :goto_7a

    .line 5121
    :catch_5a
    move-exception v1

    .line 5122
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException when uploading call composer pic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5123
    new-instance v0, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p2, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 5126
    .end local v1    # "e":Ljava/io/IOException;
    :goto_7a
    return-void
.end method

.method static synthetic blacklist lambda$uploadCallComposerPicture$2(Landroid/os/OutcomeReceiver;Ljava/io/IOException;)V
    .registers 4
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Ljava/io/IOException;

    .line 5185
    new-instance v0, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$uploadCallComposerPicture$3(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 13
    .param p0, "pictureToUpload"    # Ljava/io/InputStream;
    .param p1, "callback"    # Landroid/os/OutcomeReceiver;
    .param p2, "writeFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "output"    # Ljava/io/OutputStream;

    .line 5221
    const-string v0, "Error closing fd pipe: "

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    const-string v2, "TelephonyManager"

    if-eqz v1, :cond_13

    .line 5222
    const-string v1, "Uploading call composer picture on main thread! hic sunt dracones!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    :cond_13
    const/4 v1, 0x0

    .line 5227
    .local v1, "totalBytesRead":I
    const/16 v3, 0x4000

    new-array v3, v3, [B

    .line 5232
    .local v3, "buffer":[B
    :goto_18
    :try_start_18
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1c} :catch_99
    .catchall {:try_start_18 .. :try_end_1c} :catchall_97

    .line 5246
    .local v4, "numRead":I
    nop

    .line 5248
    if-gez v4, :cond_21

    .line 5249
    goto/16 :goto_d6

    .line 5252
    :cond_21
    add-int/2addr v1, v4

    .line 5253
    int-to-long v5, v1

    :try_start_23
    invoke-static {}, Landroid/telephony/TelephonyManager;->getMaximumCallComposerPictureSize()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_6a

    .line 5254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read too many bytes from call composer pic stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_97

    .line 5257
    :try_start_41
    new-instance v5, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p1, v5}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 5259
    const-string/jumbo v5, "too large"

    invoke-virtual {p2, v5}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_51} :catch_53
    .catchall {:try_start_41 .. :try_end_51} :catchall_97

    .line 5263
    goto/16 :goto_d6

    .line 5260
    :catch_53
    move-exception v5

    .line 5262
    .local v5, "e1":Ljava/io/IOException;
    :try_start_54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_54 .. :try_end_68} :catchall_97

    .line 5264
    nop

    .end local v5    # "e1":Ljava/io/IOException;
    goto :goto_d6

    .line 5268
    :cond_6a
    const/4 v5, 0x0

    :try_start_6b
    invoke-virtual {p3, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_70
    .catchall {:try_start_6b .. :try_end_6e} :catchall_97

    .line 5279
    nop

    .line 5280
    .end local v4    # "numRead":I
    goto :goto_18

    .line 5269
    .restart local v4    # "numRead":I
    :catch_70
    move-exception v5

    .line 5270
    .local v5, "e":Ljava/io/IOException;
    :try_start_71
    new-instance v6, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p1, v6}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_97

    .line 5273
    :try_start_7a
    const-string/jumbo v6, "remote end closed"

    invoke-virtual {p2, v6}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_80} :catch_81
    .catchall {:try_start_7a .. :try_end_80} :catchall_97

    .line 5277
    goto :goto_96

    .line 5274
    :catch_81
    move-exception v6

    .line 5276
    .local v6, "e1":Ljava/io/IOException;
    :try_start_82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5278
    .end local v6    # "e1":Ljava/io/IOException;
    :goto_96
    goto :goto_d6

    .line 5282
    .end local v4    # "numRead":I
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_97
    move-exception v0

    goto :goto_dd

    .line 5233
    :catch_99
    move-exception v4

    .line 5234
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException reading from input while uploading pic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5237
    new-instance v5, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v4}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p1, v5}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V
    :try_end_b9
    .catchall {:try_start_82 .. :try_end_b9} :catchall_97

    .line 5240
    :try_start_b9
    const-string/jumbo v5, "input closed"

    invoke-virtual {p2, v5}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bf} :catch_c0
    .catchall {:try_start_b9 .. :try_end_bf} :catchall_97

    .line 5244
    goto :goto_d5

    .line 5241
    :catch_c0
    move-exception v5

    .line 5243
    .local v5, "e1":Ljava/io/IOException;
    :try_start_c1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catchall {:try_start_c1 .. :try_end_d5} :catchall_97

    .line 5245
    .end local v5    # "e1":Ljava/io/IOException;
    :goto_d5
    nop

    .line 5283
    .end local v4    # "e":Ljava/io/IOException;
    :goto_d6
    :try_start_d6
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_da

    .line 5286
    goto :goto_dc

    .line 5284
    :catch_da
    move-exception v0

    .line 5287
    nop

    .line 5288
    :goto_dc
    return-void

    .line 5283
    :goto_dd
    :try_start_dd
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1

    .line 5286
    goto :goto_e2

    .line 5284
    :catch_e1
    move-exception v2

    .line 5287
    :goto_e2
    throw v0
.end method

.method private blacklist mergeAttributionAndRenouncedPermissions(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;
    .registers 7
    .param p1, "to"    # Landroid/content/Context;
    .param p2, "from"    # Landroid/content/Context;

    .line 549
    move-object v0, p2

    .line 550
    .local v0, "contextToReturn":Landroid/content/Context;
    if-eqz p1, :cond_57

    .line 551
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 552
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    goto :goto_1b

    .line 554
    :cond_1a
    move-object v0, p1

    .line 557
    :goto_1b
    nop

    .line 558
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 559
    .local v1, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_57

    .line 560
    invoke-virtual {p1}, Landroid/content/Context;->getParams()Landroid/content/ContextParams;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 561
    new-instance v2, Landroid/content/ContextParams$Builder;

    .line 562
    invoke-virtual {p1}, Landroid/content/Context;->getParams()Landroid/content/ContextParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/ContextParams$Builder;-><init>(Landroid/content/ContextParams;)V

    .line 563
    invoke-virtual {v2, v1}, Landroid/content/ContextParams$Builder;->setRenouncedPermissions(Ljava/util/Set;)Landroid/content/ContextParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object v2

    .line 561
    invoke-virtual {v0, v2}, Landroid/content/Context;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object v0

    goto :goto_57

    .line 565
    :cond_46
    new-instance v2, Landroid/content/ContextParams$Builder;

    invoke-direct {v2}, Landroid/content/ContextParams$Builder;-><init>()V

    .line 567
    invoke-virtual {v2, v1}, Landroid/content/ContextParams$Builder;->setRenouncedPermissions(Ljava/util/Set;)Landroid/content/ContextParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object v2

    .line 565
    invoke-virtual {v0, v2}, Landroid/content/Context;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object v0

    .line 571
    .end local v1    # "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_57
    :goto_57
    return-object v0
.end method

.method public static greylist-max-r putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .registers 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .line 8762
    const-string v0, ""

    .line 8763
    .local v0, "data":Ljava/lang/String;
    const/4 v1, 0x0

    .line 8764
    .local v1, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8766
    .local v2, "v":Ljava/lang/String;
    const v3, 0x7fffffff

    if-eq p2, v3, :cond_8b

    .line 8769
    if-ltz p2, :cond_71

    .line 8772
    const-string v3, ","

    if-eqz v2, :cond_16

    .line 8773
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8777
    :cond_16
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, p2, :cond_3a

    .line 8778
    const-string v5, ""

    .line 8779
    .local v5, "str":Ljava/lang/String;
    if-eqz v1, :cond_22

    array-length v6, v1

    if-ge v4, v6, :cond_22

    .line 8780
    aget-object v5, v1, v4

    .line 8782
    :cond_22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8777
    .end local v5    # "str":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 8785
    .end local v4    # "i":I
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8788
    if-eqz v1, :cond_6c

    .line 8789
    add-int/lit8 v4, p2, 0x1

    .restart local v4    # "i":I
    :goto_4f
    array-length v5, v1

    if-ge v4, v5, :cond_6c

    .line 8790
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8789
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 8793
    .end local v4    # "i":I
    :cond_6c
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 8770
    :cond_71
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putIntAtIndex index < 0 index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8767
    :cond_8b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putIntAtIndex index == MAX_VALUE index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist resetServiceCache()V
    .registers 5

    .line 17515
    sget-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 17516
    :try_start_3
    sget-object v1, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_16

    .line 17517
    sget-object v1, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 17518
    sput-object v2, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 17520
    :cond_16
    sget-object v1, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    if-eqz v1, :cond_2a

    .line 17521
    sget-object v1, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 17522
    sput-object v2, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    .line 17523
    invoke-static {}, Landroid/telephony/SubscriptionManager;->clearCaches()V

    .line 17525
    :cond_2a
    sget-object v1, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_3b

    .line 17526
    sget-object v1, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 17527
    sput-object v2, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    .line 17529
    :cond_3b
    sget-object v1, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    if-eqz v1, :cond_4c

    .line 17530
    sget-object v1, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 17531
    sput-object v2, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    .line 17533
    :cond_4c
    monitor-exit v0

    .line 17534
    return-void

    .line 17533
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method private static blacklist runOnBackgroundThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 628
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_7} :catch_9

    .line 632
    nop

    .line 633
    return-void

    .line 629
    :catch_9
    move-exception v0

    .line 630
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to post a callback from the caller\'s thread context."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist setDataEnabledForReason(IIZ)V
    .registers 7
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .param p3, "enabled"    # Z

    .line 14708
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14709
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_e

    .line 14710
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/ITelephony;->setDataEnabledForReason(IIZLjava/lang/String;)V

    .line 14717
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    goto :goto_22

    .line 14712
    .restart local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "subId":I
    .end local p2    # "reason":I
    .end local p3    # "enabled":Z
    throw v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    .line 14714
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "subId":I
    .restart local p2    # "reason":I
    .restart local p3    # "enabled":Z
    :catch_17
    move-exception v0

    .line 14715
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Telephony#setDataEnabledForReason RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14716
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 14718
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_22
    return-void
.end method

.method private blacklist setSystemSelectionChannelsInternal(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 16634
    .local p1, "specifiers":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    if-nez p3, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/telephony/TelephonyManager$13;

    invoke-direct {v0, p0, p2, p3}, Landroid/telephony/TelephonyManager$13;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 16647
    .local v0, "aidlConsumer":Lcom/android/internal/telephony/IBooleanConsumer;
    :goto_9
    :try_start_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 16648
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_16

    .line 16649
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/android/internal/telephony/ITelephony;->setSystemSelectionChannels(Ljava/util/List;ILcom/android/internal/telephony/IBooleanConsumer;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    .line 16653
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_16
    goto :goto_30

    .line 16651
    :catch_17
    move-exception v1

    .line 16652
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telephony#setSystemSelectionChannels RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16654
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method

.method public static blacklist setupIPhoneSubInfoForTest(Lcom/android/internal/telephony/IPhoneSubInfo;)V
    .registers 3
    .param p0, "iPhoneSubInfo"    # Lcom/android/internal/telephony/IPhoneSubInfo;

    .line 17672
    sget-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 17673
    :try_start_3
    sput-object p0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    .line 17674
    monitor-exit v0

    .line 17675
    return-void

    .line 17674
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static blacklist setupISmsForTest(Lcom/android/internal/telephony/ISms;)V
    .registers 3
    .param p0, "iSms"    # Lcom/android/internal/telephony/ISms;

    .line 17696
    sget-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 17697
    :try_start_3
    sput-object p0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    .line 17698
    monitor-exit v0

    .line 17699
    return-void

    .line 17698
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static blacklist setupISubForTest(Lcom/android/internal/telephony/ISub;)V
    .registers 3
    .param p0, "iSub"    # Lcom/android/internal/telephony/ISub;

    .line 17684
    sget-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 17685
    :try_start_3
    sput-object p0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    .line 17686
    monitor-exit v0

    .line 17687
    return-void

    .line 17686
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static blacklist setupITelephonyForTest(Lcom/android/internal/telephony/ITelephony;)V
    .registers 1
    .param p0, "telephony"    # Lcom/android/internal/telephony/ITelephony;

    .line 17662
    sput-object p0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 17663
    return-void
.end method

.method public static blacklist simStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 19834
    packed-switch p0, :pswitch_data_42

    .line 19860
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

    .line 19858
    :pswitch_1d
    const-string v0, "PRESENT"

    return-object v0

    .line 19856
    :pswitch_20
    const-string v0, "LOADED"

    return-object v0

    .line 19854
    :pswitch_23
    const-string v0, "CARD_RESTRICTED"

    return-object v0

    .line 19852
    :pswitch_26
    const-string v0, "CARD_IO_ERROR"

    return-object v0

    .line 19850
    :pswitch_29
    const-string v0, "PERM_DISABLED"

    return-object v0

    .line 19848
    :pswitch_2c
    const-string v0, "NOT_READY"

    return-object v0

    .line 19846
    :pswitch_2f
    const-string v0, "READY"

    return-object v0

    .line 19844
    :pswitch_32
    const-string v0, "NETWORK_LOCKED"

    return-object v0

    .line 19842
    :pswitch_35
    const-string v0, "PUK_REQUIRED"

    return-object v0

    .line 19840
    :pswitch_38
    const-string v0, "PIN_REQUIRED"

    return-object v0

    .line 19838
    :pswitch_3b
    const-string v0, "ABSENT"

    return-object v0

    .line 19836
    :pswitch_3e
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist srvccStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 380
    packed-switch p0, :pswitch_data_2c

    .line 392
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

    .line 390
    :pswitch_1d
    const-string v0, "CANCELED"

    return-object v0

    .line 388
    :pswitch_20
    const-string v0, "FAILED"

    return-object v0

    .line 386
    :pswitch_23
    const-string v0, "COMPLETED"

    return-object v0

    .line 384
    :pswitch_26
    const-string v0, "STARTED"

    return-object v0

    .line 382
    :pswitch_29
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_2c
    .packed-switch -0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private static blacklist updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .registers 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;ITT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 8701
    .local p0, "prop":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8702
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_10

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 8703
    :cond_10
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8704
    return-object v0
.end method


# virtual methods
.method public blacklist addDevicePolicyOverrideApn(Landroid/content/Context;Landroid/telephony/data/ApnSetting;)I
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 16488
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 16490
    .local v0, "resultUri":Landroid/net/Uri;
    const/4 v1, -0x1

    .line 16491
    .local v1, "resultId":I
    if-eqz v0, :cond_38

    .line 16493
    :try_start_11
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_19} :catch_1b

    move v1, v2

    .line 16497
    goto :goto_38

    .line 16494
    :catch_1b
    move-exception v2

    .line 16495
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse inserted override APN id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 16496
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 16495
    const-string v4, "TelephonyManager"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16499
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_38
    :goto_38
    return v1
.end method

.method public greylist answerRingingCall()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11134
    return-void
.end method

.method public whitelist bootstrapAuthenticationRequest(ILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    .registers 15
    .param p1, "appType"    # I
    .param p2, "nafId"    # Landroid/net/Uri;
    .param p3, "securityProtocol"    # Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .param p4, "forceBootStrapping"    # Z
    .param p5, "e"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18319
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_2a

    move-object v1, v0

    .line 18320
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_16

    .line 18321
    :try_start_7
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p6}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V

    invoke-interface {p5, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    .line 18323
    return-void

    .line 18349
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_10
    move-exception v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    goto :goto_2f

    .line 18325
    .restart local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_16
    nop

    .line 18326
    :try_start_17
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    new-instance v7, Landroid/telephony/TelephonyManager$18;

    invoke-direct {v7, p0, p5, p6}, Landroid/telephony/TelephonyManager$18;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_2a

    .line 18325
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "appType":I
    .end local p2    # "nafId":Landroid/net/Uri;
    .end local p3    # "securityProtocol":Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .end local p4    # "forceBootStrapping":Z
    .local v3, "appType":I
    .local v4, "nafId":Landroid/net/Uri;
    .local v5, "securityProtocol":Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .local v6, "forceBootStrapping":Z
    :try_start_24
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephony;->bootstrapAuthenticationRequest(IILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLandroid/telephony/IBootstrapAuthenticationCallback;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_28

    .line 18352
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    goto :goto_3e

    .line 18349
    :catch_28
    move-exception v0

    goto :goto_2f

    .end local v3    # "appType":I
    .end local v4    # "nafId":Landroid/net/Uri;
    .end local v5    # "securityProtocol":Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .end local v6    # "forceBootStrapping":Z
    .restart local p1    # "appType":I
    .restart local p2    # "nafId":Landroid/net/Uri;
    .restart local p3    # "securityProtocol":Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .restart local p4    # "forceBootStrapping":Z
    :catch_2a
    move-exception v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 18350
    .end local p1    # "appType":I
    .end local p2    # "nafId":Landroid/net/Uri;
    .end local p3    # "securityProtocol":Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .end local p4    # "forceBootStrapping":Z
    .local v0, "exception":Landroid/os/RemoteException;
    .restart local v3    # "appType":I
    .restart local v4    # "nafId":Landroid/net/Uri;
    .restart local v5    # "securityProtocol":Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .restart local v6    # "forceBootStrapping":Z
    :goto_2f
    const-string p1, "TelephonyManager"

    const-string p2, "Error calling ITelephony#bootstrapAuthenticationRequest"

    invoke-static {p1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18351
    new-instance p1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p6}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V

    invoke-interface {p5, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18353
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_3e
    return-void
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11104
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11105
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 11106
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 11109
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_12

    .line 11107
    :catch_a
    move-exception v0

    .line 11108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11110
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist canChangeDtmfToneLength()Z
    .registers 6

    .line 12387
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12388
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 12389
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 12390
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 12389
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->canChangeDtmfToneLength(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_1f
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_16} :catch_18

    return v0

    .line 12388
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_25

    .line 12394
    :catch_18
    move-exception v1

    .line 12395
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 12392
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1f
    move-exception v1

    .line 12393
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12396
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_25
    nop

    .line 12397
    :goto_26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canConnectTo5GInDsdsMode()Z
    .registers 4

    .line 17707
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17708
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 17710
    :cond_8
    :try_start_8
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->canConnectTo5GInDsdsMode()Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 17713
    :catch_d
    move-exception v2

    .line 17714
    .local v2, "ex":Ljava/lang/NullPointerException;
    return v1

    .line 17711
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_f
    move-exception v2

    .line 17712
    .local v2, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist changeIccLockPin(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;
    .registers 7
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17301
    const-string v0, "changeIccLockPin oldPin can\'t be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17302
    const-string v0, "changeIccLockPin newPin can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17304
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17305
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_32

    .line 17306
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 17307
    .local v1, "result":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_24

    .line 17308
    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    .line 17309
    :cond_24
    if-gez v1, :cond_2b

    .line 17310
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v2

    return-object v2

    .line 17312
    :cond_2b
    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    .line 17315
    .end local v1    # "result":I
    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "oldPin":Ljava/lang/String;
    .end local p2    # "newPin":Ljava/lang/String;
    throw v1
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3b} :catch_3b

    .line 17317
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "oldPin":Ljava/lang/String;
    .restart local p2    # "newPin":Ljava/lang/String;
    :catch_3b
    move-exception v0

    .line 17318
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "changeIccLockPin RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17319
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 17321
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10811
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10812
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_11

    .line 10813
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackage(ILjava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_12

    return v0

    .line 10812
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_11
    goto :goto_1f

    .line 10816
    :catch_12
    move-exception v1

    .line 10817
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "checkCarrierPrivilegesForPackage NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 10814
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_19
    move-exception v1

    .line 10815
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "checkCarrierPrivilegesForPackage RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10818
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1f
    nop

    .line 10819
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10832
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10833
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 10834
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    .line 10833
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1b

    .line 10837
    :catch_e
    move-exception v1

    .line 10838
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "checkCarrierPrivilegesForPackageAnyPhone NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 10835
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v1

    .line 10836
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "checkCarrierPrivilegesForPackageAnyPhone RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10839
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1b
    nop

    .line 10840
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearRadioPowerOffForReason(I)V
    .registers 5
    .param p1, "reason"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11664
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11665
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 11666
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->clearRadioPowerOffForReason(II)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 11675
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_2c

    .line 11667
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "reason":I
    throw v1

    .line 11670
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "reason":I
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "reason":I
    throw v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_21

    .line 11672
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "reason":I
    :catch_21
    move-exception v0

    .line 11673
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#clearRadioPowerOffForReason"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11674
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 11676
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2c
    return-void
.end method

.method public whitelist clearSignalStrengthUpdateRequest(Landroid/telephony/SignalStrengthUpdateRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/telephony/SignalStrengthUpdateRequest;

    .line 18444
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18447
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18448
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_17

    .line 18449
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->clearSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    .line 18453
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_20

    .line 18451
    :catch_18
    move-exception v0

    .line 18452
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#clearSignalStrengthUpdateRequest"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18454
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public whitelist createForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/TelephonyManager;
    .registers 5
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 764
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriptionId(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    .line 765
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 766
    const/4 v1, 0x0

    return-object v1

    .line 768
    :cond_c
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method public whitelist createForSubscriptionId(I)Landroid/telephony/TelephonyManager;
    .registers 4
    .param p1, "subId"    # I

    .line 752
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public whitelist dial(Ljava/lang/String;)V
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11082
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11083
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 11084
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 11087
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_12

    .line 11085
    :catch_a
    move-exception v0

    .line 11086
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#dial"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11088
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist disableDataConnectivity()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11849
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11850
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 11851
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 11854
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 11852
    :catch_10
    move-exception v0

    .line 11853
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#disableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11855
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o disableIms(I)V
    .registers 5
    .param p1, "slotId"    # I

    .line 9294
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9295
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 9296
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->disableIms(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 9301
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_27

    .line 9298
    :catch_a
    move-exception v0

    .line 9299
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableIms, RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9300
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9299
    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9302
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method

.method public greylist-max-o disableVisualVoicemailSmsFilter(I)V
    .registers 4
    .param p1, "subId"    # I

    .line 5946
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5947
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 5948
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_13

    .line 5951
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_10
    move-exception v0

    goto :goto_14

    .line 5950
    :catch_12
    move-exception v0

    .line 5952
    :cond_13
    :goto_13
    nop

    .line 5953
    :goto_14
    return-void
.end method

.method public whitelist doesSwitchMultiSimConfigTriggerReboot()Z
    .registers 5

    .line 16268
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16269
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_17

    .line 16270
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    .line 16271
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 16270
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->doesSwitchMultiSimConfigTriggerReboot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return v1

    .line 16275
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_20

    .line 16273
    :catch_18
    move-exception v0

    .line 16274
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "doesSwitchMultiSimConfigTriggerReboot RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16276
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist enableDataConnectivity()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11830
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11831
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 11832
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 11835
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 11833
    :catch_10
    move-exception v0

    .line 11834
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#enableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11836
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o enableIms(I)V
    .registers 5
    .param p1, "slotId"    # I

    .line 9277
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9278
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 9279
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableIms(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 9284
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_27

    .line 9281
    :catch_a
    move-exception v0

    .line 9282
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableIms, RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9283
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9282
    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9285
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method

.method public whitelist enableModemForSlot(IZ)Z
    .registers 7
    .param p1, "slotIndex"    # I
    .param p2, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16049
    const/4 v0, 0x0

    .line 16051
    .local v0, "ret":Z
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 16052
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c

    .line 16053
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->enableModemForSlot(IZ)Z

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    .line 16057
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_c
    goto :goto_15

    .line 16055
    :catch_d
    move-exception v1

    .line 16056
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "enableModem RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16058
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_15
    return v0
.end method

.method public whitelist enableVideoCalling(Z)V
    .registers 5
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12341
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12342
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 12343
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableVideoCalling(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 12346
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_12

    .line 12344
    :catch_a
    move-exception v0

    .line 12345
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#enableVideoCalling"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12347
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public greylist-max-o enableVisualVoicemailSmsFilter(ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "settings"    # Landroid/telephony/VisualVoicemailSmsFilterSettings;

    .line 5922
    if-eqz p2, :cond_17

    .line 5926
    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5927
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_15

    .line 5928
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_15

    .line 5932
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_12
    move-exception v0

    goto :goto_16

    .line 5931
    :catch_14
    move-exception v0

    .line 5933
    :cond_15
    :goto_15
    nop

    .line 5934
    :goto_16
    return-void

    .line 5923
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Settings cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist endCall()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11121
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o factoryReset(I)V
    .registers 5
    .param p1, "subId"    # I

    .line 13222
    :try_start_0
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factoryReset: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13223
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13224
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_25

    .line 13225
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->factoryReset(ILjava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_26

    .line 13228
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_25
    goto :goto_27

    .line 13227
    :catch_26
    move-exception v0

    .line 13229
    :goto_27
    return-void
.end method

.method public blacklist filterEmergencyNumbersByCategories(Ljava/util/Map;I)Ljava/util/Map;
    .registers 11
    .param p2, "categories"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation

    .line 15606
    .local p1, "emergencyNumberList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15607
    .local v0, "emergencyNumberListForCategories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    if-eqz p1, :cond_44

    .line 15608
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 15609
    .local v2, "subscriptionId":Ljava/lang/Integer;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 15611
    .local v3, "allNumbersForSub":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 15612
    .local v4, "numbersForCategoriesPerSub":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/emergency/EmergencyNumber;

    .line 15613
    .local v6, "number":Landroid/telephony/emergency/EmergencyNumber;
    invoke-virtual {v6, p2}, Landroid/telephony/emergency/EmergencyNumber;->isInEmergencyServiceCategories(I)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 15614
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15616
    .end local v6    # "number":Landroid/telephony/emergency/EmergencyNumber;
    :cond_3f
    goto :goto_2a

    .line 15617
    :cond_40
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15619
    .end local v2    # "subscriptionId":Ljava/lang/Integer;
    .end local v3    # "allNumbersForSub":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;"
    .end local v4    # "numbersForCategoriesPerSub":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;"
    goto :goto_f

    .line 15621
    :cond_44
    return-object v0
.end method

.method public whitelist getActiveModemCount()I
    .registers 3

    .line 689
    const/4 v0, 0x1

    .line 690
    .local v0, "modemCount":I
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    goto :goto_26

    .line 692
    :pswitch_d
    const/4 v0, 0x1

    .line 694
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDeviceVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v1

    if-nez v1, :cond_26

    .line 695
    const/4 v0, 0x0

    goto :goto_26

    .line 703
    :pswitch_22
    const/4 v0, 0x3

    goto :goto_26

    .line 700
    :pswitch_24
    const/4 v0, 0x2

    .line 701
    nop

    .line 706
    :cond_26
    :goto_26
    return v0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_24
        :pswitch_24
        :pswitch_22
        :pswitch_d
    .end packed-switch
.end method

.method public greylist-max-o getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .registers 4
    .param p1, "subId"    # I

    .line 5989
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5990
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 5991
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 5990
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_f

    .line 5994
    :catch_c
    move-exception v0

    goto :goto_10

    .line 5993
    :catch_e
    move-exception v0

    .line 5995
    :goto_f
    nop

    .line 5997
    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAidForAppType(I)Ljava/lang/String;
    .registers 3
    .param p1, "appType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13919
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAidForAppType(II)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I
    .param p2, "appType"    # I

    .line 13928
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13929
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 13930
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 13934
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 13932
    :catch_c
    move-exception v0

    .line 13933
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getAidForAppType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13935
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAllCellInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 7196
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 7197
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 7198
    return-object v0

    .line 7199
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v0

    .line 7201
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    goto :goto_19

    .line 7200
    :catch_17
    move-exception v1

    .line 7202
    nop

    .line 7203
    :goto_19
    return-object v0
.end method

.method public whitelist getAllowedCarriers(I)Ljava/util/List;
    .registers 4
    .param p1, "slotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14228
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 14229
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCarrierRestrictionRules()Landroid/telephony/CarrierRestrictionRules;

    move-result-object v0

    .line 14230
    .local v0, "carrierRestrictionRule":Landroid/telephony/CarrierRestrictionRules;
    if-eqz v0, :cond_11

    .line 14231
    invoke-virtual {v0}, Landroid/telephony/CarrierRestrictionRules;->getAllowedCarriers()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 14234
    .end local v0    # "carrierRestrictionRule":Landroid/telephony/CarrierRestrictionRules;
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public whitelist getAllowedNetworkTypes()J
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9750
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9751
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_10

    .line 9752
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getAllowedNetworkTypesForReason(II)J

    move-result-wide v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return-wide v1

    .line 9757
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    goto :goto_19

    .line 9755
    :catch_11
    move-exception v0

    .line 9756
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getAllowedNetworkTypes RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9758
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getAllowedNetworkTypesBitmask()J
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9720
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9721
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_10

    .line 9722
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getAllowedNetworkTypesBitmask(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_11

    int-to-long v1, v1

    return-wide v1

    .line 9726
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    goto :goto_19

    .line 9724
    :catch_11
    move-exception v0

    .line 9725
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getAllowedNetworkTypesBitmask RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9727
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getAllowedNetworkTypesForReason(I)J
    .registers 5
    .param p1, "reason"    # I

    .line 10402
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isValidAllowedNetworkTypesReason(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 10407
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10408
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_15

    .line 10409
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getAllowedNetworkTypesForReason(II)J

    move-result-wide v1

    return-wide v1

    .line 10411
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "reason":I
    throw v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1e} :catch_1e

    .line 10413
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "reason":I
    :catch_1e
    move-exception v0

    .line 10414
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getAllowedNetworkTypesForReason RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10415
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10417
    .end local v0    # "ex":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0

    .line 10403
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid AllowedNetworkTypesReason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAndUpdateDefaultRespondViaMessageApplication()Landroid/content/ComponentName;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13014
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13015
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_10

    .line 13016
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getDefaultRespondViaMessageApplication(IZ)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return-object v1

    .line 13020
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    goto :goto_2a

    .line 13018
    :catch_11
    move-exception v0

    .line 13019
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in getAndUpdateDefaultRespondViaMessageApplication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13021
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAvailableNetworks()Lcom/android/internal/telephony/CellNetworkScanResult;
    .registers 6

    .line 9816
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9817
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_19

    .line 9818
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9819
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 9818
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getCellNetworkScanResults(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_18} :catch_1a

    return-object v0

    .line 9817
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_19
    goto :goto_27

    .line 9823
    :catch_1a
    move-exception v1

    .line 9824
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "getAvailableNetworks NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 9821
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_21
    move-exception v1

    .line 9822
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "getAvailableNetworks RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9825
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_27
    nop

    .line 9826
    :goto_28
    new-instance v0, Lcom/android/internal/telephony/CellNetworkScanResult;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CellNetworkScanResult;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public greylist-max-o getBasebandVersion()Ljava/lang/String;
    .registers 3

    .line 12914
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 12915
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getBasebandVersionForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getBasebandVersionForPhone(I)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I

    .line 12925
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->baseband_version()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCallComposerStatus()I
    .registers 4

    .line 11061
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11062
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 11063
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getCallComposerStatus(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 11068
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_1b

    .line 11065
    :catch_10
    move-exception v0

    .line 11066
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getCallComposerStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11067
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 11069
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallForwarding(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;)V
    .registers 8
    .param p1, "callForwardingReason"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16799
    if-ltz p1, :cond_24

    const/4 v0, 0x5

    if-gt p1, v0, :cond_24

    .line 16804
    new-instance v0, Landroid/telephony/TelephonyManager$14;

    invoke-direct {v0, p0, p2, p3}, Landroid/telephony/TelephonyManager$14;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;)V

    .line 16821
    .local v0, "internalCallback":Lcom/android/internal/telephony/ICallForwardingInfoCallback;
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 16822
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 16823
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/telephony/ITelephony;->getCallForwarding(IILcom/android/internal/telephony/ICallForwardingInfoCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_18

    .line 16828
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_23

    .line 16825
    :catch_18
    move-exception v1

    .line 16826
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getCallForwarding RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16827
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 16829
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_23
    return-void

    .line 16801
    .end local v0    # "internalCallback":Lcom/android/internal/telephony/ICallForwardingInfoCallback;
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callForwardingReason is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCallState()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6572
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    .line 6573
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 6574
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_15

    .line 6575
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v1

    return v1

    .line 6578
    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getCallState(I)I
    .registers 6
    .param p1, "subId"    # I

    .line 6618
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6619
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 6620
    return v1

    .line 6623
    :cond_8
    :try_start_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 6624
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 6623
    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCallStateForSubscription(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v1

    .line 6625
    :catch_19
    move-exception v2

    .line 6626
    .local v2, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist getCallStateForSubscription()I
    .registers 2

    .line 6597
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public whitelist getCallWaitingStatus(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 17004
    .local p2, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "TelephonyManager"

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17005
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17007
    new-instance v1, Landroid/telephony/TelephonyManager$16;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/TelephonyManager$16;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 17016
    .local v1, "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    :try_start_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 17017
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_2b

    .line 17018
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/ITelephony;->getCallWaitingStatus(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_1a} :catch_1b

    goto :goto_2b

    .line 17023
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1b
    move-exception v2

    .line 17024
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v3, "getCallWaitingStatus NPE"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17025
    throw v2

    .line 17020
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_22
    move-exception v2

    .line 17021
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "getCallWaitingStatus RemoteException"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17022
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 17026
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_2b
    :goto_2b
    nop

    .line 17027
    return-void
.end method

.method public whitelist getCardIdForDefaultEuicc()I
    .registers 5

    .line 4408
    const/4 v0, -0x2

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4409
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 4410
    return v0

    .line 4412
    :cond_8
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCardIdForDefaultEuicc(ILjava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_15

    return v0

    .line 4413
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    .line 4414
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getCarrierConfig()Landroid/os/PersistableBundle;
    .registers 3

    .line 3024
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    .line 3025
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3026
    .local v0, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getCarrierIdFromCarrierIdentifier(Landroid/service/carrier/CarrierIdentifier;)I
    .registers 4
    .param p1, "carrierIdentifier"    # Landroid/service/carrier/CarrierIdentifier;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19931
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19932
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 19933
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierIdFromIdentifier(Landroid/service/carrier/CarrierIdentifier;)I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 19937
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_d

    .line 19935
    :catch_c
    move-exception v0

    .line 19938
    :goto_d
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getCarrierIdFromMccMnc(Ljava/lang/String;)I
    .registers 5
    .param p1, "mccmnc"    # Ljava/lang/String;

    .line 13867
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13868
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_10

    .line 13869
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->getCarrierIdFromMccMnc(ILjava/lang/String;Z)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return v1

    .line 13873
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    goto :goto_12

    .line 13871
    :catch_11
    move-exception v0

    .line 13874
    :goto_12
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCarrierIdFromSimMccMnc()I
    .registers 5

    .line 13838
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13839
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_14

    .line 13840
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCarrierIdFromMccMnc(ILjava/lang/String;Z)I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    return v1

    .line 13844
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_14
    goto :goto_16

    .line 13842
    :catch_15
    move-exception v0

    .line 13845
    :goto_16
    const/4 v0, -0x1

    return v0
.end method

.method public greylist getCarrierIdListVersion()I
    .registers 3

    .line 15027
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15028
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 15029
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getCarrierIdListVersion(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 15033
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_11

    .line 15031
    :catch_10
    move-exception v0

    .line 15034
    :goto_11
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;
    .registers 9
    .param p1, "keyType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4808
    const-string v0, "IMSI error: key is required but not found"

    const-string v1, "TelephonyManager"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    .line 4809
    .local v3, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v3, :cond_11

    .line 4810
    const-string v0, "IMSI error: Subscriber Info is null"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4811
    return-object v2

    .line 4813
    :cond_11
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v4

    .line 4814
    .local v4, "subId":I
    const/4 v5, 0x1

    if-eq p1, v5, :cond_28

    const/4 v5, 0x2

    if-ne p1, v5, :cond_20

    goto :goto_28

    .line 4815
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "IMSI error: Invalid key type"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "keyType":I
    throw v0

    .line 4817
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "keyType":I
    :cond_28
    :goto_28
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 4818
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4817
    invoke-interface {v3, v4, p1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCarrierInfoForImsiEncryption(IILjava/lang/String;)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v5

    .line 4819
    .local v5, "imsiEncryptionInfo":Landroid/telephony/ImsiEncryptionInfo;
    if-nez v5, :cond_44

    invoke-direct {p0, v4, p1}, Landroid/telephony/TelephonyManager;->isImsiEncryptionRequired(II)Z

    move-result v6

    if-nez v6, :cond_3b

    goto :goto_44

    .line 4820
    :cond_3b
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4821
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "keyType":I
    throw v6
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_44} :catch_5d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_44} :catch_45

    .line 4823
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "keyType":I
    :cond_44
    :goto_44
    return-object v5

    .line 4826
    .end local v3    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .end local v4    # "subId":I
    .end local v5    # "imsiEncryptionInfo":Landroid/telephony/ImsiEncryptionInfo;
    :catch_45
    move-exception v0

    .line 4828
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCarrierInfoForImsiEncryption NullPointerException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 4824
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_5d
    move-exception v0

    .line 4825
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCarrierInfoForImsiEncryption RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4829
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 4830
    :goto_75
    return-object v2
.end method

.method public whitelist getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10851
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10864
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10865
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 10866
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return-object v0

    .line 10865
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1b

    .line 10869
    :catch_e
    move-exception v1

    .line 10870
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "getCarrierPackageNamesForIntentAndPhone NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 10867
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v1

    .line 10868
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "getCarrierPackageNamesForIntentAndPhone RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10871
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1b
    nop

    .line 10872
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCarrierPrivilegeStatus(I)I
    .registers 5
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16434
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16435
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 16436
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatusForUid(II)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 16440
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 16438
    :catch_10
    move-exception v0

    .line 16439
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getCarrierPrivilegeStatus RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16441
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCarrierPrivilegedPackagesForAllActiveSubscriptions()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10966
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10967
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 10968
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPackagesWithCarrierPrivilegesForAllPhones()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return-object v0

    .line 10967
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1b

    .line 10973
    :catch_e
    move-exception v1

    .line 10974
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "getCarrierPrivilegedPackagesForAllActiveSubscriptions NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 10970
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v1

    .line 10971
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "getCarrierPrivilegedPackagesForAllActiveSubscriptions RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10975
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1b
    nop

    .line 10976
    :goto_1c
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCarrierRestrictionRules()Landroid/telephony/CarrierRestrictionRules;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14259
    const-string v0, "Error calling ITelephony#getAllowedCarriers"

    const-string v1, "TelephonyManager"

    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 14260
    .local v2, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_f

    .line 14261
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAllowedCarriers()Landroid/telephony/CarrierRestrictionRules;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    return-object v0

    .line 14260
    .end local v2    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_19

    .line 14265
    :catch_10
    move-exception v2

    .line 14266
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 14263
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v2

    .line 14264
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14267
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_19
    nop

    .line 14268
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCarrierRestrictionStatus(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 14330
    .local p2, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14331
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14333
    new-instance v0, Landroid/telephony/TelephonyManager$10;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/TelephonyManager$10;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 14341
    .local v0, "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    :try_start_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 14342
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_18

    .line 14343
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephony;->getCarrierRestrictionStatus(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_1a

    .line 14348
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_18
    nop

    .line 14349
    return-void

    .line 14345
    :catch_1a
    move-exception v1

    .line 14346
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierRestrictionStatus: RemoteException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14347
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getCarrierServicePackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10893
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;
    .registers 5
    .param p1, "logicalSlotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10914
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10915
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 10916
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return-object v0

    .line 10915
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1b

    .line 10920
    :catch_e
    move-exception v1

    .line 10921
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "getCarrierServicePackageNameForLogicalSlot NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 10918
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v1

    .line 10919
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "getCarrierServicePackageNameForLogicalSlot RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10922
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1b
    nop

    .line 10923
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCdmaEnhancedRoamingIndicatorDisplayNumber()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6946
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    .line 6947
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex(I)I

    move-result v0

    return v0
.end method

.method public greylist getCdmaEriIconIndex(I)I
    .registers 6
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6959
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    .line 6961
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6962
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_f

    .line 6963
    return v1

    .line 6964
    :cond_f
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6965
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 6964
    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_1b} :catch_1c

    return v1

    .line 6969
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1c
    move-exception v0

    .line 6970
    .local v0, "ex":Ljava/lang/NullPointerException;
    return v1

    .line 6966
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1e
    move-exception v0

    .line 6968
    .local v0, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public greylist getCdmaEriIconMode(I)I
    .registers 6
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6986
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    .line 6988
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6989
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_f

    .line 6990
    return v1

    .line 6991
    :cond_f
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6992
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 6991
    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_1b} :catch_1c

    return v1

    .line 6996
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1c
    move-exception v0

    .line 6997
    .local v0, "ex":Ljava/lang/NullPointerException;
    return v1

    .line 6993
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1e
    move-exception v0

    .line 6995
    .local v0, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public greylist-max-o getCdmaEriText()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7010
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 7011
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getCdmaEriText(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7024
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 7026
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7027
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_f

    .line 7028
    return-object v1

    .line 7029
    :cond_f
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7030
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 7029
    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriTextForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_1b} :catch_1c

    return-object v1

    .line 7034
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1c
    move-exception v0

    .line 7035
    .local v0, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 7031
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1e
    move-exception v0

    .line 7033
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getCdmaMdn()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10731
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 10732
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCdmaMdn(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10747
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 10749
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10750
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_f

    .line 10751
    return-object v1

    .line 10752
    :cond_f
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_13} :catch_14

    return-object v1

    .line 10755
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_14
    move-exception v0

    .line 10756
    .local v0, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 10753
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v0

    .line 10754
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getCdmaMin()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10772
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 10773
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCdmaMin(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10788
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 10790
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10791
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_f

    .line 10792
    return-object v1

    .line 10793
    :cond_f
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_13} :catch_14

    return-object v1

    .line 10796
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_14
    move-exception v0

    .line 10797
    .local v0, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 10794
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v0

    .line 10795
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getCdmaPrlVersion()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13988
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 13989
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaPrlVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCdmaPrlVersion(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14004
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 14006
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14007
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 14008
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaPrlVersion(I)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_14

    return-object v1

    .line 14012
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_13
    goto :goto_1c

    .line 14010
    :catch_14
    move-exception v0

    .line 14011
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getCdmaPrlVersion"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14013
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-object v1
.end method

.method public whitelist getCdmaRoamingMode()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12082
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    .line 12083
    :cond_8
    const/4 v0, -0x1

    .line 12085
    .local v0, "mode":I
    :try_start_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12086
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_19

    .line 12087
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaRoamingMode(I)I

    move-result v2

    move v0, v2

    .line 12094
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_2d

    .line 12089
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_19
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mode":I
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v2
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_22} :catch_22

    .line 12091
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "mode":I
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_22
    move-exception v1

    .line 12092
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getCdmaRoamingMode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12093
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 12095
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2d
    return v0
.end method

.method public whitelist getCdmaSubscriptionMode()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12216
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    .line 12217
    :cond_8
    const/4 v0, 0x0

    .line 12219
    .local v0, "mode":I
    :try_start_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12220
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_19

    .line 12221
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaSubscriptionMode(I)I

    move-result v2

    move v0, v2

    .line 12228
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_2d

    .line 12223
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_19
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mode":I
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v2
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_22} :catch_22

    .line 12225
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "mode":I
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_22
    move-exception v1

    .line 12226
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getCdmaSubscriptionMode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12227
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 12229
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2d
    return v0
.end method

.method public whitelist getCellBroadcastIdRanges()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation

    .line 19534
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19535
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 19536
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getCellBroadcastIdRanges(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 19538
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 19540
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_18
    move-exception v0

    .line 19541
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19543
    .end local v0    # "ex":Landroid/os/RemoteException;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getCellLocation()Landroid/telephony/CellLocation;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2652
    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2653
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_f

    .line 2654
    const-string v3, "getCellLocation returning null because telephony is null"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    return-object v1

    .line 2658
    :cond_f
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2659
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 2658
    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v3

    .line 2660
    .local v3, "cellIdentity":Landroid/telephony/CellIdentity;
    invoke-virtual {v3}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    .line 2661
    .local v4, "cl":Landroid/telephony/CellLocation;
    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2c

    goto :goto_2d

    .line 2667
    :cond_2c
    return-object v4

    .line 2662
    :cond_2d
    :goto_2d
    const-string v5, "getCellLocation returning null because CellLocation is empty or phone type doesn\'t match CellLocation type"

    invoke-static {v0, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_32} :catch_33

    .line 2664
    return-object v1

    .line 2668
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v3    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local v4    # "cl":Landroid/telephony/CellLocation;
    :catch_33
    move-exception v2

    .line 2669
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCellLocation returning null due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    return-object v1
.end method

.method public blacklist getCertsFromCarrierPrivilegeAccessRules()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13888
    const/4 v0, 0x0

    .line 13890
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 13891
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_10

    .line 13892
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getCertsFromCarrierPrivilegeAccessRules(I)Ljava/util/List;

    move-result-object v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move-object v0, v2

    .line 13896
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    goto :goto_12

    .line 13894
    :catch_11
    move-exception v1

    .line 13897
    :goto_12
    if-nez v0, :cond_19

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1a

    :cond_19
    move-object v1, v0

    :goto_1a
    return-object v1
.end method

.method public greylist-max-o getClientRequestStats(I)Ljava/util/List;
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .line 14780
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14781
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 14782
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->getClientRequestStats(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return-object v1

    .line 14787
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_13
    goto :goto_1c

    .line 14785
    :catch_14
    move-exception v0

    .line 14786
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getClientRequestStats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14789
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentPhoneType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2747
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public whitelist getCurrentPhoneType(I)I
    .registers 4
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2767
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 2770
    const/4 v0, 0x0

    .local v0, "phoneId":I
    goto :goto_9

    .line 2772
    .end local v0    # "phoneId":I
    :cond_5
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2775
    .restart local v0    # "phoneId":I
    :goto_9
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v1

    return v1
.end method

.method public greylist-max-o getCurrentPhoneTypeForSlot(I)I
    .registers 4
    .param p1, "slotIndex"    # I

    .line 2785
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2786
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 2787
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSlot(I)I

    move-result v1

    return v1

    .line 2790
    :cond_b
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_f} :catch_10

    return v1

    .line 2796
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_10
    move-exception v0

    .line 2799
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v1

    return v1

    .line 2792
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v0

    .line 2795
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v1

    return v1
.end method

.method public whitelist getDataActivationState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6247
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataActivationState(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getDataActivationState(I)I
    .registers 4
    .param p1, "subId"    # I

    .line 6270
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6271
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 6272
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->getDataActivationState(ILjava/lang/String;)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 6271
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_13

    .line 6274
    :catch_10
    move-exception v0

    goto :goto_14

    .line 6273
    :catch_12
    move-exception v0

    .line 6275
    :goto_13
    nop

    .line 6276
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDataActivity()I
    .registers 4

    .line 6660
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6661
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 6662
    return v0

    .line 6663
    :cond_8
    nop

    .line 6664
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v2

    .line 6663
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivityForSubId(I)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_15} :catch_16

    return v0

    .line 6668
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_16
    move-exception v1

    .line 6670
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 6665
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_18
    move-exception v1

    .line 6667
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getDataEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11974
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist getDataEnabled(I)Z
    .registers 6
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12321
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;->isDataEnabledForReason(II)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_5} :catch_6

    return v0

    .line 12322
    :catch_6
    move-exception v1

    .line 12323
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling isDataEnabledForReason e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12325
    .end local v1    # "e":Ljava/lang/RuntimeException;
    return v0
.end method

.method public whitelist getDataNetworkType()I
    .registers 2

    .line 3354
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getDataNetworkType(I)I
    .registers 7
    .param p1, "subId"    # I

    .line 3369
    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3370
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_16

    .line 3371
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3372
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 3371
    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3374
    :cond_16
    const-string v3, "getDataNetworkType: ITelephony interface is not up yet"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_1b} :catch_1c

    .line 3375
    return v1

    .line 3377
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1c
    move-exception v2

    .line 3380
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    return v1
.end method

.method public whitelist getDataState()I
    .registers 6

    .line 6736
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6737
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 6738
    return v0

    .line 6739
    :cond_8
    nop

    .line 6740
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v2

    .line 6739
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getDataStateForSubId(I)I

    move-result v2

    .line 6741
    .local v2, "state":I
    const/4 v3, 0x4

    if-ne v2, v3, :cond_23

    .line 6742
    const-wide/32 v3, 0x8da744c

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1f} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1f} :catch_24

    if-nez v0, :cond_23

    .line 6743
    const/4 v0, 0x2

    return v0

    .line 6746
    :cond_23
    return v2

    .line 6750
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "state":I
    :catch_24
    move-exception v1

    .line 6751
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 6747
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_26
    move-exception v1

    .line 6749
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getDefaultRespondViaMessageApplication()Landroid/content/ComponentName;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13039
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13040
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_10

    .line 13041
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getDefaultRespondViaMessageApplication(IZ)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return-object v1

    .line 13045
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    goto :goto_2a

    .line 13043
    :catch_11
    move-exception v0

    .line 13044
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in getDefaultRespondViaMessageApplication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13046
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDeviceId()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2266
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2267
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 2268
    return-object v0

    .line 2269
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2270
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2269
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object v0

    .line 2273
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_19
    move-exception v1

    .line 2274
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 2271
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v1

    .line 2272
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getDeviceId(I)Ljava/lang/String;
    .registers 6
    .param p1, "slotIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2320
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2321
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 2322
    return-object v0

    .line 2323
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2324
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2323
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceIdForPhone(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object v0

    .line 2327
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_19
    move-exception v1

    .line 2328
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 2325
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v1

    .line 2326
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public blacklist getDevicePolicyOverrideApns(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 16457
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 16458
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_1a

    .line 16459
    :try_start_10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_39

    .line 16468
    if-eqz v1, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 16459
    :cond_19
    return-object v0

    .line 16461
    :cond_1a
    :try_start_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16462
    .local v0, "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 16463
    :goto_23
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 16464
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object v2

    .line 16465
    .local v2, "apn":Landroid/telephony/data/ApnSetting;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_39

    .line 16466
    nop

    .end local v2    # "apn":Landroid/telephony/data/ApnSetting;
    goto :goto_23

    .line 16467
    :cond_32
    nop

    .line 16468
    if-eqz v1, :cond_38

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 16467
    :cond_38
    return-object v0

    .line 16457
    .end local v0    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    :catchall_39
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_45

    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    throw v2
.end method

.method public whitelist getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 2

    .line 2193
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceSoftwareVersion(I)Ljava/lang/String;
    .registers 6
    .param p1, "slotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2214
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2215
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2218
    :cond_8
    :try_start_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2219
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2218
    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_14} :catch_15

    return-object v1

    .line 2222
    :catch_15
    move-exception v2

    .line 2223
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 2220
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v2

    .line 2221
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getEmergencyAssistancePackageName()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15474
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isEmergencyAssistanceEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 15478
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 15479
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->getEmergencyRoleHolder(I)Ljava/lang/String;

    move-result-object v0

    .line 15478
    return-object v0

    .line 15475
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "isEmergencyAssistanceEnabled() is false or device not voice capable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getEmergencyCallbackMode()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14808
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getEmergencyCallbackMode(I)Z
    .registers 6
    .param p1, "subId"    # I

    .line 14819
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 14820
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 14821
    return v0

    .line 14823
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getEmergencyCallbackMode(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    return v0

    .line 14824
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v1

    .line 14825
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getEmergencyCallbackMode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14827
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getEmergencyNumberDbVersion()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15731
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15732
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 15733
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getEmergencyNumberDbVersion(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 15738
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_1b

    .line 15735
    :catch_10
    move-exception v0

    .line 15736
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getEmergencyNumberDbVersion RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15737
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15739
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1b
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getEmergencyNumberList()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation

    .line 15515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15517
    .local v0, "emergencyNumberList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 15518
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1c

    .line 15519
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 15520
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 15519
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 15522
    :cond_1c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "emergencyNumberList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_25} :catch_25

    .line 15524
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "emergencyNumberList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_25
    move-exception v1

    .line 15525
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getEmergencyNumberList RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15526
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15528
    .end local v1    # "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getEmergencyNumberList(I)Ljava/util/Map;
    .registers 6
    .param p1, "categories"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation

    .line 15578
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15580
    .local v0, "emergencyNumberListForCategories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 15581
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_23

    .line 15582
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 15583
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 15584
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 15583
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 15585
    .local v2, "emergencyNumberList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    nop

    .line 15586
    invoke-virtual {p0, v2, p1}, Landroid/telephony/TelephonyManager;->filterEmergencyNumbersByCategories(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v3

    move-object v0, v3

    .line 15587
    .end local v2    # "emergencyNumberList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    nop

    .line 15593
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_37

    .line 15588
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "emergencyNumberListForCategories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "categories":I
    throw v2
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2c} :catch_2c

    .line 15590
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "emergencyNumberListForCategories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "categories":I
    :catch_2c
    move-exception v1

    .line 15591
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getEmergencyNumberList with Categories RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15592
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15594
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_37
    return-object v0
.end method

.method public whitelist getEquivalentHomePlmns()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17737
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17738
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 17739
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 17740
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 17739
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getEquivalentHomePlmns(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 17742
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_22

    .line 17744
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_22
    move-exception v0

    .line 17745
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getEquivalentHomePlmns RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17748
    .end local v0    # "ex":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getEsn()Ljava/lang/String;
    .registers 2

    .line 13947
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getEsn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getEsn(I)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I

    .line 13961
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13962
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 13963
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getEsn(I)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 13967
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 13965
    :catch_c
    move-exception v0

    .line 13966
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getEsn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13968
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getForbiddenPlmns()[Ljava/lang/String;
    .registers 3

    .line 9078
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getForbiddenPlmns(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getForbiddenPlmns(II)[Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I
    .param p2, "appType"    # I

    .line 9093
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9094
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 9095
    return-object v0

    .line 9096
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 9097
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 9096
    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getForbiddenPlmns(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_16} :catch_17

    return-object v0

    .line 9100
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_17
    move-exception v1

    .line 9102
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 9098
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_19
    move-exception v1

    .line 9099
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getGroupIdLevel1()Ljava/lang/String;
    .registers 6

    .line 5306
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5307
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 5308
    return-object v0

    .line 5309
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5310
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 5309
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1c} :catch_1d

    return-object v0

    .line 5313
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_1d
    move-exception v1

    .line 5315
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 5311
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1f
    move-exception v1

    .line 5312
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist getGroupIdLevel1(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 5330
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5331
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 5332
    return-object v0

    .line 5333
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5334
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5333
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object v0

    .line 5337
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_19
    move-exception v1

    .line 5339
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 5335
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v1

    .line 5336
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getGroupIdLevel2()Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5359
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5360
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 5361
    return-object v0

    .line 5363
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5364
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 5363
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel2ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1c} :catch_1d

    return-object v0

    .line 5367
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_1d
    move-exception v1

    .line 5369
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 5365
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1f
    move-exception v1

    .line 5366
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public blacklist getHalVersion(I)Landroid/util/Pair;
    .registers 7
    .param p1, "halService"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 16399
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16400
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_21

    .line 16401
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getHalVersion(I)I

    move-result v1

    .line 16402
    .local v1, "version":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    .line 16403
    new-instance v2, Landroid/util/Pair;

    div-int/lit8 v3, v1, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    rem-int/lit8 v4, v1, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 16405
    .end local v1    # "version":I
    :cond_1f
    nop

    .line 16411
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    goto :goto_35

    .line 16406
    .restart local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "halService":I
    throw v1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_2a

    .line 16408
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "halService":I
    :catch_2a
    move-exception v0

    .line 16409
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getHalVersion() RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16410
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 16412
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_35
    sget-object v0, Landroid/telephony/TelephonyManager;->HAL_VERSION_UNKNOWN:Landroid/util/Pair;

    return-object v0
.end method

.method public greylist getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "authType"    # I
    .param p4, "data"    # Ljava/lang/String;

    .line 9049
    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    move-object v2, v0

    .line 9050
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_9

    .line 9051
    return-object v1

    .line 9052
    :cond_9
    nop

    .line 9053
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_12} :catch_21

    .line 9052
    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "subId":I
    .end local p2    # "appType":I
    .end local p3    # "authType":I
    .end local p4    # "data":Ljava/lang/String;
    .local v3, "subId":I
    .local v4, "appType":I
    .local v5, "authType":I
    .local v6, "data":Ljava/lang/String;
    :try_start_16
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSimChallengeResponse(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1a} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_1a} :catch_1b

    return-object p1

    .line 9056
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_1b
    move-exception v0

    move-object p1, v0

    goto :goto_27

    .line 9054
    :catch_1e
    move-exception v0

    move-object p1, v0

    goto :goto_2e

    .line 9056
    .end local v3    # "subId":I
    .end local v4    # "appType":I
    .end local v5    # "authType":I
    .end local v6    # "data":Ljava/lang/String;
    .restart local p1    # "subId":I
    .restart local p2    # "appType":I
    .restart local p3    # "authType":I
    .restart local p4    # "data":Ljava/lang/String;
    :catch_21
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object p1, v0

    .line 9058
    .end local p2    # "appType":I
    .end local p3    # "authType":I
    .end local p4    # "data":Ljava/lang/String;
    .restart local v3    # "subId":I
    .restart local v4    # "appType":I
    .restart local v5    # "authType":I
    .restart local v6    # "data":Ljava/lang/String;
    .local p1, "ex":Ljava/lang/NullPointerException;
    :goto_27
    return-object v1

    .line 9054
    .end local v3    # "subId":I
    .end local v4    # "appType":I
    .end local v5    # "authType":I
    .end local v6    # "data":Ljava/lang/String;
    .local p1, "subId":I
    .restart local p2    # "appType":I
    .restart local p3    # "authType":I
    .restart local p4    # "data":Ljava/lang/String;
    :catch_28
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object p1, v0

    .line 9055
    .end local p2    # "appType":I
    .end local p3    # "authType":I
    .end local p4    # "data":Ljava/lang/String;
    .restart local v3    # "subId":I
    .restart local v4    # "appType":I
    .restart local v5    # "authType":I
    .restart local v6    # "data":Ljava/lang/String;
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_2e
    return-object v1
.end method

.method public whitelist getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "appType"    # I
    .param p2, "authType"    # I
    .param p3, "data"    # Ljava/lang/String;

    .line 9016
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImei()Ljava/lang/String;
    .registers 2

    .line 2342
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImei(I)Ljava/lang/String;
    .registers 6
    .param p1, "slotIndex"    # I

    .line 2383
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2384
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2387
    :cond_8
    :try_start_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getImeiForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_14} :catch_15

    return-object v1

    .line 2390
    :catch_15
    move-exception v2

    .line 2391
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 2388
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v2

    .line 2389
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-r getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "feature"    # I

    .line 9334
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9335
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 9336
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 9340
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_29

    .line 9338
    :catch_c
    move-exception v0

    .line 9339
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsRegistration, RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9341
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getImsPcscfAddresses()Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8920
    const-string v0, "getImsPcscfAddresses Exception = "

    const-string v1, "TelephonyManager"

    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 8921
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-eqz v2, :cond_17

    .line 8924
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getImsPcscfAddresses(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 8922
    :cond_17
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "P-CSCF error: Subscriber Info is null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v3
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1f} :catch_38
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_1f} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_1f

    .line 8927
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_1f
    move-exception v2

    .line 8928
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8929
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_4e

    .line 8925
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_38
    move-exception v2

    .line 8926
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8930
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    nop

    .line 8931
    :goto_4e
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getImsPrivateUserIdentity()Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6420
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 6421
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-eqz v1, :cond_19

    .line 6425
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6426
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 6425
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getImsPrivateUserIdentity(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6422
    :cond_19
    const-string v2, "getImsPrivateUserIdentity(): IPhoneSubInfo instance is NULL"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6423
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IMPI error: Subscriber Info is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v2
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_26} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_26} :catch_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_26} :catch_26

    .line 6427
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_26
    move-exception v1

    .line 6428
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsPrivateUserIdentity() Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6429
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getImsPublicUserIdentities()Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 6517
    const-string v0, "getImsPublicUserIdentities Exception = "

    const-string v1, "TelephonyManager"

    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 6518
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-eqz v2, :cond_17

    .line 6521
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getImsPublicUserIdentities(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6519
    :cond_17
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IMPU error: Subscriber Info is null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v3
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1f} :catch_38
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_1f} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_1f

    .line 6524
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_1f
    move-exception v2

    .line 6525
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6526
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_4e

    .line 6522
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_38
    move-exception v2

    .line 6523
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6527
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    nop

    .line 6528
    :goto_4e
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getImsRegTechnologyForMmTel()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12609
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getImsRegTechnologyForMmTel(I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 12610
    :catch_d
    move-exception v0

    .line 12611
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public greylist-max-r getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "feature"    # I

    .line 9314
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9315
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 9316
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 9320
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_29

    .line 9318
    :catch_c
    move-exception v0

    .line 9319
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsRegistration, RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9321
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getIsimDomain()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6451
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 6452
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 6453
    return-object v0

    .line 6455
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    .line 6458
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_11
    move-exception v1

    .line 6460
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 6456
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_13
    move-exception v1

    .line 6457
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist getIsimImpi()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6388
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 6389
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 6390
    return-object v0

    .line 6392
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    .line 6395
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_11
    move-exception v1

    .line 6397
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 6393
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_13
    move-exception v1

    .line 6394
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist getIsimImpu()[Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6480
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 6481
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 6482
    return-object v0

    .line 6484
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    .line 6487
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_11
    move-exception v1

    .line 6489
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 6485
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_13
    move-exception v1

    .line 6486
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getIsimIst()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8862
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 8863
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 8864
    return-object v0

    .line 8866
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    .line 8869
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_11
    move-exception v1

    .line 8871
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 8867
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_13
    move-exception v1

    .line 8868
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist getIsimPcscf()[Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8887
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 8888
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 8889
    return-object v0

    .line 8891
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    .line 8894
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_11
    move-exception v1

    .line 8896
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 8892
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_13
    move-exception v1

    .line 8893
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public blacklist getLastKnownCellIdentity()Landroid/telephony/CellIdentity;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19021
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19022
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_17

    .line 19025
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 19026
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 19025
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLastKnownCellIdentity(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v1

    return-object v1

    .line 19023
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_20

    .line 19027
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_20
    move-exception v0

    .line 19028
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 19030
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getLine1AlphaTag()Ljava/lang/String;
    .registers 2

    .line 5516
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLine1AlphaTag(I)Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I

    .line 5530
    const/4 v0, 0x0

    .line 5532
    .local v0, "alphaTag":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5533
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_15

    .line 5534
    nop

    .line 5535
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5534
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLine1AlphaTagForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_16

    move-object v0, v2

    .line 5538
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_15
    :goto_15
    goto :goto_1a

    .line 5537
    :catch_16
    move-exception v1

    goto :goto_1a

    .line 5536
    :catch_18
    move-exception v1

    goto :goto_15

    .line 5539
    :goto_1a
    if-eqz v0, :cond_1d

    .line 5540
    return-object v0

    .line 5543
    :cond_1d
    const/4 v1, 0x0

    :try_start_1e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 5544
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_25

    .line 5545
    return-object v1

    .line 5546
    :cond_25
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5547
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 5546
    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_31} :catch_34
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_31} :catch_32

    return-object v1

    .line 5550
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_32
    move-exception v2

    .line 5552
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 5548
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_34
    move-exception v2

    .line 5549
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getLine1Number()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5401
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLine1Number(I)Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I

    .line 5429
    const/4 v0, 0x0

    .line 5431
    .local v0, "number":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5432
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_18

    .line 5433
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5434
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5433
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_19

    move-object v0, v2

    .line 5437
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_18
    :goto_18
    goto :goto_1d

    .line 5436
    :catch_19
    move-exception v1

    goto :goto_1d

    .line 5435
    :catch_1b
    move-exception v1

    goto :goto_18

    .line 5438
    :goto_1d
    if-eqz v0, :cond_20

    .line 5439
    return-object v0

    .line 5442
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 5443
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_28

    .line 5444
    return-object v1

    .line 5445
    :cond_28
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5446
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 5445
    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_38} :catch_3b
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_38} :catch_39

    return-object v1

    .line 5449
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_39
    move-exception v2

    .line 5451
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 5447
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_3b
    move-exception v2

    .line 5448
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getLogicalToPhysicalSlotMapping()Ljava/util/Map;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4659
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4661
    .local v0, "slotMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4662
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_3a

    .line 4663
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 4664
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4663
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getSlotsMapping(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 4665
    .local v2, "simSlotsMapping":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccSlotMapping;

    .line 4666
    .local v4, "slotMap":Landroid/telephony/UiccSlotMapping;
    invoke-virtual {v4}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_38} :catch_3b

    .line 4667
    nop

    .end local v4    # "slotMap":Landroid/telephony/UiccSlotMapping;
    goto :goto_19

    .line 4671
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "simSlotsMapping":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    :cond_3a
    goto :goto_44

    .line 4669
    :catch_3b
    move-exception v1

    .line 4670
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "getSlotsMapping RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4672
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_44
    return-object v0
.end method

.method public greylist getLteOnCdmaMode(I)I
    .registers 6
    .param p1, "subId"    # I

    .line 4377
    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4378
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 4379
    return v0

    .line 4380
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4381
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 4380
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return v0

    .line 4385
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    .line 4387
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 4382
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 4384
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getManualNetworkSelectionPlmn()Ljava/lang/String;
    .registers 4

    .line 10100
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10101
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isManualNetworkSelectionAllowed()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 10102
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getManualNetworkSelectionPlmn(I)Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_16

    return-object v1

    .line 10106
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_15
    goto :goto_1e

    .line 10104
    :catch_16
    move-exception v0

    .line 10105
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getManualNetworkSelectionPlmn RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10107
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1e
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getManufacturerCode()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2544
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 2545
    :cond_8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getManufacturerCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getManufacturerCode(I)Ljava/lang/String;
    .registers 5
    .param p1, "slotIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2563
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 2564
    :cond_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2565
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_f

    return-object v1

    .line 2568
    :cond_f
    :try_start_f
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getManufacturerCodeForSlot(I)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_13} :catch_14

    return-object v1

    .line 2571
    :catch_14
    move-exception v2

    .line 2572
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 2569
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v2

    .line 2570
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getMaxNumberOfSimultaneouslyActiveSims()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 728
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_10

    .line 736
    return v1

    .line 734
    :pswitch_d
    const/4 v0, 0x2

    return v0

    .line 732
    :pswitch_f
    return v1

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public whitelist getMeid()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2466
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 2467
    :cond_8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMeid(I)Ljava/lang/String;
    .registers 7
    .param p1, "slotIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2512
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 2513
    :cond_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2514
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_f

    return-object v1

    .line 2517
    :cond_f
    :try_start_f
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2518
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2517
    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getMeidForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2519
    .local v2, "meid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2520
    const-string v3, "TelephonyManager"

    const-string v4, "getMeid: return null because MEID is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_28} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_28} :catch_2a

    .line 2521
    return-object v1

    .line 2523
    :cond_29
    return-object v2

    .line 2526
    .end local v2    # "meid":Ljava/lang/String;
    :catch_2a
    move-exception v2

    .line 2527
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 2524
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_2c
    move-exception v2

    .line 2525
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getMergedImsisFromGroup()[Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5601
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5602
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 5603
    nop

    .line 5604
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getMergedImsisFromGroup(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_17

    .line 5605
    .local v1, "mergedImsisFromGroup":[Ljava/lang/String;
    if-eqz v1, :cond_16

    .line 5606
    return-object v1

    .line 5610
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "mergedImsisFromGroup":[Ljava/lang/String;
    :cond_16
    goto :goto_18

    .line 5609
    :catch_17
    move-exception v0

    .line 5611
    :goto_18
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public greylist getMergedSubscriberIds()[Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5574
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5575
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_17

    .line 5576
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5577
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5576
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getMergedSubscriberIds(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_16} :catch_18

    return-object v1

    .line 5575
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_1b

    .line 5579
    :catch_18
    move-exception v0

    goto :goto_1c

    .line 5578
    :catch_1a
    move-exception v0

    .line 5580
    :goto_1b
    nop

    .line 5581
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMmsUAProfUrl()Ljava/lang/String;
    .registers 3

    .line 7465
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7466
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 7467
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getMmsUAProfUrl(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 7466
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_13

    .line 7470
    :catch_10
    move-exception v0

    goto :goto_14

    .line 7469
    :catch_12
    move-exception v0

    .line 7471
    :goto_13
    nop

    .line 7472
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMmsUserAgent()Ljava/lang/String;
    .registers 3

    .line 7446
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7447
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 7448
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getMmsUserAgent(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 7447
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_13

    .line 7451
    :catch_10
    move-exception v0

    goto :goto_14

    .line 7450
    :catch_12
    move-exception v0

    .line 7452
    :goto_13
    nop

    .line 7453
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMobileProvisioningUrl()Ljava/lang/String;
    .registers 4

    .line 11910
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11911
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 11912
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 11914
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 11916
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_14
    move-exception v0

    .line 11917
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getMobileProvisioningUrl RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11919
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getMsisdn()Ljava/lang/String;
    .registers 2

    .line 5635
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getMsisdn(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 5662
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5663
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 5664
    return-object v0

    .line 5665
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdnForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v0

    .line 5668
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_15
    move-exception v1

    .line 5670
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 5666
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 5667
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;
    .registers 3

    .line 649
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->multi_sim_config()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 650
    .local v0, "mSimConfig":Ljava/lang/String;
    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 651
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    .line 652
    :cond_17
    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 653
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    .line 654
    :cond_22
    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 655
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    .line 657
    :cond_2e
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1
.end method

.method public whitelist getNai()Ljava/lang/String;
    .registers 2

    .line 2612
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getNaiBySubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getNeighboringCellInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2690
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2691
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 2692
    return-object v0

    .line 2693
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2694
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2693
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object v0

    .line 2697
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_19
    move-exception v1

    .line 2698
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 2695
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v1

    .line 2696
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    .line 3070
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkCountryIso(I)Ljava/lang/String;
    .registers 6
    .param p1, "slotIndex"    # I

    .line 3097
    const v0, 0x7fffffff

    const-string v1, ""

    if-eq p1, v0, :cond_28

    .line 3098
    :try_start_7
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_28

    .line 3099
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid slot index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotIndex":I
    throw v0

    .line 3102
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotIndex":I
    :cond_28
    :goto_28
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3103
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_2f

    return-object v1

    .line 3104
    :cond_2f
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_33} :catch_34

    return-object v1

    .line 3105
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_34
    move-exception v0

    .line 3106
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-q getNetworkCountryIsoForPhone(I)Ljava/lang/String;
    .registers 3
    .param p1, "phoneId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3118
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperator()Ljava/lang/String;
    .registers 2

    .line 2949
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getNetworkOperator(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 2965
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2966
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getNetworkOperatorForPhone(I)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I

    .line 2982
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_numeric()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    .line 2921
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getNetworkOperatorName(I)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I

    .line 2936
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2937
    .local v0, "phoneId":I
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_alpha()Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public whitelist getNetworkSelectionMode()I
    .registers 5

    .line 10070
    const/4 v0, 0x0

    .line 10072
    .local v0, "mode":I
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10073
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_10

    .line 10074
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getNetworkSelectionMode(I)I

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v2

    .line 10078
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    goto :goto_19

    .line 10076
    :catch_11
    move-exception v1

    .line 10077
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getNetworkSelectionMode RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10079
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_19
    return v0
.end method

.method public whitelist getNetworkSlicingConfiguration(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/data/NetworkSlicingConfig;",
            "Landroid/telephony/TelephonyManager$NetworkSlicingException;",
            ">;)V"
        }
    .end annotation

    .line 18657
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telephony/data/NetworkSlicingConfig;Landroid/telephony/TelephonyManager$NetworkSlicingException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18658
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18661
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18662
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 18665
    new-instance v1, Landroid/telephony/TelephonyManager$19;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/TelephonyManager$19;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSlicingConfig(Landroid/os/ResultReceiver;)V

    .line 18685
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_23

    .line 18663
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telephony/data/NetworkSlicingConfig;Landroid/telephony/TelephonyManager$NetworkSlicingException;>;"
    throw v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1f} :catch_1f

    .line 18683
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telephony/data/NetworkSlicingConfig;Landroid/telephony/TelephonyManager$NetworkSlicingException;>;"
    :catch_1f
    move-exception v0

    .line 18684
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 18686
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_23
    return-void
.end method

.method public whitelist getNetworkSpecifier()Ljava/lang/String;
    .registers 2

    .line 2998
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3257
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getNetworkType(I)I
    .registers 6
    .param p1, "subId"    # I

    .line 3291
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3292
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 3293
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3294
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 3293
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_13} :catch_15

    return v0

    .line 3297
    :cond_14
    return v0

    .line 3302
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    .line 3304
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 3299
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 3301
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public greylist getNetworkTypeName()Ljava/lang/String;
    .registers 2

    .line 3439
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNumberOfModemsWithSimultaneousDataConnections()I
    .registers 5

    .line 15044
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15045
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_18

    .line 15046
    nop

    .line 15047
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 15046
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNumberOfModemsWithSimultaneousDataConnections(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    return v1

    .line 15051
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_18
    goto :goto_1a

    .line 15049
    :catch_19
    move-exception v0

    .line 15052
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-p getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 12956
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 12957
    nop

    .line 12958
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->otasp_num_schema()Ljava/util/List;

    move-result-object v0

    .line 12957
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 12961
    :cond_12
    return-object p2
.end method

.method public blacklist getPackagesWithCarrierPrivileges()Ljava/util/Set;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10939
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 10941
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 10942
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_26

    .line 10943
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getPackagesWithCarrierPrivileges(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_18} :catch_19

    goto :goto_26

    .line 10947
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_19
    move-exception v2

    .line 10948
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v3, "getPackagesWithCarrierPrivileges NPE"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 10945
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_20
    move-exception v2

    .line 10946
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "getPackagesWithCarrierPrivileges RemoteException"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10949
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_26
    :goto_26
    nop

    .line 10950
    :goto_27
    return-object v1
.end method

.method public whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .line 13176
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;
    .registers 5
    .param p1, "subscriptionId"    # I

    .line 13188
    const/4 v0, 0x0

    .line 13190
    .local v0, "returnValue":Landroid/telecom/PhoneAccountHandle;
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 13191
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c

    .line 13192
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v2

    .line 13195
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_c
    goto :goto_e

    .line 13194
    :catch_d
    move-exception v1

    .line 13197
    :goto_e
    return-object v0
.end method

.method public whitelist getPhoneCapability()Landroid/telephony/PhoneCapability;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18472
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18473
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 18474
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object v1

    return-object v1

    .line 18476
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 18478
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_14
    move-exception v0

    .line 18479
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 18481
    .end local v0    # "ex":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_22

    .line 18482
    sget-object v0, Landroid/telephony/PhoneCapability;->DEFAULT_DSDS_CAPABILITY:Landroid/telephony/PhoneCapability;

    return-object v0

    .line 18484
    :cond_22
    sget-object v0, Landroid/telephony/PhoneCapability;->DEFAULT_SSSS_CAPABILITY:Landroid/telephony/PhoneCapability;

    return-object v0
.end method

.method public whitelist getPhoneCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 675
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    return v0
.end method

.method public whitelist getPhoneType()I
    .registers 2

    .line 2817
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDeviceVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2818
    const/4 v0, 0x0

    return v0

    .line 2820
    :cond_e
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    return v0
.end method

.method public greylist getPreferredNetworkType(I)I
    .registers 4
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9669
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesBitmask()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v0

    return v0
.end method

.method public whitelist getPreferredNetworkTypeBitmask()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9694
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesBitmask()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getPreferredOpportunisticDataSubscription()I
    .registers 7

    .line 15947
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "<unknown>"

    .line 15948
    .local v0, "packageName":Ljava/lang/String;
    :goto_d
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 15949
    .local v1, "attributionTag":Ljava/lang/String;
    :goto_19
    const/4 v2, -0x1

    .line 15951
    .local v2, "subId":I
    :try_start_1a
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v3

    .line 15952
    .local v3, "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    if-eqz v3, :cond_25

    .line 15953
    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/IOns;->getPreferredDataSubscriptionId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_26

    move v2, v4

    .line 15958
    .end local v3    # "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    :cond_25
    goto :goto_2e

    .line 15956
    :catch_26
    move-exception v3

    .line 15957
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v4, "TelephonyManager"

    const-string v5, "getPreferredDataSubscriptionId RemoteException"

    invoke-static {v4, v5, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15959
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_2e
    return v2
.end method

.method public whitelist getPrimaryImei()Ljava/lang/String;
    .registers 5

    .line 19812
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 19813
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_15

    .line 19817
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getPrimaryImei(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 19814
    :cond_15
    const-string v2, "getPrimaryImei(): IPhoneSubInfo instance is NULL"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19815
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Telephony service not available."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v2
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_22} :catch_22

    .line 19818
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_22
    move-exception v1

    .line 19819
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrimaryImei() RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19820
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist getRadioHalVersion()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getHalVersion(I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRadioPowerOffReasons()Ljava/util/Set;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 11695
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11697
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 11698
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_23

    .line 11699
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 11700
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 11699
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getRadioPowerOffReasons(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11707
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_36

    .line 11702
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v2
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2b} :catch_2b

    .line 11704
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_2b
    move-exception v1

    .line 11705
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getRadioPowerOffReasons"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11706
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 11708
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_36
    return-object v0
.end method

.method public whitelist getRadioPowerState()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11799
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11800
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1b

    .line 11801
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 11802
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 11801
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getRadioPowerState(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1c

    return v1

    .line 11806
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1b
    goto :goto_1d

    .line 11804
    :catch_1c
    move-exception v0

    .line 11807
    :goto_1d
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist getServiceState()Landroid/telephony/ServiceState;
    .registers 2

    .line 13465
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getLocationData()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getServiceState(I)Landroid/telephony/ServiceState;
    .registers 6
    .param p1, "includeLocationData"    # I

    .line 13501
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    if-nez p1, :cond_13

    goto :goto_14

    :cond_13
    move v2, v3

    :goto_14
    invoke-direct {p0, v0, v1, v2}, Landroid/telephony/TelephonyManager;->getServiceStateForSlot(IZZ)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getServiceStateForSlot(I)Landroid/telephony/ServiceState;
    .registers 3
    .param p1, "slotIndex"    # I

    .line 13578
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/telephony/TelephonyManager;->getServiceStateForSlot(IZZ)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;
    .registers 4
    .param p1, "subId"    # I

    .line 13550
    nop

    .line 13551
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 13550
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/telephony/TelephonyManager;->getServiceStateForSlot(IZZ)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getShaIdFromAllowList(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "carrierId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14363
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14364
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 14365
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getShaIdFromAllowList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_f

    return-object v1

    .line 14370
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    nop

    .line 14371
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 14367
    :catch_f
    move-exception v0

    .line 14368
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getShaIdFromAllowList: RemoteException = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14369
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSignalStrength()Landroid/telephony/SignalStrength;
    .registers 4

    .line 14875
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14876
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 14877
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSignalStrength(I)Landroid/telephony/SignalStrength;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 14881
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 14879
    :catch_10
    move-exception v0

    .line 14880
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getSignalStrength"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14882
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSimApplicationState()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3955
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSimStateIncludingLoaded()I

    move-result v0

    .line 3956
    .local v0, "simState":I
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSimApplicationStateFromSimState(I)I

    move-result v1

    return v1
.end method

.method public whitelist getSimApplicationState(I)I
    .registers 5
    .param p1, "physicalSlotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3983
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v0

    .line 3984
    .local v0, "activePort":I
    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v1

    .line 3985
    .local v1, "simState":I
    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSimApplicationStateFromSimState(I)I

    move-result v2

    return v2
.end method

.method public whitelist getSimApplicationState(II)I
    .registers 5
    .param p1, "physicalSlotIndex"    # I
    .param p2, "portIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4012
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v0

    .line 4013
    .local v0, "simState":I
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSimApplicationStateFromSimState(I)I

    move-result v1

    return v1
.end method

.method public whitelist getSimCardState()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3844
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 3845
    .local v0, "simState":I
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCardStateFromSimState(I)I

    move-result v1

    return v1
.end method

.method public whitelist getSimCardState(I)I
    .registers 5
    .param p1, "physicalSlotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3869
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v0

    .line 3870
    .local v0, "activePort":I
    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 3871
    .local v1, "simState":I
    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSimCardStateFromSimState(I)I

    move-result v2

    return v2
.end method

.method public whitelist getSimCardState(II)I
    .registers 5
    .param p1, "physicalSlotIndex"    # I
    .param p2, "portIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3896
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 3897
    .local v0, "simState":I
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCardStateFromSimState(I)I

    move-result v1

    return v1
.end method

.method public whitelist getSimCarrierId()I
    .registers 3

    .line 13709
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13710
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 13711
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionCarrierId(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 13715
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_11

    .line 13713
    :catch_10
    move-exception v0

    .line 13716
    :goto_11
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSimCarrierIdName()Ljava/lang/CharSequence;
    .registers 3

    .line 13737
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13738
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 13739
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionCarrierName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 13743
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_11

    .line 13741
    :catch_10
    move-exception v0

    .line 13744
    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getSimCount()I
    .registers 2

    .line 8842
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public whitelist getSimCountryIso()Ljava/lang/String;
    .registers 2

    .line 4227
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimLocale()Ljava/util/Locale;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13274
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13275
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 13276
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSimLocaleForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 13277
    .local v1, "languageTag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 13278
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1a

    return-object v2

    .line 13282
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "languageTag":Ljava/lang/String;
    :cond_19
    goto :goto_1b

    .line 13281
    :catch_1a
    move-exception v0

    .line 13283
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSimOperator()Ljava/lang/String;
    .registers 2

    .line 4104
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getSimOperator(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 4120
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperatorName()Ljava/lang/String;
    .registers 2

    .line 4189
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getSimOperatorName(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 4204
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 4205
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getSimOperatorNameForPhone(I)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I

    .line 4215
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_alpha()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-p getSimOperatorNumeric()Ljava/lang/String;
    .registers 3

    .line 4134
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 4135
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4136
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 4137
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4138
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 4139
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4140
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 4141
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4142
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 4147
    :cond_2a
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-p getSimOperatorNumeric(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 4163
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 4164
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-p getSimOperatorNumericForPhone(I)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I

    .line 4177
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_numeric()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSimSerialNumber()Ljava/lang/String;
    .registers 2

    .line 4289
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSimSerialNumber(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 4329
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 4330
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 4331
    return-object v0

    .line 4332
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 4333
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 4332
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object v0

    .line 4336
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_19
    move-exception v1

    .line 4338
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 4334
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v1

    .line 4335
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public blacklist getSimServiceTable(I)Ljava/lang/String;
    .registers 7
    .param p1, "appType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9173
    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 9174
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_10

    .line 9175
    const-string/jumbo v3, "getSimServiceTable(): IPhoneSubInfo is null"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9176
    return-object v1

    .line 9179
    :cond_10
    const/4 v3, 0x5

    if-ne p1, v3, :cond_1c

    .line 9180
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9181
    :cond_1c
    const/4 v3, 0x2

    if-ne p1, v3, :cond_28

    .line 9182
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v4

    invoke-interface {v2, v4, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSimServiceTable(II)Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_27} :catch_46
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_27} :catch_29

    return-object v0

    .line 9184
    :cond_28
    return-object v1

    .line 9188
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_29
    move-exception v2

    .line 9189
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSimServiceTable(): NullPointerException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 9186
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_46
    move-exception v2

    .line 9187
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSimServiceTable(): RemoteException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9190
    .end local v2    # "ex":Landroid/os/RemoteException;
    nop

    .line 9191
    :goto_63
    return-object v1
.end method

.method public whitelist getSimServiceTable(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "appType"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "[B",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 9212
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<[BLjava/lang/Exception;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9213
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9215
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 9216
    .local v0, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v0, :cond_15

    .line 9217
    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda23;

    invoke-direct {v1, p3}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda23;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9219
    return-void

    .line 9224
    :cond_15
    const/4 v1, 0x5

    if-ne p1, v1, :cond_23

    .line 9225
    :try_start_18
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "serviceTable":Ljava/lang/String;
    goto :goto_30

    .line 9238
    .end local v1    # "serviceTable":Ljava/lang/String;
    :catch_21
    move-exception v1

    goto :goto_48

    .line 9226
    :cond_23
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2f

    .line 9227
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSimServiceTable(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "serviceTable":Ljava/lang/String;
    goto :goto_30

    .line 9229
    .end local v1    # "serviceTable":Ljava/lang/String;
    :cond_2f
    const/4 v1, 0x0

    .line 9232
    .restart local v1    # "serviceTable":Ljava/lang/String;
    :goto_30
    if-nez v1, :cond_3b

    .line 9233
    new-instance v2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda24;

    invoke-direct {v2, p3}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda24;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_47

    .line 9235
    :cond_3b
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 9236
    .local v2, "simServiceTable":[B
    new-instance v3, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda25;

    invoke-direct {v3, p3, v2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda25;-><init>(Landroid/os/OutcomeReceiver;[B)V

    invoke-interface {p2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_47} :catch_21

    .line 9240
    .end local v1    # "serviceTable":Ljava/lang/String;
    .end local v2    # "simServiceTable":[B
    :goto_47
    goto :goto_50

    .line 9239
    .local v1, "ex":Ljava/lang/Exception;
    :goto_48
    new-instance v2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda26;

    invoke-direct {v2, p3, v1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda26;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9241
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_50
    return-void
.end method

.method public whitelist getSimSlotMapping()Ljava/util/Collection;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;"
        }
    .end annotation

    .line 4695
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4696
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_12

    .line 4697
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSlotsMapping(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4703
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .local v1, "slotMap":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    nop

    .line 4704
    return-object v1

    .line 4699
    .end local v1    # "slotMap":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1b

    .line 4701
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_1b
    move-exception v0

    .line 4702
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSimSpecificCarrierId()I
    .registers 3

    .line 13778
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13779
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 13780
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionSpecificCarrierId(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 13784
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_11

    .line 13782
    :catch_10
    move-exception v0

    .line 13785
    :goto_11
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSimSpecificCarrierIdName()Ljava/lang/CharSequence;
    .registers 3

    .line 13807
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13808
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 13809
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionSpecificCarrierName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 13813
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_11

    .line 13811
    :catch_10
    move-exception v0

    .line 13814
    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSimState()I
    .registers 3

    .line 3799
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSimStateIncludingLoaded()I

    move-result v0

    .line 3800
    .local v0, "simState":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    .line 3801
    const/4 v0, 0x5

    .line 3803
    :cond_9
    return v0
.end method

.method public whitelist getSimState(I)I
    .registers 4
    .param p1, "slotIndex"    # I

    .line 4087
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v0

    .line 4088
    .local v0, "simState":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    .line 4089
    const/4 v0, 0x5

    .line 4091
    :cond_9
    return v0
.end method

.method public greylist getSlotIndex()I
    .registers 3

    .line 8604
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 8605
    .local v0, "slotIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 8606
    const v0, 0x7fffffff

    .line 8608
    :cond_e
    return v0
.end method

.method public greylist-max-o getSmsReceiveCapableForPhone(IZ)Z
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Z

    .line 12974
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 12975
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->sms_receive()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 12978
    :cond_19
    return p2
.end method

.method public greylist-max-o getSmsSendCapableForPhone(IZ)Z
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Z

    .line 12991
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 12992
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->sms_send()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 12995
    :cond_19
    return p2
.end method

.method public greylist getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .registers 4
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .line 13148
    const/4 v0, -0x1

    .line 13149
    .local v0, "retval":I
    if-eqz p1, :cond_12

    .line 13150
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 13151
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getSubscriptionId(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    .line 13153
    :cond_12
    return v0
.end method

.method public whitelist getSubscriberId()Ljava/lang/String;
    .registers 2

    .line 4751
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getSubscriberId(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 4769
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 4770
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 4771
    return-object v0

    .line 4772
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 4773
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 4772
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object v0

    .line 4776
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_19
    move-exception v1

    .line 4778
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 4774
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v1

    .line 4775
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getSubscriptionId()I
    .registers 2

    .line 8530
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    return v0
.end method

.method public whitelist getSubscriptionId(Landroid/telecom/PhoneAccountHandle;)I
    .registers 3
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 13212
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mPhoneAccountHandleToSubIdCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getSupportedModemCount()I
    .registers 3

    .line 717
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->max_active_modems()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getSupportedRadioAccessFamily()J
    .registers 6

    .line 15319
    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 15320
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_16

    .line 15321
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_14} :catch_17

    int-to-long v0, v0

    return-wide v0

    .line 15324
    :cond_16
    return-wide v0

    .line 15329
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_17
    move-exception v2

    .line 15331
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-wide v0

    .line 15326
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_19
    move-exception v2

    .line 15328
    .local v2, "ex":Landroid/os/RemoteException;
    return-wide v0
.end method

.method public whitelist getSystemSelectionChannels()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation

    .line 16676
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16677
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 16678
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSystemSelectionChannels(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 16680
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 16682
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_18
    move-exception v0

    .line 16683
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getSystemSelectionChannels RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16685
    .end local v0    # "ex":Landroid/os/RemoteException;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getTelephonyHistograms()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 14028
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14029
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 14030
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getTelephonyHistograms()Ljava/util/List;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 14034
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 14032
    :catch_c
    move-exception v0

    .line 14033
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getTelephonyHistograms"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14035
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTestEuiccUiComponent()Landroid/content/ComponentName;
    .registers 5

    .line 19896
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 19897
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 19901
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getTestEuiccUiComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 19898
    :cond_d
    const-string/jumbo v2, "getTestEuiccUiComponent(): ITelephony instance is NULL"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19899
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Telephony service not available."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v2
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1b} :catch_1b

    .line 19902
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_1b
    move-exception v1

    .line 19903
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTestEuiccUiComponent() RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19904
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getTypeAllocationCode()Ljava/lang/String;
    .registers 2

    .line 2401
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getTypeAllocationCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTypeAllocationCode(I)Ljava/lang/String;
    .registers 5
    .param p1, "slotIndex"    # I

    .line 2412
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2413
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2416
    :cond_8
    :try_start_8
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getTypeAllocationCodeForSlot(I)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    .line 2419
    :catch_d
    move-exception v2

    .line 2420
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 2417
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_f
    move-exception v2

    .line 2418
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getUiccCardsInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/UiccCardInfo;",
            ">;"
        }
    .end annotation

    .line 4446
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4447
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_13

    .line 4448
    const-string v2, "Error in getUiccCardsInfo: unable to connect to Telephony service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4449
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 4451
    :cond_13
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getUiccCardsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_1e

    return-object v0

    .line 4452
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1e
    move-exception v1

    .line 4453
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in getUiccCardsInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4473
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4474
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 4475
    return-object v0

    .line 4477
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getUiccSlotsInfo(Ljava/lang/String;)[Landroid/telephony/UiccSlotInfo;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_13

    return-object v0

    .line 4478
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_13
    move-exception v1

    .line 4479
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getVisualVoicemailPackageName()Ljava/lang/String;
    .registers 5

    .line 5839
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5840
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 5841
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5842
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    .line 5841
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_18} :catch_1a

    return-object v1

    .line 5840
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_19
    goto :goto_1d

    .line 5845
    :catch_1a
    move-exception v0

    goto :goto_1e

    .line 5844
    :catch_1c
    move-exception v0

    .line 5846
    :goto_1d
    nop

    .line 5847
    :goto_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVisualVoicemailSettings()Landroid/os/Bundle;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5807
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5808
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 5809
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5810
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailSettings(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_14

    .line 5809
    return-object v1

    .line 5808
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_13
    goto :goto_17

    .line 5813
    :catch_14
    move-exception v0

    goto :goto_18

    .line 5812
    :catch_16
    move-exception v0

    .line 5814
    :goto_17
    nop

    .line 5815
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .registers 4
    .param p1, "subId"    # I

    .line 5967
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5968
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_11

    .line 5969
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5970
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_10} :catch_12

    .line 5969
    return-object v1

    .line 5968
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_11
    goto :goto_15

    .line 5973
    :catch_12
    move-exception v0

    goto :goto_16

    .line 5972
    :catch_14
    move-exception v0

    .line 5974
    :goto_15
    nop

    .line 5976
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVoiceActivationState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6194
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceActivationState(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getVoiceActivationState(I)I
    .registers 4
    .param p1, "subId"    # I

    .line 6216
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6217
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 6218
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceActivationState(ILjava/lang/String;)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 6217
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_13

    .line 6220
    :catch_10
    move-exception v0

    goto :goto_14

    .line 6219
    :catch_12
    move-exception v0

    .line 6221
    :goto_13
    nop

    .line 6222
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 2

    .line 6327
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getVoiceMailAlphaTag(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 6341
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 6342
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 6343
    return-object v0

    .line 6344
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6345
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 6344
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v0

    .line 6348
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_15
    move-exception v1

    .line 6350
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 6346
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 6347
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getVoiceMailNumber()Ljava/lang/String;
    .registers 2

    .line 5687
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getVoiceMailNumber(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 5700
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5701
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 5702
    return-object v0

    .line 5703
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5704
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5703
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v0

    .line 5707
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_15
    move-exception v1

    .line 5709
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 5705
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 5706
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist getVoiceMessageCount()I
    .registers 2

    .line 6287
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(I)I

    move-result v0

    return v0
.end method

.method public greylist getVoiceMessageCount(I)I
    .registers 6
    .param p1, "subId"    # I

    .line 6300
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6301
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 6302
    return v0

    .line 6303
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6304
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 6303
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return v0

    .line 6307
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    .line 6309
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 6305
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 6306
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getVoiceNetworkType()I
    .registers 2

    .line 3402
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getVoiceNetworkType(I)I
    .registers 6
    .param p1, "subId"    # I

    .line 3413
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3414
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 3415
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3416
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 3415
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_13} :catch_15

    return v0

    .line 3419
    :cond_14
    return v0

    .line 3424
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    .line 3426
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 3421
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 3423
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .registers 5
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 13595
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13596
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 13597
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 13601
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 13599
    :catch_c
    move-exception v0

    .line 13600
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getVoicemailRingtoneUri"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13602
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist handlePinMmi(Ljava/lang/String;)Z
    .registers 5
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11496
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11497
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 11498
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 11501
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 11499
    :catch_c
    move-exception v0

    .line 11500
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#handlePinMmi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11502
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11515
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11516
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 11517
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 11520
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 11518
    :catch_c
    move-exception v0

    .line 11519
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#handlePinMmi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11521
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasCarrierPrivileges()Z
    .registers 2

    .line 10561
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasCarrierPrivileges(I)Z
    .registers 8
    .param p1, "subId"    # I

    .line 10580
    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 10581
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_10

    .line 10582
    const-string/jumbo v3, "hasCarrierPrivileges: no Telephony service"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10583
    return v1

    .line 10585
    :cond_10
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatus(I)I

    move-result v3

    .line 10586
    .local v3, "status":I
    packed-switch v3, :pswitch_data_44

    .line 10592
    goto :goto_1b

    .line 10588
    :pswitch_18
    const/4 v0, 0x1

    return v0

    .line 10590
    :pswitch_1a
    return v1

    .line 10592
    :goto_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasCarrierPrivileges: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_32} :catch_3b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_32} :catch_33

    .line 10593
    return v1

    .line 10597
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v3    # "status":I
    :catch_33
    move-exception v2

    .line 10598
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "hasCarrierPrivileges NPE"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    .line 10595
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_3b
    move-exception v2

    .line 10596
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "hasCarrierPrivileges RemoteException"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10599
    .end local v2    # "ex":Landroid/os/RemoteException;
    nop

    .line 10600
    :goto_43
    return v1

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_18
    .end packed-switch
.end method

.method public whitelist hasIccCard()Z
    .registers 2

    .line 3753
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public greylist hasIccCard(I)Z
    .registers 4
    .param p1, "slotIndex"    # I

    .line 3767
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3768
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 3769
    return v0

    .line 3770
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardUsingSlotIndex(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_c} :catch_d

    return v0

    .line 3774
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v1

    .line 3776
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 3771
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_f
    move-exception v1

    .line 3773
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist iccCloseLogicalChannel(I)Z
    .registers 5
    .param p1, "channel"    # I

    .line 7821
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannel(II)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7822
    :catch_9
    move-exception v0

    .line 7823
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "iccCloseLogicalChannel IllegalStateException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7825
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o iccCloseLogicalChannel(II)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "channel"    # I

    .line 7845
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7846
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_14

    .line 7847
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7848
    .local v1, "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->subId:I

    .line 7849
    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    .line 7850
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_13} :catch_15

    return v2

    .line 7846
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    :cond_14
    goto :goto_22

    .line 7854
    :catch_15
    move-exception v0

    .line 7855
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "iccCloseLogicalChannel IllegalStateException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 7853
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catch_1f
    move-exception v0

    goto :goto_22

    .line 7852
    :catch_21
    move-exception v0

    .line 7856
    :goto_22
    nop

    .line 7857
    :goto_23
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist iccCloseLogicalChannelByPort(III)V
    .registers 7
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "channel"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7783
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7784
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_17

    .line 7785
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7786
    .local v1, "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    .line 7787
    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    .line 7788
    iput p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    .line 7789
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    .line 7790
    nop

    .line 7795
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    nop

    .line 7796
    return-void

    .line 7791
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotIndex":I
    .end local p2    # "portIndex":I
    .end local p3    # "channel":I
    throw v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_20

    .line 7793
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotIndex":I
    .restart local p2    # "portIndex":I
    .restart local p3    # "channel":I
    :catch_20
    move-exception v0

    .line 7794
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist iccCloseLogicalChannelBySlot(II)Z
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "channel"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7740
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7741
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1a

    .line 7742
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7743
    .local v1, "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    .line 7744
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    .line 7745
    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    .line 7746
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    move-result v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_19} :catch_25
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_19} :catch_1b

    return v2

    .line 7741
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    :cond_1a
    goto :goto_28

    .line 7750
    :catch_1b
    move-exception v0

    .line 7751
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "iccCloseLogicalChannel IllegalStateException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 7749
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catch_25
    move-exception v0

    goto :goto_28

    .line 7748
    :catch_27
    move-exception v0

    .line 7752
    :goto_28
    nop

    .line 7753
    :goto_29
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o iccExchangeSimIO(IIIIIILjava/lang/String;)[B
    .registers 17
    .param p1, "subId"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;

    .line 8231
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v1, v0

    .line 8232
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 8233
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ITelephony;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_15

    return-object v0

    .line 8232
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_14
    goto :goto_18

    .line 8235
    :catch_15
    move-exception v0

    goto :goto_19

    .line 8234
    :catch_17
    move-exception v0

    .line 8236
    :goto_18
    nop

    .line 8237
    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist iccExchangeSimIO(IIIIILjava/lang/String;)[B
    .registers 15
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;

    .line 8208
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "fileID":I
    .end local p2    # "command":I
    .end local p3    # "p1":I
    .end local p4    # "p2":I
    .end local p5    # "p3":I
    .end local p6    # "filePath":Ljava/lang/String;
    .local v2, "fileID":I
    .local v3, "command":I
    .local v4, "p1":I
    .local v5, "p2":I
    .local v6, "p3":I
    .local v7, "filePath":Ljava/lang/String;
    invoke-virtual/range {v0 .. v7}, Landroid/telephony/TelephonyManager;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o iccOpenLogicalChannel(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 7
    .param p1, "subId"    # I
    .param p2, "AID"    # Ljava/lang/String;
    .param p3, "p2"    # I

    .line 7696
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7697
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_23

    .line 7698
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7699
    .local v1, "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->subId:I

    .line 7700
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->callingPackage:Ljava/lang/String;

    .line 7701
    iput-object p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->aid:Ljava/lang/String;

    .line 7702
    iput p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->p2:I

    .line 7703
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    .line 7704
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v2
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_22} :catch_24

    return-object v2

    .line 7697
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    :cond_23
    goto :goto_27

    .line 7707
    :catch_24
    move-exception v0

    goto :goto_28

    .line 7706
    :catch_26
    move-exception v0

    .line 7708
    :goto_27
    nop

    .line 7709
    :goto_28
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 4
    .param p1, "AID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7512
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/telephony/TelephonyManager;->iccOpenLogicalChannel(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v0

    return-object v0
.end method

.method public whitelist iccOpenLogicalChannel(Ljava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 4
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "p2"    # I

    .line 7664
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->iccOpenLogicalChannel(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v0

    return-object v0
.end method

.method public whitelist iccOpenLogicalChannelByPort(IILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 8
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "p2"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7611
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7612
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_25

    .line 7613
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7614
    .local v1, "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    .line 7615
    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    .line 7616
    iput-object p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->aid:Ljava/lang/String;

    .line 7617
    iput p4, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->p2:I

    .line 7618
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->callingPackage:Ljava/lang/String;

    .line 7619
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    .line 7620
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v2

    return-object v2

    .line 7622
    .end local v1    # "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotIndex":I
    .end local p2    # "portIndex":I
    .end local p3    # "aid":Ljava/lang/String;
    .end local p4    # "p2":I
    throw v1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2e

    .line 7624
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotIndex":I
    .restart local p2    # "portIndex":I
    .restart local p3    # "aid":Ljava/lang/String;
    .restart local p4    # "p2":I
    :catch_2e
    move-exception v0

    .line 7625
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist iccOpenLogicalChannelBySlot(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 7
    .param p1, "slotIndex"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "p2"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7556
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7557
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_29

    .line 7558
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7559
    .local v1, "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    .line 7560
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    .line 7561
    iput-object p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->aid:Ljava/lang/String;

    .line 7562
    iput p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->p2:I

    .line 7563
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->callingPackage:Ljava/lang/String;

    .line 7564
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    .line 7565
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v2
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_28} :catch_2a

    return-object v2

    .line 7557
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    :cond_29
    goto :goto_2d

    .line 7568
    :catch_2a
    move-exception v0

    goto :goto_2e

    .line 7567
    :catch_2c
    move-exception v0

    .line 7569
    :goto_2d
    nop

    .line 7570
    :goto_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p1, "subId"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .line 8177
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v1, v0

    .line 8178
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_19

    .line 8179
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannel(ILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_18} :catch_1a

    return-object v0

    .line 8178
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_19
    goto :goto_1d

    .line 8182
    :catch_1a
    move-exception v0

    goto :goto_1e

    .line 8181
    :catch_1c
    move-exception v0

    .line 8183
    :goto_1d
    nop

    .line 8184
    :goto_1e
    const-string v0, ""

    return-object v0
.end method

.method public whitelist iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;

    .line 8149
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "cla":I
    .end local p2    # "instruction":I
    .end local p3    # "p1":I
    .end local p4    # "p2":I
    .end local p5    # "p3":I
    .end local p6    # "data":Ljava/lang/String;
    .local v2, "cla":I
    .local v3, "instruction":I
    .local v4, "p1":I
    .local v5, "p2":I
    .local v6, "p3":I
    .local v7, "data":Ljava/lang/String;
    invoke-virtual/range {v0 .. v7}, Landroid/telephony/TelephonyManager;->iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist iccTransmitApduBasicChannelByPort(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8112
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v1, v0

    .line 8113
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1e

    .line 8114
    nop

    .line 8115
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 8114
    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8121
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .local v0, "response":Ljava/lang/String;
    nop

    .line 8122
    return-object v0

    .line 8117
    .end local v0    # "response":Ljava/lang/String;
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotIndex":I
    .end local p2    # "portIndex":I
    .end local p3    # "cla":I
    .end local p4    # "instruction":I
    .end local p5    # "p1":I
    .end local p6    # "p2":I
    .end local p7    # "p3":I
    .end local p8    # "data":Ljava/lang/String;
    throw v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_27

    .line 8119
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotIndex":I
    .restart local p2    # "portIndex":I
    .restart local p3    # "cla":I
    .restart local p4    # "instruction":I
    .restart local p5    # "p1":I
    .restart local p6    # "p2":I
    .restart local p7    # "p3":I
    .restart local p8    # "data":Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 8120
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist iccTransmitApduBasicChannelBySlot(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p1, "slotIndex"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8067
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v1, v0

    .line 8068
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1f

    .line 8069
    nop

    .line 8070
    invoke-direct/range {p0 .. p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 8069
    move v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1e} :catch_20

    return-object v0

    .line 8068
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1f
    goto :goto_23

    .line 8074
    :catch_20
    move-exception v0

    goto :goto_24

    .line 8073
    :catch_22
    move-exception v0

    .line 8075
    :goto_23
    nop

    .line 8076
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p1, "subId"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;

    .line 8020
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v1, v0

    .line 8021
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 8022
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_16} :catch_18

    return-object v0

    .line 8021
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_1b

    .line 8025
    :catch_18
    move-exception v0

    goto :goto_1c

    .line 8024
    :catch_1a
    move-exception v0

    .line 8026
    :goto_1b
    nop

    .line 8027
    :goto_1c
    const-string v0, ""

    return-object v0
.end method

.method public whitelist iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 17
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .line 7990
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/TelephonyManager;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 21
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "channel"    # I
    .param p4, "cla"    # I
    .param p5, "instruction"    # I
    .param p6, "p1"    # I
    .param p7, "p2"    # I
    .param p8, "p3"    # I
    .param p9, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7945
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v1, v0

    .line 7946
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1b

    .line 7947
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7954
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .local v0, "response":Ljava/lang/String;
    nop

    .line 7955
    return-object v0

    .line 7950
    .end local v0    # "response":Ljava/lang/String;
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotIndex":I
    .end local p2    # "portIndex":I
    .end local p3    # "channel":I
    .end local p4    # "cla":I
    .end local p5    # "instruction":I
    .end local p6    # "p1":I
    .end local p7    # "p2":I
    .end local p8    # "p3":I
    .end local p9    # "data":Ljava/lang/String;
    throw v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_24

    .line 7952
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotIndex":I
    .restart local p2    # "portIndex":I
    .restart local p3    # "channel":I
    .restart local p4    # "cla":I
    .restart local p5    # "instruction":I
    .restart local p6    # "p1":I
    .restart local p7    # "p2":I
    .restart local p8    # "p3":I
    .restart local p9    # "data":Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 7953
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist iccTransmitApduLogicalChannelBySlot(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p1, "slotIndex"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7898
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v1, v0

    .line 7899
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1d

    .line 7900
    nop

    .line 7901
    invoke-direct/range {p0 .. p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v3

    .line 7900
    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1c} :catch_1e

    return-object v0

    .line 7899
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1d
    goto :goto_21

    .line 7905
    :catch_1e
    move-exception v0

    goto :goto_22

    .line 7904
    :catch_20
    move-exception v0

    .line 7906
    :goto_21
    nop

    .line 7907
    :goto_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isAnyRadioPoweredOn()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11750
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11751
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 11752
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 11757
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_17

    .line 11754
    :catch_c
    move-exception v0

    .line 11755
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isAnyRadioPoweredOn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11756
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 11758
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAospDomainSelectionService()Z
    .registers 4

    .line 19773
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19774
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 19775
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isAospDomainSelectionService()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 19779
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 19777
    :catch_c
    move-exception v0

    .line 19778
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19780
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isApnMetered(I)Z
    .registers 5
    .param p1, "apnType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16574
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16575
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 16576
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->isApnMetered(II)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 16580
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_29

    .line 16578
    :catch_10
    move-exception v0

    .line 16579
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#isApnMetered RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16581
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_29
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isApplicationOnUicc(I)Z
    .registers 5
    .param p1, "appType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4056
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4057
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 4058
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->isApplicationOnUicc(II)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 4062
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 4060
    :catch_10
    move-exception v0

    .line 4061
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isApplicationOnUicc"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4063
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isCellularIdentifierDisclosureNotificationsEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19452
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19453
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 19454
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isCellularIdentifierDisclosureNotificationsEnabled()Z

    move-result v1

    return v1

    .line 19456
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 19458
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_14
    move-exception v0

    .line 19459
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isCellularIdentifierDisclosureNotificationsEnabled RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19460
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19462
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isConcurrentVoiceAndDataSupported()Z
    .registers 5

    .line 11478
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 11479
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    :goto_7
    goto :goto_11

    .line 11480
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    .line 11479
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isConcurrentVoiceAndDataAllowed(I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    goto :goto_7

    :goto_11
    return v0

    .line 11481
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_12
    move-exception v1

    .line 11482
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isConcurrentVoiceAndDataAllowed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11484
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist isDataCapable()Z
    .registers 3

    .line 14926
    const-string v0, "android.hardware.telephony.data"

    const v1, 0x11101f3

    invoke-direct {p0, v0, v1}, Landroid/telephony/TelephonyManager;->hasCapability(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist isDataConnectionAllowed()Z
    .registers 5

    .line 14906
    const/4 v0, 0x0

    .line 14908
    .local v0, "retVal":Z
    :try_start_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 14909
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 14910
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_14

    .line 14911
    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isDataEnabled(I)Z

    move-result v3
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_15

    move v0, v3

    .line 14914
    .end local v1    # "subId":I
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_14
    goto :goto_1d

    .line 14912
    :catch_15
    move-exception v1

    .line 14913
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error isDataConnectionAllowed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14915
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1d
    return v0
.end method

.method public whitelist isDataConnectivityPossible()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11867
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11868
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_14

    .line 11869
    nop

    .line 11870
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v1

    .line 11869
    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible(I)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    return v1

    .line 11873
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_14
    goto :goto_1d

    .line 11871
    :catch_15
    move-exception v0

    .line 11872
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isDataAllowed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11874
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isDataEnabled()Z
    .registers 5

    .line 12007
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isDataEnabledForReason(I)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_5} :catch_6

    return v0

    .line 12008
    :catch_6
    move-exception v1

    .line 12010
    .local v1, "ise":Ljava/lang/IllegalStateException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling #isDataEnabled, returning default (false)."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12011
    return v0
.end method

.method public whitelist isDataEnabledForApn(I)Z
    .registers 6
    .param p1, "apnType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16549
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "<unknown>"

    .line 16551
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_d
    :try_start_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 16552
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1c

    .line 16553
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/android/internal/telephony/ITelephony;->isDataEnabledForApn(IILjava/lang/String;)Z

    move-result v2
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1b} :catch_1d

    return v2

    .line 16557
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_1c
    goto :goto_36

    .line 16555
    :catch_1d
    move-exception v1

    .line 16556
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telephony#isDataEnabledForApn RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16558
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_36
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isDataEnabledForReason(I)Z
    .registers 3
    .param p1, "reason"    # I

    .line 14751
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroid/telephony/TelephonyManager;->isDataEnabledForReason(II)Z

    move-result v0

    return v0
.end method

.method public whitelist isDataRoamingEnabled()Z
    .registers 5

    .line 12039
    const/4 v0, 0x0

    .line 12041
    .local v0, "isDataRoamingEnabled":Z
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12042
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_15

    .line 12043
    nop

    .line 12044
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v2

    .line 12043
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isDataRoamingEnabled(I)Z

    move-result v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_16

    move v0, v2

    .line 12048
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_15
    goto :goto_1e

    .line 12046
    :catch_16
    move-exception v1

    .line 12047
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isDataRoamingEnabled"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12049
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1e
    return v0
.end method

.method public whitelist isDeviceSmsCapable()Z
    .registers 2

    .line 7144
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method public whitelist isDeviceVoiceCapable()Z
    .registers 3

    .line 7104
    const-string v0, "android.hardware.telephony.calling"

    const v1, 0x11102a0

    invoke-direct {p0, v0, v1}, Landroid/telephony/TelephonyManager;->hasCapability(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist isDomainSelectionSupported()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19753
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19754
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 19755
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isDomainSelectionSupported()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 19759
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 19757
    :catch_c
    move-exception v0

    .line 19758
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19760
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEmergencyAssistanceEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15453
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v2, "isEmergencyAssistanceEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15456
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isEmergencyNumber(Ljava/lang/String;)Z
    .registers 5
    .param p1, "number"    # Ljava/lang/String;

    .line 15650
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15651
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_c

    .line 15652
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 15654
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "number":Ljava/lang/String;
    throw v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_15

    .line 15656
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "number":Ljava/lang/String;
    :catch_15
    move-exception v0

    .line 15657
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isEmergencyNumber RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15658
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15660
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isHearingAidCompatibilitySupported()Z
    .registers 4

    .line 12481
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12482
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 12483
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isHearingAidCompatibilitySupported()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    .line 12482
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1b

    .line 12487
    :catch_e
    move-exception v1

    .line 12488
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 12485
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_15
    move-exception v1

    .line 12486
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12489
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1b
    nop

    .line 12490
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isIccLockEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17222
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17223
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 17224
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isIccLockEnabled(I)Z

    move-result v1

    return v1

    .line 17226
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 17228
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_18
    move-exception v0

    .line 17229
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isIccLockEnabled RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17230
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 17232
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isIdle()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11188
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 11189
    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public greylist-max-p isImsRegistered()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12527
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isImsRegistered(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 12528
    :catch_d
    move-exception v0

    .line 12529
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o isImsRegistered(I)Z
    .registers 4
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12505
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->isImsRegistered(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 12506
    :catch_9
    move-exception v0

    .line 12507
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isInEmergencySmsMode()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10132
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10133
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 10134
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isInEmergencySmsMode()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 10138
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_15

    .line 10136
    :catch_c
    move-exception v0

    .line 10137
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isInEmergencySmsMode RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10139
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_15
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isLteCdmaEvdoGsmWcdmaEnabled()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4360
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public whitelist isManualNetworkSelectionAllowed()Z
    .registers 4

    .line 14851
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14852
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 14853
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isManualNetworkSelectionAllowed(I)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 14857
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 14855
    :catch_10
    move-exception v0

    .line 14856
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isManualNetworkSelectionAllowed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14858
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isMobileDataPolicyEnabled(I)Z
    .registers 5
    .param p1, "policy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17184
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17185
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 17186
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->isMobileDataPolicyEnabled(II)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 17190
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_29

    .line 17188
    :catch_10
    move-exception v0

    .line 17189
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#isMobileDataPolicyEnabled RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17191
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_29
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isModemEnabledForSlot(I)Z
    .registers 5
    .param p1, "slotIndex"    # I

    .line 16080
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16081
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_17

    .line 16082
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 16083
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 16082
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ITelephony;->isModemEnabledForSlot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return v1

    .line 16087
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_20

    .line 16085
    :catch_18
    move-exception v0

    .line 16086
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "enableModem RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16088
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isMultiSimEnabled()Z
    .registers 3

    .line 774
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public whitelist isMultiSimSupported()I
    .registers 5

    .line 16206
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_9

    .line 16207
    return v2

    .line 16210
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16211
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1c

    .line 16212
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telephony/ITelephony;->isMultiSimSupported(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1b} :catch_1d

    return v1

    .line 16216
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_1c
    goto :goto_26

    .line 16214
    :catch_1d
    move-exception v0

    .line 16215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v3, "isMultiSimSupported RemoteException"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16217
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_26
    return v2
.end method

.method public whitelist isNetworkRoaming()Z
    .registers 2

    .line 3037
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public greylist isNetworkRoaming(I)Z
    .registers 5
    .param p1, "subId"    # I

    .line 3051
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 3052
    .local v0, "phoneId":I
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_is_roaming()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public whitelist isNrDualConnectivityEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17489
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17490
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 17491
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isNrDualConnectivityEnabled(I)Z

    move-result v1

    return v1

    .line 17493
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 17495
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_18
    move-exception v0

    .line 17496
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isNRDualConnectivityEnabled RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17497
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 17499
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNullCipherAndIntegrityPreferenceEnabled()Z
    .registers 4

    .line 19396
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19397
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 19398
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isNullCipherAndIntegrityPreferenceEnabled()Z

    move-result v1

    return v1

    .line 19400
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 19402
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_14
    move-exception v0

    .line 19403
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isNullCipherAndIntegrityPreferenceEnabled RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19404
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19406
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isNullCipherNotificationsEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19505
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19506
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 19507
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isNullCipherNotificationsEnabled()Z

    move-result v1

    return v1

    .line 19509
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 19511
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_14
    move-exception v0

    .line 19512
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isNullCipherNotificationsEnabled RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19513
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19515
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isOffhook()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11158
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 11159
    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    return v1
.end method

.method public whitelist isOpportunisticNetworkEnabled()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15108
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "<unknown>"

    .line 15109
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_d
    const/4 v1, 0x0

    .line 15112
    .local v1, "isEnabled":Z
    :try_start_e
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v2

    .line 15113
    .local v2, "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    if-eqz v2, :cond_19

    .line 15114
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/IOns;->isEnabled(Ljava/lang/String;)Z

    move-result v3
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_1a

    move v1, v3

    .line 15118
    .end local v2    # "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    :cond_19
    goto :goto_22

    .line 15116
    :catch_1a
    move-exception v2

    .line 15117
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "TelephonyManager"

    const-string v4, "enableOpportunisticNetwork RemoteException"

    invoke-static {v3, v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15120
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_22
    return v1
.end method

.method public whitelist isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .registers 6
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15699
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 15700
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c

    .line 15701
    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/ITelephony;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 15703
    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "number":Ljava/lang/String;
    throw v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_15

    .line 15705
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "number":Ljava/lang/String;
    :catch_15
    move-exception v1

    .line 15706
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "isEmergencyNumber RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15707
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15709
    .end local v1    # "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist isPremiumCapabilityAvailableForPurchase(I)Z
    .registers 5
    .param p1, "capability"    # I

    .line 18736
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18737
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 18740
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->isPremiumCapabilityAvailableForPurchase(II)Z

    move-result v1

    return v1

    .line 18738
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "capability":I
    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 18741
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "capability":I
    :catch_18
    move-exception v0

    .line 18742
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 18744
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z
    .registers 6
    .param p1, "capability"    # Ljava/lang/String;

    .line 17855
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 17857
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 17858
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_f

    .line 17859
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 17861
    :cond_f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "capability":Ljava/lang/String;
    throw v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_18

    .line 17863
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "capability":Ljava/lang/String;
    :catch_18
    move-exception v1

    .line 17864
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telephony#isRadioInterfaceCapabilitySupported RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17866
    .end local v1    # "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist isRadioOn()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11207
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11208
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 11209
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOnWithFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return v1

    .line 11212
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_13
    goto :goto_1c

    .line 11210
    :catch_14
    move-exception v0

    .line 11211
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isRadioOn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11213
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRemovableEsimDefaultEuicc()Z
    .registers 4

    .line 19188
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19189
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 19190
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRemovableEsimDefaultEuicc(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 19194
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_29

    .line 19192
    :catch_10
    move-exception v0

    .line 19193
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in isRemovableEsimDefaultEuicc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19195
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isRinging()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11173
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 11174
    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    return v1
.end method

.method public whitelist isRttSupported()Z
    .registers 4

    .line 12458
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12459
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_f

    .line 12460
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRttSupported(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_17
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_e} :catch_10

    return v0

    .line 12459
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_1d

    .line 12464
    :catch_10
    move-exception v1

    .line 12465
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#isWorldPhone"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 12462
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_17
    move-exception v1

    .line 12463
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#isRttSupported"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12466
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1d
    nop

    .line 12467
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSmsCapable()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7123
    const-string v0, "android.hardware.telephony.messaging"

    const v1, 0x111024e

    invoke-direct {p0, v0, v1}, Landroid/telephony/TelephonyManager;->hasCapability(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist isTetheringApnRequired()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10508
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isTetheringApnRequired(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isTetheringApnRequired(I)Z
    .registers 5
    .param p1, "subId"    # I

    .line 10520
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10521
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 10522
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isTetheringApnRequiredForSubscriber(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    .line 10521
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1d

    .line 10525
    :catch_e
    move-exception v1

    .line 10526
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "hasMatchedTetherApnSetting NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 10523
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v1

    .line 10524
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "hasMatchedTetherApnSetting RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10527
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1d
    nop

    .line 10528
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isTtyModeSupported()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12433
    const/4 v0, 0x0

    .line 12434
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    :try_start_1
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_10

    .line 12435
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    move-object v0, v1

    .line 12437
    :cond_10
    if-eqz v0, :cond_17

    .line 12438
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isTtySupported()Z

    move-result v1
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_16} :catch_18

    return v1

    .line 12442
    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_17
    goto :goto_20

    .line 12440
    :catch_18
    move-exception v0

    .line 12441
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "TelephonyManager"

    const-string v2, "Permission error calling TelecomManager#isTtySupported"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12443
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVideoCallingEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12367
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12368
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 12369
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->isVideoCallingEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return v1

    .line 12372
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_13
    goto :goto_1c

    .line 12370
    :catch_14
    move-exception v0

    .line 12371
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isVideoCallingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12373
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isVideoTelephonyAvailable()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12568
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isVideoTelephonyAvailable(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 12569
    :catch_d
    move-exception v0

    .line 12570
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isVisualVoicemailEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 3
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5783
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVoNrEnabled()Z
    .registers 4

    .line 14519
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14520
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 14521
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isVoNrEnabled(I)Z

    move-result v1

    return v1

    .line 14523
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 14525
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_18
    move-exception v0

    .line 14526
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isVoNrEnabled RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14527
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 14529
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVoiceCapable()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7079
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 7080
    :cond_6
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11102a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 5
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 13648
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13649
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 13650
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 13654
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 13652
    :catch_c
    move-exception v0

    .line 13653
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isVoicemailVibrationEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13655
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isVolteAvailable()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12547
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/ITelephony;->isAvailable(III)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_f

    return v0

    .line 12550
    :catch_f
    move-exception v1

    .line 12551
    .local v1, "ex":Ljava/lang/Exception;
    return v0
.end method

.method public greylist isWifiCallingAvailable()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12585
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isWifiCallingAvailable(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 12586
    :catch_d
    move-exception v0

    .line 12587
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isWorldPhone()Z
    .registers 6

    .line 12411
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12412
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 12413
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->isWorldPhone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_1f
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_16} :catch_18

    return v0

    .line 12412
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_25

    .line 12417
    :catch_18
    move-exception v1

    .line 12418
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#isWorldPhone"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 12415
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1f
    move-exception v1

    .line 12416
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#isWorldPhone"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12419
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_25
    nop

    .line 12420
    :goto_26
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 13
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6837
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 6838
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    move v9, v0

    .line 6839
    .local v9, "notifyNow":Z
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 6841
    const-string/jumbo v1, "telephony_registry"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    .line 6842
    .local v1, "telephonyRegistry":Landroid/telephony/TelephonyRegistryManager;
    if-eqz v1, :cond_3f

    .line 6843
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v0

    .line 6844
    .local v0, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 6845
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 6846
    .local v3, "renounceFineLocationAccess":Z
    nop

    .line 6847
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 6848
    .local v4, "renounceCoarseLocationAccess":Z
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 6849
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 6848
    move-object v7, p1

    move v8, p2

    .end local p1    # "listener":Landroid/telephony/PhoneStateListener;
    .end local p2    # "events":I
    .local v7, "listener":Landroid/telephony/PhoneStateListener;
    .local v8, "events":I
    invoke-virtual/range {v1 .. v9}, Landroid/telephony/TelephonyRegistryManager;->listenFromListener(IZZLjava/lang/String;Ljava/lang/String;Landroid/telephony/PhoneStateListener;IZ)V

    .line 6851
    .end local v0    # "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "renounceFineLocationAccess":Z
    .end local v4    # "renounceCoarseLocationAccess":Z
    goto :goto_49

    .line 6852
    .end local v7    # "listener":Landroid/telephony/PhoneStateListener;
    .end local v8    # "events":I
    .restart local p1    # "listener":Landroid/telephony/PhoneStateListener;
    .restart local p2    # "events":I
    :cond_3f
    move-object v7, p1

    move v8, p2

    .end local p1    # "listener":Landroid/telephony/PhoneStateListener;
    .end local p2    # "events":I
    .restart local v7    # "listener":Landroid/telephony/PhoneStateListener;
    .restart local v8    # "events":I
    const-string p1, "TelephonyManager"

    const-string/jumbo p2, "telephony registry not ready."

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6854
    :goto_49
    return-void
.end method

.method public whitelist matchesCurrentSimOperator(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "mvnoType"    # I
    .param p3, "mvnoMatchData"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16707
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 16708
    return v0

    .line 16710
    :cond_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 16711
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1b

    .line 16712
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/telephony/ITelephony;->isMvnoMatched(IILjava/lang/String;)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1c

    return v0

    .line 16716
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_1b
    goto :goto_35

    .line 16714
    :catch_1c
    move-exception v1

    .line 16715
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telephony#matchesCurrentSimOperator RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16717
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_35
    return v0
.end method

.method public blacklist modifyDevicePolicyOverrideApn(Landroid/content/Context;ILandroid/telephony/data/ApnSetting;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apnId"    # I
    .param p3, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 16518
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    .line 16519
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 16520
    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 16518
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public whitelist needsOtaServiceProvisioning()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11886
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11887
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 11888
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 11891
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 11889
    :catch_c
    move-exception v0

    .line 11890
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#needsOtaServiceProvisioning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11892
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist notifyOtaEmergencyNumberDbInstalled()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15362
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15363
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_a

    .line 15364
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->notifyOtaEmergencyNumberDbInstalled()V

    .line 15371
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_1f

    .line 15366
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 15368
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_13
    move-exception v0

    .line 15369
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "notifyOtaEmergencyNumberDatabaseInstalled RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15370
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15372
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method

.method public blacklist notifyUserActivity()V
    .registers 4

    .line 17332
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17333
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 17334
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->userActivity()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 17340
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_28

    .line 17336
    :catch_a
    move-exception v0

    .line 17339
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyUserActivity exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17341
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method public greylist nvReadItem(I)Ljava/lang/String;
    .registers 6
    .param p1, "itemID"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8306
    const-string v0, "TelephonyManager"

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_b

    return-object v2

    .line 8308
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 8309
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_16

    .line 8310
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->nvReadItem(I)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_15} :catch_17

    return-object v0

    .line 8309
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_16
    goto :goto_26

    .line 8313
    :catch_17
    move-exception v1

    .line 8314
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "nvReadItem NPE"

    invoke-static {v0, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 8311
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1f
    move-exception v1

    .line 8312
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "nvReadItem RemoteException"

    invoke-static {v0, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8315
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_26
    nop

    .line 8316
    :goto_27
    return-object v2
.end method

.method public greylist-max-r nvResetConfig(I)Z
    .registers 6
    .param p1, "resetType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8399
    const-string v0, "TelephonyManager"

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_d

    .line 8400
    if-eq p1, v3, :cond_d

    .line 8401
    return v2

    .line 8405
    :cond_d
    :try_start_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 8406
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_40

    .line 8407
    if-ne p1, v3, :cond_1e

    .line 8408
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->rebootModem(I)Z

    move-result v0

    return v0

    .line 8409
    :cond_1e
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2a

    .line 8410
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->resetModemConfig(I)Z

    move-result v0

    return v0

    .line 8412
    :cond_2a
    const-string/jumbo v3, "nvResetConfig unsupported reset type"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_30} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_30} :catch_31

    goto :goto_40

    .line 8417
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_31
    move-exception v1

    .line 8418
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "nvResetConfig NPE"

    invoke-static {v0, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    .line 8415
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_39
    move-exception v1

    .line 8416
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "nvResetConfig RemoteException"

    invoke-static {v0, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8419
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_40
    :goto_40
    nop

    .line 8420
    :goto_41
    return v2
.end method

.method public greylist-max-o nvWriteCdmaPrl([B)Z
    .registers 6
    .param p1, "preferredRoamingList"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8365
    const-string v0, "TelephonyManager"

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    .line 8367
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 8368
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_15

    .line 8369
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->nvWriteCdmaPrl([B)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_14} :catch_16

    return v0

    .line 8368
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_15
    goto :goto_25

    .line 8372
    :catch_16
    move-exception v1

    .line 8373
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "nvWriteCdmaPrl NPE"

    invoke-static {v0, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 8370
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1e
    move-exception v1

    .line 8371
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "nvWriteCdmaPrl RemoteException"

    invoke-static {v0, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8374
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_25
    nop

    .line 8375
    :goto_26
    return v2
.end method

.method public greylist-max-o nvWriteItem(ILjava/lang/String;)Z
    .registers 7
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8336
    const-string v0, "TelephonyManager"

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    .line 8338
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 8339
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_15

    .line 8340
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->nvWriteItem(ILjava/lang/String;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_14} :catch_16

    return v0

    .line 8339
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_15
    goto :goto_25

    .line 8343
    :catch_16
    move-exception v1

    .line 8344
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "nvWriteItem NPE"

    invoke-static {v0, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 8341
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1e
    move-exception v1

    .line 8342
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "nvWriteItem RemoteException"

    invoke-static {v0, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8345
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_25
    nop

    .line 8346
    :goto_26
    return v2
.end method

.method public blacklist persistEmergencyCallDiagnosticData(Ljava/lang/String;Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;)V
    .registers 11
    .param p1, "dropboxTag"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19339
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 19340
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 19341
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 19337
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v1, v0

    .line 19342
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2c

    .line 19343
    nop

    .line 19344
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->isLogcatCollectionEnabled()Z

    move-result v3

    .line 19345
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->getLogcatCollectionStartTimeMillis()J

    move-result-wide v4

    .line 19346
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->isTelecomDumpsysCollectionEnabled()Z

    move-result v6

    .line 19347
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->isTelephonyDumpsysCollectionEnabled()Z

    move-result v7
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_2e

    .line 19343
    move-object v2, p1

    .end local p1    # "dropboxTag":Ljava/lang/String;
    .local v2, "dropboxTag":Ljava/lang/String;
    :try_start_25
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephony;->persistEmergencyCallDiagnosticData(Ljava/lang/String;ZJZZ)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2d

    .line 19349
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_29
    move-exception v0

    move-object p1, v0

    goto :goto_31

    .line 19342
    .end local v2    # "dropboxTag":Ljava/lang/String;
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p1    # "dropboxTag":Ljava/lang/String;
    :cond_2c
    move-object v2, p1

    .line 19351
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local p1    # "dropboxTag":Ljava/lang/String;
    .restart local v2    # "dropboxTag":Ljava/lang/String;
    :goto_2d
    goto :goto_49

    .line 19349
    .end local v2    # "dropboxTag":Ljava/lang/String;
    .restart local p1    # "dropboxTag":Ljava/lang/String;
    :catch_2e
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    .line 19350
    .restart local v2    # "dropboxTag":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while persistEmergencyCallDiagnosticData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19352
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_49
    return-void
.end method

.method public whitelist prepareForUnattendedReboot()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18545
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18546
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 18547
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->prepareForUnattendedReboot()I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 18552
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_17

    .line 18549
    :catch_c
    move-exception v0

    .line 18550
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Telephony#prepareForUnattendedReboot RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18551
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 18553
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist purchasePremiumCapability(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "capability"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 18983
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18984
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18986
    new-instance v0, Landroid/telephony/TelephonyManager$20;

    invoke-direct {v0, p0, p2, p3}, Landroid/telephony/TelephonyManager$20;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 18994
    .local v0, "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    const/16 v1, 0xb

    :try_start_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 18995
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_1b

    .line 18996
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 18997
    return-void

    .line 18999
    :cond_1b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-interface {v2, p1, v0, v3}, Lcom/android/internal/telephony/ITelephony;->purchasePremiumCapability(ILcom/android/internal/telephony/IIntegerConsumer;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_22} :catch_23

    .line 19002
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_2b

    .line 19000
    :catch_23
    move-exception v2

    .line 19001
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 19003
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method

.method public whitelist rebootModem()V
    .registers 4

    .line 8508
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 8509
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1a

    .line 8512
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->rebootModem(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 8518
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    nop

    .line 8519
    return-void

    .line 8513
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t reboot modem (it may be not supported)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1

    .line 8510
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_23

    .line 8515
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_23
    move-exception v0

    .line 8516
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "rebootRadio RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8517
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist rebootRadio()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8481
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 8482
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_11

    .line 8483
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->rebootModem(I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_12

    return v0

    .line 8482
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_11
    goto :goto_21

    .line 8487
    :catch_12
    move-exception v1

    .line 8488
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "rebootRadio NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 8485
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1a
    move-exception v1

    .line 8486
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "rebootRadio RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8489
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_21
    nop

    .line 8490
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist refreshUiccProfile()V
    .registers 4

    .line 4492
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4493
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->refreshUiccProfile(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4496
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_12

    .line 4494
    :catch_a
    move-exception v0

    .line 4495
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4497
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .registers 6
    .param p1, "logicalSlotIndex"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19128
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2e

    .line 19130
    if-eqz p2, :cond_26

    if-eqz p3, :cond_26

    .line 19134
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 19135
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v0, :cond_1e

    .line 19138
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->addCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 19139
    return-void

    .line 19136
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony registry service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19131
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CarrierPrivilegesCallback and executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19129
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerTelephonyCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    .registers 15
    .param p1, "includeLocationData"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/TelephonyCallback;

    .line 18128
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony service is null."

    if-eqz v0, :cond_56

    .line 18132
    if-eqz p2, :cond_4c

    if-eqz p3, :cond_4c

    .line 18135
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 18136
    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 18137
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v0, :cond_45

    .line 18138
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_26

    move v0, v3

    move v3, v1

    goto :goto_27

    :cond_26
    move v0, v3

    :goto_27
    if-nez p1, :cond_2b

    move v4, v1

    goto :goto_2c

    :cond_2b
    move v4, v0

    :goto_2c
    iget v6, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 18141
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 18142
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    if-eqz v5, :cond_3e

    move v10, v1

    goto :goto_3f

    :cond_3e
    move v10, v0

    .line 18138
    :goto_3f
    move-object v5, p2

    move-object v9, p3

    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/telephony/TelephonyCallback;
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v9, "callback":Landroid/telephony/TelephonyCallback;
    invoke-virtual/range {v2 .. v10}, Landroid/telephony/TelephonyRegistryManager;->registerTelephonyCallback(ZZLjava/util/concurrent/Executor;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;Z)V

    .line 18146
    return-void

    .line 18144
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .end local v9    # "callback":Landroid/telephony/TelephonyCallback;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/telephony/TelephonyCallback;
    :cond_45
    move-object v5, p2

    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 18132
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    :cond_4c
    move-object v5, p2

    move-object v9, p3

    .line 18133
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/telephony/TelephonyCallback;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local v9    # "callback":Landroid/telephony/TelephonyCallback;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "TelephonyCallback and executor must be non-null"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 18129
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .end local v9    # "callback":Landroid/telephony/TelephonyCallback;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/telephony/TelephonyCallback;
    :cond_56
    move-object v5, p2

    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/TelephonyCallback;

    .line 18031
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getLocationData()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 18032
    return-void
.end method

.method public whitelist reportDefaultNetworkStatus(Z)V
    .registers 5
    .param p1, "report"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14553
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14554
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_12

    .line 14555
    nop

    .line 14556
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 14555
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->carrierActionReportDefaultNetworkStatus(IZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 14560
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    goto :goto_1b

    .line 14558
    :catch_13
    move-exception v0

    .line 14559
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#carrierActionReportDefaultNetworkStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14561
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public whitelist requestCellInfoUpdate(Landroid/os/WorkSource;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V
    .registers 11
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7362
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_35

    move-object v1, v0

    .line 7363
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1c

    .line 7364
    const-wide/32 v2, 0xadbeeaa

    :try_start_a
    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_11

    .line 7367
    return-void

    .line 7365
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "workSource":Landroid/os/WorkSource;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/telephony/TelephonyManager$CellInfoCallback;
    throw v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_19

    .line 7397
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "workSource":Landroid/os/WorkSource;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/telephony/TelephonyManager$CellInfoCallback;
    :catch_19
    move-exception v0

    move-object v6, p1

    goto :goto_37

    .line 7371
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1c
    nop

    .line 7372
    :try_start_1d
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    new-instance v3, Landroid/telephony/TelephonyManager$5;

    invoke-direct {v3, p0, p2, p3}, Landroid/telephony/TelephonyManager$5;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    .line 7396
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v5
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2e} :catch_35

    .line 7371
    move-object v6, p1

    .end local p1    # "workSource":Landroid/os/WorkSource;
    .local v6, "workSource":Landroid/os/WorkSource;
    :try_start_2f
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephony;->requestCellInfoUpdateWithWorkSource(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_33

    .line 7400
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_3f

    .line 7397
    :catch_33
    move-exception v0

    goto :goto_37

    .end local v6    # "workSource":Landroid/os/WorkSource;
    .restart local p1    # "workSource":Landroid/os/WorkSource;
    :catch_35
    move-exception v0

    move-object v6, p1

    .line 7398
    .end local p1    # "workSource":Landroid/os/WorkSource;
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v6    # "workSource":Landroid/os/WorkSource;
    :goto_37
    new-instance p1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda17;

    invoke-direct {p1, p2, p3, v0}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda17;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 7401
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_3f
    return-void
.end method

.method public whitelist requestCellInfoUpdate(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;

    .line 7295
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7296
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_18

    .line 7297
    const-wide/32 v1, 0xadbeeaa

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_10

    .line 7300
    return-void

    .line 7298
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/telephony/TelephonyManager$CellInfoCallback;
    throw v1

    .line 7304
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/telephony/TelephonyManager$CellInfoCallback;
    :cond_18
    nop

    .line 7305
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    new-instance v2, Landroid/telephony/TelephonyManager$4;

    invoke-direct {v2, p0, p1, p2}, Landroid/telephony/TelephonyManager$4;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    .line 7328
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 7304
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->requestCellInfoUpdate(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 7332
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_37

    .line 7329
    :catch_2e
    move-exception v0

    .line 7330
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1, p2, v0}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda15;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 7333
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method

.method public whitelist requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/ModemActivityInfo;",
            "Landroid/telephony/TelephonyManager$ModemActivityInfoException;",
            ">;)V"
        }
    .end annotation

    .line 13369
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telephony/ModemActivityInfo;Landroid/telephony/TelephonyManager$ModemActivityInfoException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13370
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13374
    new-instance v0, Landroid/telephony/TelephonyManager$9;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/telephony/TelephonyManager$9;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 13426
    .local v0, "wrapperResultReceiver":Landroid/os/ResultReceiver;
    :try_start_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 13427
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_16

    .line 13428
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 13429
    return-void

    .line 13433
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_16
    goto :goto_1f

    .line 13431
    :catch_17
    move-exception v1

    .line 13432
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getModemActivityInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13434
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1f
    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda10;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13437
    return-void
.end method

.method public whitelist requestNetworkScan(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;
    .registers 15
    .param p1, "includeLocationData"    # I
    .param p2, "request"    # Landroid/telephony/NetworkScanRequest;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 9924
    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9925
    :try_start_3
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_32

    if-nez v0, :cond_14

    .line 9926
    :try_start_7
    new-instance v0, Landroid/telephony/TelephonyScanManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyScanManager;-><init>()V

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_14

    .line 9928
    :catchall_f
    move-exception v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    goto :goto_36

    :cond_14
    :goto_14
    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_32

    .line 9929
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    move v4, v0

    .line 9932
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    .line 9929
    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p2    # "request":Landroid/telephony/NetworkScanRequest;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .local v5, "request":Landroid/telephony/NetworkScanRequest;
    .local v6, "executor":Ljava/util/concurrent/Executor;
    .local v7, "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    invoke-virtual/range {v2 .. v9}, Landroid/telephony/TelephonyScanManager;->requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/NetworkScan;

    move-result-object p2

    return-object p2

    .line 9928
    .end local v5    # "request":Landroid/telephony/NetworkScanRequest;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v7    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .restart local p2    # "request":Landroid/telephony/NetworkScanRequest;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    :catchall_32
    move-exception v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p2    # "request":Landroid/telephony/NetworkScanRequest;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .restart local v5    # "request":Landroid/telephony/NetworkScanRequest;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local v7    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    :goto_36
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_38

    throw v0

    :catchall_38
    move-exception v0

    goto :goto_36
.end method

.method public greylist requestNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;
    .registers 4
    .param p1, "request"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9952
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Landroid/telephony/TelephonyManager;->requestNetworkScan(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;

    move-result-object v0

    return-object v0
.end method

.method public whitelist requestNetworkScan(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;
    .registers 5
    .param p1, "request"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 9872
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->requestNetworkScan(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;

    move-result-object v0

    return-object v0
.end method

.method public whitelist requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLjava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V
    .registers 13
    .param p1, "range"    # Landroid/telephony/PhoneNumberRange;
    .param p2, "timeoutMillis"    # J
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/telephony/NumberVerificationCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8646
    if-eqz p4, :cond_51

    .line 8649
    if-eqz p5, :cond_47

    .line 8653
    new-instance v0, Landroid/telephony/TelephonyManager$6;

    invoke-direct {v0, p0, p4, p5}, Landroid/telephony/TelephonyManager$6;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V

    move-object v5, v0

    .line 8678
    .local v5, "internalCallback":Lcom/android/internal/telephony/INumberVerificationCallback;
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_33

    .line 8679
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_26

    .line 8680
    const-wide/32 v2, 0xadbeeaa

    :try_start_13
    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 8683
    return-void

    .line 8681
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "internalCallback":Lcom/android/internal/telephony/INumberVerificationCallback;
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "range":Landroid/telephony/PhoneNumberRange;
    .end local p2    # "timeoutMillis":J
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/telephony/NumberVerificationCallback;
    throw v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_22} :catch_22

    .line 8689
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v5    # "internalCallback":Lcom/android/internal/telephony/INumberVerificationCallback;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "range":Landroid/telephony/PhoneNumberRange;
    .restart local p2    # "timeoutMillis":J
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "callback":Landroid/telephony/NumberVerificationCallback;
    :catch_22
    move-exception v0

    move-object v2, p1

    move-wide v3, p2

    goto :goto_36

    .line 8687
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_26
    nop

    .line 8688
    :try_start_27
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2b} :catch_33

    .line 8687
    move-object v2, p1

    move-wide v3, p2

    .end local p1    # "range":Landroid/telephony/PhoneNumberRange;
    .end local p2    # "timeoutMillis":J
    .local v2, "range":Landroid/telephony/PhoneNumberRange;
    .local v3, "timeoutMillis":J
    :try_start_2d
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephony;->requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLcom/android/internal/telephony/INumberVerificationCallback;Ljava/lang/String;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_31

    .line 8694
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_46

    .line 8689
    :catch_31
    move-exception v0

    goto :goto_36

    .end local v2    # "range":Landroid/telephony/PhoneNumberRange;
    .end local v3    # "timeoutMillis":J
    .restart local p1    # "range":Landroid/telephony/PhoneNumberRange;
    .restart local p2    # "timeoutMillis":J
    :catch_33
    move-exception v0

    move-object v2, p1

    move-wide v3, p2

    .line 8690
    .end local p1    # "range":Landroid/telephony/PhoneNumberRange;
    .end local p2    # "timeoutMillis":J
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v2    # "range":Landroid/telephony/PhoneNumberRange;
    .restart local v3    # "timeoutMillis":J
    :goto_36
    const-string p1, "TelephonyManager"

    const-string/jumbo p2, "requestNumberVerification RemoteException"

    invoke-static {p1, p2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8691
    new-instance p1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;

    invoke-direct {p1, p4, p5}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 8695
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_46
    return-void

    .line 8650
    .end local v2    # "range":Landroid/telephony/PhoneNumberRange;
    .end local v3    # "timeoutMillis":J
    .end local v5    # "internalCallback":Lcom/android/internal/telephony/INumberVerificationCallback;
    .restart local p1    # "range":Landroid/telephony/PhoneNumberRange;
    .restart local p2    # "timeoutMillis":J
    :cond_47
    move-object v2, p1

    move-wide v3, p2

    .end local p1    # "range":Landroid/telephony/PhoneNumberRange;
    .end local p2    # "timeoutMillis":J
    .restart local v2    # "range":Landroid/telephony/PhoneNumberRange;
    .restart local v3    # "timeoutMillis":J
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Callback must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8647
    .end local v2    # "range":Landroid/telephony/PhoneNumberRange;
    .end local v3    # "timeoutMillis":J
    .restart local p1    # "range":Landroid/telephony/PhoneNumberRange;
    .restart local p2    # "timeoutMillis":J
    :cond_51
    move-object v2, p1

    move-wide v3, p2

    .end local p1    # "range":Landroid/telephony/PhoneNumberRange;
    .end local p2    # "timeoutMillis":J
    .restart local v2    # "range":Landroid/telephony/PhoneNumberRange;
    .restart local v3    # "timeoutMillis":J
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Executor must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist requestRadioPowerOffForReason(I)V
    .registers 5
    .param p1, "reason"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11633
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11634
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 11635
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestRadioPowerOffForReason(II)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 11644
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_2c

    .line 11636
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "reason":I
    throw v1

    .line 11639
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "reason":I
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "reason":I
    throw v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_21

    .line 11641
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "reason":I
    :catch_21
    move-exception v0

    .line 11642
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#requestRadioPowerOffForReason"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11643
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 11645
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2c
    return-void
.end method

.method public whitelist resetAllCarrierActions()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14581
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14582
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_12

    .line 14583
    nop

    .line 14584
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 14583
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->carrierActionResetAll(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 14588
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    goto :goto_1b

    .line 14586
    :catch_13
    move-exception v0

    .line 14587
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#carrierActionResetAll"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14589
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public whitelist resetCarrierKeysForImsiEncryption()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4855
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 4856
    .local v0, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-eqz v0, :cond_18

    .line 4859
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 4860
    .local v1, "subId":I
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->resetCarrierKeysForImsiEncryption(ILjava/lang/String;)V

    .line 4863
    .end local v0    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .end local v1    # "subId":I
    goto :goto_39

    .line 4857
    .restart local v0    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IMSI error: Subscriber Info is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_20

    .line 4861
    .end local v0    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_20
    move-exception v0

    .line 4862
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getCarrierInfoForImsiEncryption RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4864
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_39
    return-void
.end method

.method public whitelist resetIms(I)V
    .registers 5
    .param p1, "slotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9260
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9261
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 9262
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->resetIms(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 9267
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_28

    .line 9264
    :catch_a
    move-exception v0

    .line 9265
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleImsOnOff, RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9266
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9265
    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9268
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method public whitelist resetOtaEmergencyNumberDbFilePath()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15427
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15428
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_a

    .line 15429
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->resetOtaEmergencyNumberDbFilePath()V

    .line 15436
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_1f

    .line 15431
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 15433
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_13
    move-exception v0

    .line 15434
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "resetOtaEmergencyNumberDbFilePath RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15435
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15437
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method

.method public whitelist resetRadioConfig()Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8444
    const-string v0, "TelephonyManager"

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 8445
    return v2

    .line 8448
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 8449
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_19

    .line 8450
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->resetModemConfig(I)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_18} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_18} :catch_1a

    return v0

    .line 8449
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_19
    goto :goto_29

    .line 8454
    :catch_1a
    move-exception v1

    .line 8455
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "resetRadioConfig NPE"

    invoke-static {v0, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 8452
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_22
    move-exception v1

    .line 8453
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "resetRadioConfig RemoteException"

    invoke-static {v0, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8456
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_29
    nop

    .line 8457
    :goto_2a
    return v2
.end method

.method public whitelist resetSettings()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13246
    :try_start_0
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetSettings: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13247
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13248
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2e

    .line 13249
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->factoryReset(ILjava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 13252
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_2e
    goto :goto_30

    .line 13251
    :catch_2f
    move-exception v0

    .line 13253
    :goto_30
    return-void
.end method

.method public whitelist sendDialerSpecialCode(Ljava/lang/String;)V
    .registers 5
    .param p1, "inputCode"    # Ljava/lang/String;

    .line 6368
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6369
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_7

    .line 6370
    return-void

    .line 6372
    :cond_7
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->sendDialerSpecialCode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 6375
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_2a

    .line 6373
    :catch_11
    move-exception v0

    .line 6374
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#sendDialerSpecialCode RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6376
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public greylist-max-o sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I
    .param p2, "content"    # Ljava/lang/String;

    .line 8280
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 8281
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 8282
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 8281
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_f

    .line 8284
    :catch_c
    move-exception v0

    goto :goto_10

    .line 8283
    :catch_e
    move-exception v0

    .line 8285
    :goto_f
    nop

    .line 8286
    :goto_10
    const-string v0, ""

    return-object v0
.end method

.method public whitelist sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "content"    # Ljava/lang/String;

    .line 8259
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist sendThermalMitigationRequest(Landroid/telephony/ThermalMitigationRequest;)I
    .registers 5
    .param p1, "thermalMitigationRequest"    # Landroid/telephony/ThermalMitigationRequest;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17980
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17981
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 17982
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    .line 17983
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 17982
    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->sendThermalMitigationRequest(ILandroid/telephony/ThermalMitigationRequest;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 17985
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "thermalMitigationRequest":Landroid/telephony/ThermalMitigationRequest;
    throw v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1c

    .line 17986
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "thermalMitigationRequest":Landroid/telephony/ThermalMitigationRequest;
    :catch_1c
    move-exception v0

    .line 17987
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Telephony#thermalMitigationRequest RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17988
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 17990
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist sendUssdRequest(Ljava/lang/String;Landroid/telephony/TelephonyManager$UssdResponseCallback;Landroid/os/Handler;)V
    .registers 10
    .param p1, "ussdRequest"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/telephony/TelephonyManager$UssdResponseCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 11432
    const-string v0, "UssdResponseCallback cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11433
    move-object v0, p0

    .line 11435
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v1, Landroid/telephony/TelephonyManager$7;

    invoke-direct {v1, p0, p3, p2, v0}, Landroid/telephony/TelephonyManager$7;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Landroid/telephony/TelephonyManager$UssdResponseCallback;Landroid/telephony/TelephonyManager;)V

    .line 11453
    .local v1, "wrappedCallback":Landroid/os/ResultReceiver;
    :try_start_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 11454
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_18

    .line 11455
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-interface {v2, v3, p1, v1}, Lcom/android/internal/telephony/ITelephony;->handleUssdRequest(ILjava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 11463
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_18
    goto :goto_36

    .line 11457
    :catch_19
    move-exception v2

    .line 11458
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TelephonyManager"

    const-string v4, "Error calling ITelephony#sendUSSDCode"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11459
    new-instance v3, Landroid/telephony/UssdResponse;

    const-string v4, ""

    invoke-direct {v3, p1, v4}, Landroid/telephony/UssdResponse;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 11460
    .local v3, "response":Landroid/telephony/UssdResponse;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 11461
    .local v4, "returnData":Landroid/os/Bundle;
    const-string v5, "USSD_RESPONSE"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11462
    const/4 v5, -0x2

    invoke-virtual {v1, v5, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 11464
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "response":Landroid/telephony/UssdResponse;
    .end local v4    # "returnData":Landroid/os/Bundle;
    :goto_36
    return-void
.end method

.method public whitelist sendVisualVoicemailSms(Ljava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 11
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;

    .line 5902
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "number":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "text":Ljava/lang/String;
    .end local p4    # "sentIntent":Landroid/app/PendingIntent;
    .local v2, "number":Ljava/lang/String;
    .local v3, "port":I
    .local v4, "text":Ljava/lang/String;
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyManager;->sendVisualVoicemailSmsForSubscriber(ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 5903
    return-void
.end method

.method public greylist-max-o sendVisualVoicemailSmsForSubscriber(ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 15
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;

    .line 6018
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v1, v0

    .line 6019
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1e

    .line 6020
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 6021
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_24

    .line 6020
    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    .end local p1    # "subId":I
    .end local p2    # "number":Ljava/lang/String;
    .end local p3    # "port":I
    .end local p4    # "text":Ljava/lang/String;
    .end local p5    # "sentIntent":Landroid/app/PendingIntent;
    .local v4, "subId":I
    .local v5, "number":Ljava/lang/String;
    .local v6, "port":I
    .local v7, "text":Ljava/lang/String;
    .local v8, "sentIntent":Landroid/app/PendingIntent;
    :try_start_18
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ITelephony;->sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_23

    .line 6024
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1c
    move-exception v0

    goto :goto_2a

    .line 6019
    .end local v4    # "subId":I
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p1    # "subId":I
    .restart local p2    # "number":Ljava/lang/String;
    .restart local p3    # "port":I
    .restart local p4    # "text":Ljava/lang/String;
    .restart local p5    # "sentIntent":Landroid/app/PendingIntent;
    :cond_1e
    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 6025
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local p1    # "subId":I
    .end local p2    # "number":Ljava/lang/String;
    .end local p3    # "port":I
    .end local p4    # "text":Ljava/lang/String;
    .end local p5    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v4    # "subId":I
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "port":I
    .restart local v7    # "text":Ljava/lang/String;
    .restart local v8    # "sentIntent":Landroid/app/PendingIntent;
    :goto_23
    goto :goto_2a

    .line 6024
    .end local v4    # "subId":I
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    .restart local p1    # "subId":I
    .restart local p2    # "number":Ljava/lang/String;
    .restart local p3    # "port":I
    .restart local p4    # "text":Ljava/lang/String;
    .restart local p5    # "sentIntent":Landroid/app/PendingIntent;
    :catch_24
    move-exception v0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 6026
    .end local p1    # "subId":I
    .end local p2    # "number":Ljava/lang/String;
    .end local p3    # "port":I
    .end local p4    # "text":Ljava/lang/String;
    .end local p5    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v4    # "subId":I
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "port":I
    .restart local v7    # "text":Ljava/lang/String;
    .restart local v8    # "sentIntent":Landroid/app/PendingIntent;
    :goto_2a
    return-void
.end method

.method public whitelist setAllowedCarriers(ILjava/util/List;)I
    .registers 6
    .param p1, "slotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14062
    .local p2, "carriers":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    const/4 v0, -0x1

    if-eqz p2, :cond_2f

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2f

    .line 14068
    :cond_a
    invoke-static {}, Landroid/telephony/CarrierRestrictionRules;->newBuilder()Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    .line 14069
    invoke-virtual {v1, p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setAllowedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    .line 14071
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 14072
    const/4 v2, 0x1

    goto :goto_1b

    .line 14073
    :cond_1a
    const/4 v2, 0x0

    .line 14070
    :goto_1b
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setDefaultCarrierRestriction(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    .line 14074
    invoke-virtual {v1}, Landroid/telephony/CarrierRestrictionRules$Builder;->build()Landroid/telephony/CarrierRestrictionRules;

    move-result-object v1

    .line 14076
    .local v1, "carrierRestrictionRules":Landroid/telephony/CarrierRestrictionRules;
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->setCarrierRestrictionRules(Landroid/telephony/CarrierRestrictionRules;)I

    move-result v2

    .line 14079
    .local v2, "result":I
    if-nez v2, :cond_2e

    .line 14080
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 14082
    :cond_2e
    return v0

    .line 14063
    .end local v1    # "carrierRestrictionRules":Landroid/telephony/CarrierRestrictionRules;
    .end local v2    # "result":I
    :cond_2f
    :goto_2f
    return v0
.end method

.method public whitelist setAllowedNetworkTypes(J)Z
    .registers 6
    .param p1, "allowedNetworkTypes"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10260
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10261
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 10262
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->checkNetworkTypeBitmask(J)J

    move-result-wide v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_17

    .line 10263
    .end local p1    # "allowedNetworkTypes":J
    .local v1, "allowedNetworkTypes":J
    :try_start_a
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result p1

    const/4 p2, 0x2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJ)Z

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return p1

    .line 10266
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_14
    move-exception p1

    goto :goto_1a

    .line 10268
    .end local v1    # "allowedNetworkTypes":J
    .restart local p1    # "allowedNetworkTypes":J
    :cond_16
    goto :goto_23

    .line 10266
    :catch_17
    move-exception v0

    move-wide v1, p1

    move-object p1, v0

    .line 10267
    .restart local v1    # "allowedNetworkTypes":J
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_1a
    const-string p2, "TelephonyManager"

    const-string/jumbo v0, "setAllowedNetworkTypes RemoteException"

    invoke-static {p2, v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide p1, v1

    .line 10269
    .end local v1    # "allowedNetworkTypes":J
    .local p1, "allowedNetworkTypes":J
    :goto_23
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setAllowedNetworkTypesForReason(IJ)V
    .registers 7
    .param p1, "reason"    # I
    .param p2, "allowedNetworkTypes"    # J

    .line 10361
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isValidAllowedNetworkTypesReason(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 10366
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10367
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 10368
    invoke-direct {p0, p2, p3}, Landroid/telephony/TelephonyManager;->checkNetworkTypeBitmask(J)J

    move-result-wide v1

    move-wide p2, v1

    .line 10369
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJ)Z

    .line 10377
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_2e

    .line 10372
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "reason":I
    .end local p2    # "allowedNetworkTypes":J
    throw v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_22} :catch_22

    .line 10374
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "reason":I
    .restart local p2    # "allowedNetworkTypes":J
    :catch_22
    move-exception v0

    .line 10375
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setAllowedNetworkTypesForReason RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10376
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10378
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2e
    return-void

    .line 10362
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid AllowedNetworkTypesReason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-p setBasebandVersionForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "version"    # Ljava/lang/String;

    .line 12900
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12902
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->baseband_version()Ljava/util/List;

    move-result-object v0

    .line 12901
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 12903
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->baseband_version(Ljava/util/List;)V

    .line 12905
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    return-void
.end method

.method public whitelist setCallComposerStatus(I)V
    .registers 5
    .param p1, "status"    # I

    .line 11021
    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->businessCallComposer()Z

    move-result v0

    const-string/jumbo v1, "requested status is invalid"

    if-eqz v0, :cond_15

    .line 11022
    const/4 v0, 0x2

    if-gt p1, v0, :cond_f

    if-ltz p1, :cond_f

    goto :goto_1a

    .line 11024
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11027
    :cond_15
    const/4 v0, 0x1

    if-gt p1, v0, :cond_34

    if-ltz p1, :cond_34

    .line 11033
    :goto_1a
    :try_start_1a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11034
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_27

    .line 11035
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setCallComposerStatus(II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_28

    .line 11040
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_27
    goto :goto_33

    .line 11037
    :catch_28
    move-exception v0

    .line 11038
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setCallComposerStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11039
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 11041
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_33
    return-void

    .line 11029
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCallForwarding(Landroid/telephony/CallForwardingInfo;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .param p1, "callForwardingInfo"    # Landroid/telephony/CallForwardingInfo;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CallForwardingInfo;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 16879
    .local p3, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "TelephonyManager"

    if-eqz p1, :cond_67

    .line 16882
    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->getReason()I

    move-result v1

    .line 16883
    .local v1, "callForwardingReason":I
    if-ltz v1, :cond_5f

    const/4 v2, 0x5

    if-gt v1, v2, :cond_5f

    .line 16887
    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 16888
    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 16891
    const/4 v2, 0x2

    if-ne v1, v2, :cond_33

    .line 16892
    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->getTimeoutSeconds()I

    move-result v2

    if-lez v2, :cond_23

    goto :goto_33

    .line 16893
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "callForwarding timeout isn\'t positive"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16889
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "callForwarding number is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16896
    :cond_33
    :goto_33
    if-eqz p3, :cond_38

    .line 16897
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16900
    :cond_38
    new-instance v2, Landroid/telephony/TelephonyManager$15;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/TelephonyManager$15;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 16909
    .local v2, "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    :try_start_3d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 16910
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_5d

    .line 16911
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v4

    invoke-interface {v3, v4, p1, v2}, Lcom/android/internal/telephony/ITelephony;->setCallForwarding(ILandroid/telephony/CallForwardingInfo;Lcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4a} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_4a} :catch_4b

    goto :goto_5d

    .line 16916
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_4b
    move-exception v3

    .line 16917
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "setCallForwarding NPE"

    invoke-static {v0, v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16918
    throw v3

    .line 16913
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_53
    move-exception v3

    .line 16914
    .local v3, "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "setCallForwarding RemoteException"

    invoke-static {v0, v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16915
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 16919
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    nop

    .line 16920
    return-void

    .line 16885
    .end local v2    # "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "callForwardingReason is out of range"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16880
    .end local v1    # "callForwardingReason":I
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callForwardingInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCallWaitingEnabled(ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "enabled"    # Z
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 17057
    .local p3, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "TelephonyManager"

    if-eqz p3, :cond_7

    .line 17058
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17061
    :cond_7
    new-instance v1, Landroid/telephony/TelephonyManager$17;

    invoke-direct {v1, p0, p2, p3}, Landroid/telephony/TelephonyManager$17;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 17070
    .local v1, "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    :try_start_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 17071
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_2c

    .line 17072
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-interface {v2, v3, p1, v1}, Lcom/android/internal/telephony/ITelephony;->setCallWaitingStatus(IZLcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_19} :catch_1a

    goto :goto_2c

    .line 17077
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1a
    move-exception v2

    .line 17078
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "setCallWaitingStatus NPE"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17079
    throw v2

    .line 17074
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_22
    move-exception v2

    .line 17075
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "setCallWaitingStatus RemoteException"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17076
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 17080
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_2c
    :goto_2c
    nop

    .line 17081
    return-void
.end method

.method public whitelist setCarrierDataEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14401
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IZ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_5

    .line 14404
    goto :goto_1e

    .line 14402
    :catch_5
    move-exception v0

    .line 14403
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setDataEnabledForReason e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14405
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1e
    return-void
.end method

.method public greylist-max-o setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V
    .registers 5
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;

    .line 4913
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 4914
    .local v0, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v0, :cond_7

    return-void

    .line 4915
    :cond_7
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->setCarrierInfoForImsiEncryption(ILjava/lang/String;Landroid/telephony/ImsiEncryptionInfo;)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 4923
    .end local v0    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    nop

    .line 4924
    return-void

    .line 4920
    :catch_14
    move-exception v0

    .line 4921
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setCarrierInfoForImsiEncryption RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4922
    return-void

    .line 4917
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 4919
    .local v0, "ex":Ljava/lang/NullPointerException;
    return-void
.end method

.method public whitelist setCarrierRestrictionRules(Landroid/telephony/CarrierRestrictionRules;)I
    .registers 5
    .param p1, "rules"    # Landroid/telephony/CarrierRestrictionRules;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14193
    const-string v0, "Error calling ITelephony#setAllowedCarriers"

    const-string v1, "TelephonyManager"

    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 14194
    .local v2, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_f

    .line 14195
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    return v0

    .line 14194
    .end local v2    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_19

    .line 14199
    :catch_10
    move-exception v2

    .line 14200
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 14197
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v2

    .line 14198
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14201
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_19
    nop

    .line 14202
    :goto_1a
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "gid1"    # Ljava/lang/String;
    .param p5, "gid2"    # Ljava/lang/String;
    .param p6, "plmn"    # Ljava/lang/String;
    .param p7, "spn"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14977
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v1, v0

    .line 14978
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1c

    .line 14979
    nop

    .line 14980
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    .line 14979
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/ITelephony;->setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 14985
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1c
    goto :goto_1e

    .line 14983
    :catch_1d
    move-exception v0

    .line 14986
    :goto_1e
    return-void
.end method

.method public blacklist setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "gid1"    # Ljava/lang/String;
    .param p5, "gid2"    # Ljava/lang/String;
    .param p6, "plmn"    # Ljava/lang/String;
    .param p7, "spn"    # Ljava/lang/String;
    .param p8, "carrierPriviledgeRules"    # Ljava/lang/String;
    .param p9, "apn"    # Ljava/lang/String;

    .line 15004
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v1, v0

    .line 15005
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1e

    .line 15006
    nop

    .line 15007
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    .line 15006
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/ITelephony;->setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 15012
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1e
    goto :goto_20

    .line 15010
    :catch_1f
    move-exception v0

    .line 15013
    :goto_20
    return-void
.end method

.method public whitelist setCdmaRoamingMode(I)V
    .registers 6
    .param p1, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12130
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 12131
    :cond_7
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    .line 12135
    :try_start_e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12136
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_29

    .line 12137
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setCdmaRoamingMode(II)Z

    move-result v1

    .line 12138
    .local v1, "result":Z
    if-eqz v1, :cond_20

    .line 12139
    .end local v1    # "result":Z
    nop

    .line 12145
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_3d

    .line 12138
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v1    # "result":Z
    :cond_20
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "radio is unavailable."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "mode":I
    throw v2

    .line 12140
    .end local v1    # "result":Z
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "mode":I
    :cond_29
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "mode":I
    throw v1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_32} :catch_32

    .line 12142
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "mode":I
    :catch_32
    move-exception v0

    .line 12143
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setCdmaRoamingMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12144
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 12146
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_3d
    return-void

    .line 12132
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Phone does not support CDMA."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCdmaSubscriptionMode(I)V
    .registers 6
    .param p1, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12260
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 12261
    :cond_7
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    .line 12265
    :try_start_e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12266
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_29

    .line 12267
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setCdmaSubscriptionMode(II)Z

    move-result v1

    .line 12268
    .local v1, "result":Z
    if-eqz v1, :cond_20

    .line 12269
    .end local v1    # "result":Z
    nop

    .line 12275
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_3d

    .line 12268
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v1    # "result":Z
    :cond_20
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "radio is unavailable."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "mode":I
    throw v2

    .line 12270
    .end local v1    # "result":Z
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "mode":I
    :cond_29
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "mode":I
    throw v1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_32} :catch_32

    .line 12272
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "mode":I
    :catch_32
    move-exception v0

    .line 12273
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setCdmaSubscriptionMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12274
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 12276
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_3d
    return-void

    .line 12262
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Phone does not support CDMA."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCellBroadcastIdRanges(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 19717
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellBroadcastIdRange;>;"
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    if-nez p3, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/telephony/TelephonyManager$21;

    invoke-direct {v0, p0, p2, p3}, Landroid/telephony/TelephonyManager$21;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 19730
    .local v0, "consumer":Lcom/android/internal/telephony/IIntegerConsumer;
    :goto_9
    :try_start_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 19731
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 19732
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/telephony/ITelephony;->setCellBroadcastIdRanges(ILjava/util/List;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 19738
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_24

    .line 19734
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "consumer":Lcom/android/internal/telephony/IIntegerConsumer;
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellBroadcastIdRange;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    throw v2
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_20} :catch_20

    .line 19736
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "consumer":Lcom/android/internal/telephony/IIntegerConsumer;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellBroadcastIdRange;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :catch_20
    move-exception v1

    .line 19737
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19739
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public blacklist setCellInfoListRate(II)V
    .registers 4
    .param p1, "rateInMillis"    # I
    .param p2, "subId"    # I

    .line 7429
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7430
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_d

    .line 7431
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_d

    .line 7433
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_a
    move-exception v0

    goto :goto_e

    .line 7432
    :catch_c
    move-exception v0

    .line 7434
    :cond_d
    :goto_d
    nop

    .line 7435
    :goto_e
    return-void
.end method

.method public whitelist setDataActivationState(I)V
    .registers 3
    .param p1, "activationState"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6143
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataActivationState(II)V

    .line 6144
    return-void
.end method

.method public greylist-max-o setDataActivationState(II)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "activationState"    # I

    .line 6165
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6166
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_d

    .line 6167
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setDataActivationState(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_d

    .line 6169
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_a
    move-exception v0

    goto :goto_e

    .line 6168
    :catch_c
    move-exception v0

    .line 6170
    :cond_d
    :goto_d
    nop

    .line 6171
    :goto_e
    return-void
.end method

.method public whitelist setDataEnabled(IZ)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11957
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IIZ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_5

    .line 11960
    goto :goto_1e

    .line 11958
    :catch_5
    move-exception v0

    .line 11959
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setDataEnabledForReason e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11961
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1e
    return-void
.end method

.method public whitelist setDataEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11942
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 11943
    return-void
.end method

.method public whitelist setDataEnabledForReason(IZ)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .line 14702
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IIZ)V

    .line 14703
    return-void
.end method

.method public greylist-max-o setDataNetworkType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 13122
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneId(I)I

    move-result v0

    .line 13123
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 13124
    return-void
.end method

.method public greylist-max-r setDataNetworkTypeForPhone(II)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    .line 13134
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 13136
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->data_network_type()Ljava/util/List;

    move-result-object v0

    .line 13137
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .line 13135
    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 13138
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->data_network_type(Ljava/util/List;)V

    .line 13140
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    return-void
.end method

.method public whitelist setDataRoamingEnabled(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12299
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12300
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_12

    .line 12301
    nop

    .line 12302
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 12301
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabled(IZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 12306
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    goto :goto_1b

    .line 12304
    :catch_13
    move-exception v0

    .line 12305
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setDataRoamingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12307
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public whitelist setEnableCellularIdentifierDisclosureNotifications(Z)V
    .registers 5
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19427
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19428
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_a

    .line 19429
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setEnableCellularIdentifierDisclosureNotifications(Z)V

    .line 19436
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_1f

    .line 19431
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "enable":Z
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 19433
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "enable":Z
    :catch_13
    move-exception v0

    .line 19434
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setEnableCellularIdentifierDisclosureNotifications RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19435
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19437
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method

.method public whitelist setForbiddenPlmns(Ljava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 9132
    .local p1, "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "TelephonyManager"

    const/4 v2, -0x1

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v3, v0

    .line 9133
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v3, :cond_b

    return v2

    .line 9134
    :cond_b
    nop

    .line 9135
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_18} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_18} :catch_25

    .line 9134
    const/4 v5, 0x2

    move-object v6, p1

    .end local p1    # "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1a
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/ITelephony;->setForbiddenPlmns(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1e} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1e} :catch_1f

    return p1

    .line 9138
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1f
    move-exception v0

    move-object p1, v0

    goto :goto_28

    .line 9136
    :catch_22
    move-exception v0

    move-object p1, v0

    goto :goto_47

    .line 9138
    .end local v6    # "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_25
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    .line 9140
    .restart local v6    # "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "ex":Ljava/lang/NullPointerException;
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setForbiddenPlmns NullPointerException: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 9136
    .end local v6    # "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_44
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    .line 9137
    .restart local v6    # "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setForbiddenPlmns RemoteException: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9141
    .end local p1    # "ex":Landroid/os/RemoteException;
    nop

    .line 9142
    :goto_63
    return v2
.end method

.method public whitelist setIccLockEnabled(ZLjava/lang/String;)Landroid/telephony/PinResult;
    .registers 7
    .param p1, "enabled"    # Z
    .param p2, "pin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17257
    const-string/jumbo v0, "setIccLockEnabled pin can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17259
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17260
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2e

    .line 17261
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setIccLockEnabled(IZLjava/lang/String;)I

    move-result v1

    .line 17262
    .local v1, "result":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_20

    .line 17263
    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    .line 17264
    :cond_20
    if-gez v1, :cond_27

    .line 17265
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v2

    return-object v2

    .line 17267
    :cond_27
    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    .line 17270
    .end local v1    # "result":I
    :cond_2e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "enabled":Z
    .end local p2    # "pin":Ljava/lang/String;
    throw v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_37} :catch_37

    .line 17272
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "enabled":Z
    .restart local p2    # "pin":Ljava/lang/String;
    :catch_37
    move-exception v0

    .line 17273
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setIccLockEnabled RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17274
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 17276
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r setImsRegistrationState(Z)V
    .registers 3
    .param p1, "registered"    # Z

    .line 9358
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9359
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 9360
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setImsRegistrationState(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 9362
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_b

    .line 9361
    :catch_a
    move-exception v0

    .line 9363
    :goto_b
    return-void
.end method

.method public greylist-max-o setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .line 5495
    :try_start_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez p3, :cond_7

    const-string v1, ""

    goto :goto_8

    :cond_7
    move-object v1, p3

    :goto_8
    invoke-virtual {v0, p1, v1}, Landroid/telephony/SubscriptionManager;->setCarrierPhoneNumber(ILjava/lang/String;)V

    .line 5497
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5498
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 5499
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_17

    return v1

    .line 5498
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_16
    goto :goto_1a

    .line 5501
    :catch_17
    move-exception v0

    goto :goto_1b

    .line 5500
    :catch_19
    move-exception v0

    .line 5502
    :goto_1a
    nop

    .line 5503
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setLine1NumberForDisplay(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5474
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist setMobileDataPolicyEnabled(IZ)V
    .registers 6
    .param p1, "policy"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17160
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17161
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_d

    .line 17162
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setMobileDataPolicyEnabled(IIZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 17166
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_27

    .line 17164
    :catch_e
    move-exception v0

    .line 17165
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#setMobileDataPolicyEnabled RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17167
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method

.method public whitelist setMultiSimCarrierRestriction(Z)V
    .registers 5
    .param p1, "isMultiSimCarrierRestricted"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16149
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16150
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 16151
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setMultiSimCarrierRestriction(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 16155
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_13

    .line 16153
    :catch_a
    move-exception v0

    .line 16154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setMultiSimCarrierRestriction RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16156
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public greylist-max-r setNetworkOperatorNameForPhone(ILjava/lang/String;)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 13057
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 13059
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_alpha()Ljava/util/List;

    move-result-object v0

    .line 13058
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 13061
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_e
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->operator_alpha(Ljava/util/List;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_11} :catch_12

    .line 13078
    goto :goto_5a

    .line 13062
    :catch_12
    move-exception v1

    .line 13063
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "setNetworkOperatorNameForPhone: "

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13065
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 13066
    .local v2, "numberOfEntries":I
    rsub-int/lit8 v4, v2, 0x5b

    div-int/2addr v4, v2

    .line 13070
    .local v4, "maxOperatorLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_40

    .line 13071
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3d

    .line 13072
    nop

    .line 13073
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v4}, Landroid/text/TextUtils;->truncateStringForUtf8Storage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 13072
    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13070
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 13076
    .end local v5    # "i":I
    :cond_40
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->operator_alpha(Ljava/util/List;)V

    .line 13077
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "successfully truncated operator_alpha: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13080
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "numberOfEntries":I
    .end local v4    # "maxOperatorLength":I
    :cond_5a
    :goto_5a
    return-void
.end method

.method public greylist-max-r setNetworkOperatorNumericForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "numeric"    # Ljava/lang/String;

    .line 13090
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 13092
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_numeric()Ljava/util/List;

    move-result-object v0

    .line 13091
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 13093
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->operator_numeric(Ljava/util/List;)V

    .line 13095
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    return-void
.end method

.method public greylist-max-r setNetworkRoamingForPhone(IZ)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "isRoaming"    # Z

    .line 13105
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 13107
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_is_roaming()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 13106
    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 13108
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->operator_is_roaming(Ljava/util/List;)V

    .line 13110
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_15
    return-void
.end method

.method public whitelist setNetworkSelectionModeAutomatic()V
    .registers 4

    .line 9779
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9780
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1f

    .line 9781
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeAutomatic(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_1f

    .line 9785
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_10
    move-exception v1

    .line 9786
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setNetworkSelectionModeAutomatic NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 9783
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_18
    move-exception v1

    .line 9784
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "setNetworkSelectionModeAutomatic RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9787
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    nop

    .line 9788
    :goto_20
    return-void
.end method

.method public blacklist setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z
    .registers 6
    .param p1, "operatorInfo"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "persistSelection"    # Z

    .line 10038
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10039
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_10

    .line 10040
    nop

    .line 10041
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    .line 10040
    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return v1

    .line 10045
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    goto :goto_1a

    .line 10043
    :catch_11
    move-exception v0

    .line 10044
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setNetworkSelectionModeManual RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10046
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setNetworkSelectionModeManual(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "persistSelection"    # Z

    .line 9978
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    const-string v1, ""

    invoke-direct {v0, v1, v1, p1}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist setNetworkSelectionModeManual(Ljava/lang/String;ZI)Z
    .registers 6
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "persistSelection"    # Z
    .param p3, "ran"    # I

    .line 10012
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    const-string v1, ""

    invoke-direct {v0, v1, v1, p1, p3}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p2}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist setNrDualConnectivityState(I)I
    .registers 5
    .param p1, "nrDualConnectivityState"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17454
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17455
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 17456
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setNrDualConnectivityState(II)I

    move-result v1

    return v1

    .line 17458
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "nrDualConnectivityState":I
    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 17460
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "nrDualConnectivityState":I
    :catch_18
    move-exception v0

    .line 17461
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setNrDualConnectivityState RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17462
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 17465
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist setNullCipherAndIntegrityEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 19370
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19371
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_a

    .line 19372
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setNullCipherAndIntegrityEnabled(Z)V

    .line 19379
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_1f

    .line 19374
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "enabled":Z
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 19376
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "enabled":Z
    :catch_13
    move-exception v0

    .line 19377
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setNullCipherAndIntegrityEnabled RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19378
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19380
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method

.method public whitelist setNullCipherNotificationsEnabled(Z)V
    .registers 5
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19479
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19480
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_a

    .line 19481
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setNullCipherNotificationsEnabled(Z)V

    .line 19488
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_1f

    .line 19483
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "enable":Z
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 19485
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "enable":Z
    :catch_13
    move-exception v0

    .line 19486
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setEnableNullCipherNotifications RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19487
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19489
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method

.method public greylist-max-o setOperatorBrandOverride(ILjava/lang/String;)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "brand"    # Ljava/lang/String;

    .line 10641
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10642
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 10643
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    .line 10642
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1d

    .line 10646
    :catch_e
    move-exception v1

    .line 10647
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setOperatorBrandOverride NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 10644
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v1

    .line 10645
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "setOperatorBrandOverride RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10648
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1d
    nop

    .line 10649
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setOperatorBrandOverride(Ljava/lang/String;)Z
    .registers 3
    .param p1, "brand"    # Ljava/lang/String;

    .line 10621
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist setOpportunisticNetworkState(Z)Z
    .registers 7
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15076
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "<unknown>"

    .line 15077
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_d
    const/4 v1, 0x0

    .line 15079
    .local v1, "ret":Z
    :try_start_e
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v2

    .line 15080
    .local v2, "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    if-eqz v2, :cond_19

    .line 15081
    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/IOns;->setEnable(ZLjava/lang/String;)Z

    move-result v3
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_1a

    move v1, v3

    .line 15085
    .end local v2    # "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    :cond_19
    goto :goto_22

    .line 15083
    :catch_1a
    move-exception v2

    .line 15084
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "TelephonyManager"

    const-string v4, "enableOpportunisticNetwork RemoteException"

    invoke-static {v3, v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15087
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_22
    return v1
.end method

.method public greylist-max-p setPhoneType(II)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    .line 12938
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 12940
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->current_active_phone()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 12939
    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 12941
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->current_active_phone(Ljava/util/List;)V

    .line 12943
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_15
    return-void
.end method

.method public blacklist setPolicyDataEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14602
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IZ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_5

    .line 14605
    goto :goto_1e

    .line 14603
    :catch_5
    move-exception v0

    .line 14604
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setDataEnabledForReason e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14606
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1e
    return-void
.end method

.method public greylist-max-r setPreferredNetworkType(II)Z
    .registers 7
    .param p1, "subId"    # I
    .param p2, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10164
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10165
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_12

    .line 10166
    nop

    .line 10168
    invoke-static {p2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v2

    int-to-long v2, v2

    .line 10166
    invoke-interface {v1, p1, v0, v2, v3}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJ)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    return v0

    .line 10172
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    goto :goto_1c

    .line 10170
    :catch_13
    move-exception v1

    .line 10171
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setPreferredNetworkType RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10173
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1c
    return v0
.end method

.method public whitelist setPreferredNetworkTypeBitmask(J)Z
    .registers 7
    .param p1, "networkTypeBitmask"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10206
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10207
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_16

    .line 10208
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->checkNetworkTypeBitmask(J)J

    move-result-wide v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_17

    .line 10209
    .end local p1    # "networkTypeBitmask":J
    .local v2, "networkTypeBitmask":J
    :try_start_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result p1

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJ)Z

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    return p1

    .line 10212
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_14
    move-exception p1

    goto :goto_1a

    .line 10214
    .end local v2    # "networkTypeBitmask":J
    .restart local p1    # "networkTypeBitmask":J
    :cond_16
    goto :goto_23

    .line 10212
    :catch_17
    move-exception v1

    move-wide v2, p1

    move-object p1, v1

    .line 10213
    .restart local v2    # "networkTypeBitmask":J
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_1a
    const-string p2, "TelephonyManager"

    const-string/jumbo v1, "setPreferredNetworkTypeBitmask RemoteException"

    invoke-static {p2, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide p1, v2

    .line 10215
    .end local v2    # "networkTypeBitmask":J
    .local p1, "networkTypeBitmask":J
    :goto_23
    return v0
.end method

.method public whitelist setPreferredNetworkTypeToGlobal()Z
    .registers 2

    .line 10477
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->setPreferredNetworkTypeToGlobal(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o setPreferredNetworkTypeToGlobal(I)Z
    .registers 3
    .param p1, "subId"    # I

    .line 10490
    const/16 v0, 0x1b

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v0

    return v0
.end method

.method public whitelist setPreferredOpportunisticDataSubscription(IZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .param p1, "subId"    # I
    .param p2, "needValidation"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 15882
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "<unknown>"

    .line 15884
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_d
    :try_start_d
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v1

    .line 15885
    .local v1, "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    if-nez v1, :cond_2c

    .line 15886
    const-wide/32 v2, 0xadbeeaa

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 15887
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Opportunistic Network Service is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "subId":I
    .end local p2    # "needValidation":Z
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    throw v2

    .line 15890
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "subId":I
    .restart local p2    # "needValidation":Z
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :cond_24
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Null Opportunistic Network Service!"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "subId":I
    .end local p2    # "needValidation":Z
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    throw v2

    .line 15893
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "subId":I
    .restart local p2    # "needValidation":Z
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :cond_2c
    new-instance v2, Landroid/telephony/TelephonyManager$11;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/TelephonyManager$11;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 15910
    .local v2, "callbackStub":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    nop

    .line 15911
    invoke-interface {v1, p1, p2, v2, v0}, Lcom/android/internal/telephony/IOns;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;Ljava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_35} :catch_36

    .line 15925
    .end local v1    # "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    .end local v2    # "callbackStub":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    goto :goto_4c

    .line 15913
    :catch_36
    move-exception v1

    .line 15914
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setPreferredOpportunisticDataSubscription RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15915
    if-eqz p3, :cond_4d

    if-nez p4, :cond_44

    goto :goto_4d

    .line 15918
    :cond_44
    new-instance v2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda14;

    invoke-direct {v2, p3, p4}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda14;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 15926
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_4c
    return-void

    .line 15916
    .restart local v1    # "ex":Landroid/os/RemoteException;
    :cond_4d
    :goto_4d
    return-void
.end method

.method public whitelist setRadio(Z)Z
    .registers 7
    .param p1, "turnOn"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11555
    const/4 v0, 0x1

    .line 11557
    .local v0, "result":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 11558
    :try_start_4
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->clearRadioPowerOffForReason(I)V

    goto :goto_b

    .line 11560
    :cond_8
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->requestRadioPowerOffForReason(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    .line 11567
    :goto_b
    goto :goto_2e

    .line 11562
    :catch_c
    move-exception v1

    .line 11564
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_12

    const-string v2, "clearRadioPowerOffForReason"

    goto :goto_15

    :cond_12
    const-string/jumbo v2, "requestRadioPowerOffForReason"

    .line 11565
    .local v2, "calledFunction":Ljava/lang/String;
    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TelephonyManager"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11566
    const/4 v0, 0x0

    .line 11568
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "calledFunction":Ljava/lang/String;
    :goto_2e
    return v0
.end method

.method public whitelist setRadioEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14431
    const/4 v0, 0x2

    if-eqz p1, :cond_7

    .line 14432
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->clearRadioPowerOffForReason(I)V

    goto :goto_a

    .line 14434
    :cond_7
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->requestRadioPowerOffForReason(I)V

    .line 14436
    :goto_a
    return-void
.end method

.method public whitelist setRadioPower(Z)Z
    .registers 7
    .param p1, "turnOn"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11584
    const/4 v0, 0x1

    .line 11586
    .local v0, "result":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 11587
    :try_start_4
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->clearRadioPowerOffForReason(I)V

    goto :goto_b

    .line 11589
    :cond_8
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->requestRadioPowerOffForReason(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    .line 11596
    :goto_b
    goto :goto_2e

    .line 11591
    :catch_c
    move-exception v1

    .line 11593
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_12

    const-string v2, "clearRadioPowerOffForReason"

    goto :goto_15

    :cond_12
    const-string/jumbo v2, "requestRadioPowerOffForReason"

    .line 11594
    .local v2, "calledFunction":Ljava/lang/String;
    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TelephonyManager"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11595
    const/4 v0, 0x0

    .line 11597
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "calledFunction":Ljava/lang/String;
    :goto_2e
    return v0
.end method

.method public blacklist setRemovableEsimAsDefaultEuicc(Z)V
    .registers 5
    .param p1, "isDefault"    # Z

    .line 19170
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19171
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_d

    .line 19172
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->setRemovableEsimAsDefaultEuicc(ZLjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 19176
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_27

    .line 19174
    :catch_e
    move-exception v0

    .line 19175
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in setRemovableEsimAsDefault: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19177
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method

.method public greylist-max-o setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 14
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 10703
    .local p2, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_6} :catch_1f

    move-object v2, v0

    .line 10704
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_19

    .line 10705
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "subId":I
    .end local p2    # "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p5    # "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "subId":I
    .local v4, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_e
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ITelephony;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_12} :catch_13

    return p1

    .line 10709
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_13
    move-exception v0

    move-object p1, v0

    goto :goto_26

    .line 10707
    :catch_16
    move-exception v0

    move-object p1, v0

    goto :goto_34

    .line 10704
    .end local v3    # "subId":I
    .end local v4    # "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p1    # "subId":I
    .restart local p2    # "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3    # "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p4    # "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p5    # "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_19
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local p1    # "subId":I
    .end local p2    # "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p5    # "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "subId":I
    .restart local v4    # "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3a

    .line 10709
    .end local v3    # "subId":I
    .end local v4    # "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "subId":I
    .restart local p2    # "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3    # "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p4    # "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p5    # "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1f
    move-exception v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object p1, v0

    .line 10710
    .end local p2    # "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p5    # "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "subId":I
    .restart local v4    # "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "ex":Ljava/lang/NullPointerException;
    :goto_26
    const-string/jumbo p2, "setRoamingOverride NPE"

    invoke-static {v1, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 10707
    .end local v3    # "subId":I
    .end local v4    # "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "subId":I
    .restart local p2    # "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3    # "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p4    # "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p5    # "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2d
    move-exception v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object p1, v0

    .line 10708
    .end local p2    # "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p5    # "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "subId":I
    .restart local v4    # "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_34
    const-string/jumbo p2, "setRoamingOverride RemoteException"

    invoke-static {v1, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10711
    .end local p1    # "ex":Landroid/os/RemoteException;
    :goto_3a
    nop

    .line 10712
    :goto_3b
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-r setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 10675
    .local p1, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyManager;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public whitelist setSignalStrengthUpdateRequest(Landroid/telephony/SignalStrengthUpdateRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/telephony/SignalStrengthUpdateRequest;

    .line 18411
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18414
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18415
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_17

    .line 18416
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->setSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    .line 18420
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_20

    .line 18418
    :catch_18
    move-exception v0

    .line 18419
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setSignalStrengthUpdateRequest"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18421
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public greylist-max-o setSimCountryIso(Ljava/lang/String;)V
    .registers 3
    .param p1, "iso"    # Ljava/lang/String;

    .line 12649
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 12650
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 12651
    return-void
.end method

.method public greylist-max-p setSimCountryIsoForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "iso"    # Ljava/lang/String;

    .line 12660
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12662
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_iso_country()Ljava/util/List;

    move-result-object v0

    .line 12661
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 12663
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->icc_operator_iso_country(Ljava/util/List;)V

    .line 12665
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    return-void
.end method

.method public greylist-max-p setSimOperatorNameForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 12636
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12638
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_alpha()Ljava/util/List;

    move-result-object v0

    .line 12637
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 12639
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->icc_operator_alpha(Ljava/util/List;)V

    .line 12641
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    return-void
.end method

.method public greylist-max-r setSimOperatorNumericForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "numeric"    # Ljava/lang/String;

    .line 12622
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12624
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_numeric()Ljava/util/List;

    move-result-object v0

    .line 12623
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 12625
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->icc_operator_numeric(Ljava/util/List;)V

    .line 12627
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    return-void
.end method

.method public whitelist setSimPowerState(I)V
    .registers 3
    .param p1, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12756
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimPowerStateForSlot(II)V

    .line 12757
    return-void
.end method

.method public whitelist setSimPowerState(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 12825
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setSimPowerStateForSlot(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 12826
    return-void
.end method

.method public whitelist setSimPowerStateForSlot(II)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12786
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12787
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_19

    .line 12788
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setSimPowerStateForSlot(II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_13
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_19

    .line 12792
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_c
    move-exception v1

    .line 12793
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 12790
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_13
    move-exception v1

    .line 12791
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12794
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    nop

    .line 12795
    :goto_1a
    return-void
.end method

.method public whitelist setSimPowerStateForSlot(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 10
    .param p1, "slotIndex"    # I
    .param p2, "state"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 12858
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "TelephonyManager"

    if-eqz p2, :cond_14

    const/4 v1, 0x1

    if-eq p2, v1, :cond_14

    const/4 v1, 0x2

    if-ne p2, v1, :cond_b

    goto :goto_14

    .line 12860
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "requested SIM state is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12863
    :cond_14
    :goto_14
    :try_start_14
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12864
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_37

    .line 12866
    new-instance v2, Landroid/telephony/TelephonyManager$8;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/TelephonyManager$8;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 12873
    .local v2, "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    if-nez v1, :cond_33

    .line 12874
    const-wide/32 v3, 0xadbeeaa

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 12877
    return-void

    .line 12875
    :cond_2b
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Telephony is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotIndex":I
    .end local p2    # "state":I
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    throw v3

    .line 12880
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotIndex":I
    .restart local p2    # "state":I
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :cond_33
    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/ITelephony;->setSimPowerStateForSlotWithCallback(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    goto :goto_54

    .line 12864
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_37
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Telephony is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotIndex":I
    .end local p2    # "state":I
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    throw v2
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_3f} :catch_46
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_3f} :catch_3f

    .line 12885
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotIndex":I
    .restart local p2    # "state":I
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :catch_3f
    move-exception v1

    .line 12886
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 12881
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_46
    move-exception v1

    .line 12882
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12883
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p3, p4}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda13;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 12888
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_54
    nop

    .line 12889
    :goto_55
    return-void
.end method

.method public whitelist setSimSlotMapping(Ljava/util/Collection;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)V"
        }
    .end annotation

    .line 4623
    .local p1, "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4624
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2b

    .line 4625
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isSlotMappingValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 4626
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setSimSlotMapping(Ljava/util/List;)Z

    move-result v1

    .line 4627
    .local v1, "result":Z
    if-eqz v1, :cond_1a

    .line 4630
    .end local v1    # "result":Z
    nop

    .line 4638
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    nop

    .line 4639
    return-void

    .line 4628
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v1    # "result":Z
    :cond_1a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "setSimSlotMapping has failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    throw v2

    .line 4631
    .end local v1    # "result":Z
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Duplicate UiccSlotMapping data found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    throw v1

    .line 4634
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    :cond_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    throw v1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_34

    .line 4636
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    :catch_34
    move-exception v0

    .line 4637
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setSimState(Ljava/lang/String;)V
    .registers 3
    .param p1, "state"    # Ljava/lang/String;

    .line 12673
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 12674
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 12675
    return-void
.end method

.method public greylist-max-p setSimStateForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "state"    # Ljava/lang/String;

    .line 12684
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12686
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->sim_state()Ljava/util/List;

    move-result-object v0

    .line 12685
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 12687
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->sim_state(Ljava/util/List;)V

    .line 12689
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    return-void
.end method

.method public whitelist setSystemSelectionChannels(Ljava/util/List;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;)V"
        }
    .end annotation

    .line 16626
    .local p1, "specifiers":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    const-string v0, "Specifiers must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16627
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/telephony/TelephonyManager;->setSystemSelectionChannelsInternal(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 16628
    return-void
.end method

.method public whitelist setSystemSelectionChannels(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 16607
    .local p1, "specifiers":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "Specifiers must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16608
    const-string v0, "Executor must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16609
    const-string v0, "Callback must not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16610
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setSystemSelectionChannelsInternal(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 16611
    return-void
.end method

.method public blacklist setTestEuiccUiComponent(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 19874
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 19875
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 19879
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setTestEuiccUiComponent(Landroid/content/ComponentName;)V

    .line 19883
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    nop

    .line 19884
    return-void

    .line 19876
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    const-string/jumbo v2, "setTestEuiccUiComponent(): ITelephony instance is NULL"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19877
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Telephony service not available."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "componentName":Landroid/content/ComponentName;
    throw v2
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1b} :catch_1b

    .line 19880
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "componentName":Landroid/content/ComponentName;
    :catch_1b
    move-exception v1

    .line 19881
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTestEuiccUiComponent() RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19882
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist setVisualVoicemailEnabled(Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 3
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5767
    return-void
.end method

.method public whitelist setVisualVoicemailSmsFilterSettings(Landroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .registers 3
    .param p1, "settings"    # Landroid/telephony/VisualVoicemailSmsFilterSettings;

    .line 5868
    if-nez p1, :cond_8

    .line 5869
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->disableVisualVoicemailSmsFilter(I)V

    goto :goto_d

    .line 5871
    :cond_8
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->enableVisualVoicemailSmsFilter(ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V

    .line 5873
    :goto_d
    return-void
.end method

.method public blacklist setVoNrEnabled(Z)I
    .registers 5
    .param p1, "enabled"    # Z

    .line 14494
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14495
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_14

    .line 14496
    nop

    .line 14497
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 14496
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVoNrEnabled(IZ)I

    move-result v1

    return v1

    .line 14499
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "enabled":Z
    throw v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1d

    .line 14501
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "enabled":Z
    :catch_1d
    move-exception v0

    .line 14502
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setVoNrEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14505
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist setVoiceActivationState(I)V
    .registers 3
    .param p1, "activationState"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6092
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setVoiceActivationState(II)V

    .line 6093
    return-void
.end method

.method public greylist-max-o setVoiceActivationState(II)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "activationState"    # I

    .line 6113
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6114
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_d

    .line 6115
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setVoiceActivationState(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_d

    .line 6117
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_a
    move-exception v0

    goto :goto_e

    .line 6116
    :catch_c
    move-exception v0

    .line 6118
    :cond_d
    :goto_d
    nop

    .line 6119
    :goto_e
    return-void
.end method

.method public greylist-max-o setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .line 5741
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5742
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 5743
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 5742
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_f

    .line 5745
    :catch_c
    move-exception v0

    goto :goto_10

    .line 5744
    :catch_e
    move-exception v0

    .line 5746
    :goto_f
    nop

    .line 5747
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .line 5726
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist setVoiceServiceStateOverride(Z)V
    .registers 5
    .param p1, "hasService"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19102
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19103
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_12

    .line 19106
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->setVoiceServiceStateOverride(IZLjava/lang/String;)V

    .line 19109
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_1e

    .line 19104
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "hasService":Z
    throw v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1a

    .line 19107
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "hasService":Z
    :catch_1a
    move-exception v0

    .line 19108
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 19110
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method public whitelist setVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V
    .registers 6
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13626
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13627
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_d

    .line 13628
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setVoicemailRingtoneUri(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 13632
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_16

    .line 13630
    :catch_e
    move-exception v0

    .line 13631
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setVoicemailRingtoneUri"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13633
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public whitelist setVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 6
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13680
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13681
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_d

    .line 13682
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setVoicemailVibrationEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 13687
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_16

    .line 13685
    :catch_e
    move-exception v0

    .line 13686
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isVoicemailVibrationEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13688
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public whitelist shutdownAllRadios()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11726
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11727
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 11728
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 11733
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_15

    .line 11730
    :catch_a
    move-exception v0

    .line 11731
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#shutdownAllRadios"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11732
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 11734
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    return-void
.end method

.method public greylist silenceRinger()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11145
    return-void
.end method

.method public whitelist supplyIccLockPin(Ljava/lang/String;)Landroid/telephony/PinResult;
    .registers 7
    .param p1, "pin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11321
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11322
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1a

    .line 11323
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v1

    .line 11324
    .local v1, "result":[I
    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-direct {v2, v3, v4}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    .line 11326
    .end local v1    # "result":[I
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "pin":Ljava/lang/String;
    throw v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_23

    .line 11328
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "pin":Ljava/lang/String;
    :catch_23
    move-exception v0

    .line 11329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyIccLockPin"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11330
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 11332
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist supplyIccLockPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;
    .registers 8
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11359
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11360
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1a

    .line 11361
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 11362
    .local v1, "result":[I
    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-direct {v2, v3, v4}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    .line 11364
    .end local v1    # "result":[I
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "puk":Ljava/lang/String;
    .end local p2    # "pin":Ljava/lang/String;
    throw v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_23

    .line 11366
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "puk":Ljava/lang/String;
    .restart local p2    # "pin":Ljava/lang/String;
    :catch_23
    move-exception v0

    .line 11367
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyIccLockPuk"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11368
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 11370
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist supplyPin(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11226
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11227
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 11228
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 11231
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 11229
    :catch_10
    move-exception v0

    .line 11230
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPinForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11232
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist supplyPinReportResult(Ljava/lang/String;)[I
    .registers 5
    .param p1, "pin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11267
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11268
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 11269
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 11272
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 11270
    :catch_10
    move-exception v0

    .line 11271
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPinReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11273
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11245
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11246
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 11247
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 11250
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 11248
    :catch_10
    move-exception v0

    .line 11249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPukForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11251
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11289
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11290
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 11291
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 11294
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 11292
    :catch_10
    move-exception v0

    .line 11293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPukReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11295
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist switchMultiSimConfig(I)V
    .registers 5
    .param p1, "numOfSims"    # I

    .line 16239
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16240
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 16241
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->switchMultiSimConfig(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 16245
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_13

    .line 16243
    :catch_a
    move-exception v0

    .line 16244
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "switchMultiSimConfig RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16246
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public whitelist switchSlots([I)Z
    .registers 4
    .param p1, "physicalSlots"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4524
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4525
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 4526
    return v0

    .line 4528
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->switchSlots([I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    return v0

    .line 4529
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v1

    .line 4530
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist toggleRadioOnOff()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11534
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11535
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 11536
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 11539
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_12

    .line 11537
    :catch_a
    move-exception v0

    .line 11538
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#toggleRadioOnOff"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11540
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19149
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2c

    .line 19151
    if-eqz p1, :cond_24

    .line 19154
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 19155
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v0, :cond_1c

    .line 19158
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyRegistryManager;->removeCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 19159
    return-void

    .line 19156
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony registry service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19152
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CarrierPrivilegesCallback must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19150
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V
    .registers 10
    .param p1, "callback"    # Landroid/telephony/TelephonyCallback;

    .line 18155
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony service is null."

    if-eqz v0, :cond_3e

    .line 18159
    iget-object v0, p1, Landroid/telephony/TelephonyCallback;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-nez v0, :cond_c

    .line 18160
    return-void

    .line 18163
    :cond_c
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 18164
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v0, :cond_37

    .line 18165
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    iget v3, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 18166
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    move v7, v0

    .line 18165
    move-object v6, p1

    .end local p1    # "callback":Landroid/telephony/TelephonyCallback;
    .local v6, "callback":Landroid/telephony/TelephonyCallback;
    invoke-virtual/range {v2 .. v7}, Landroid/telephony/TelephonyRegistryManager;->unregisterTelephonyCallback(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;Z)V

    .line 18170
    return-void

    .line 18168
    .end local v6    # "callback":Landroid/telephony/TelephonyCallback;
    .restart local p1    # "callback":Landroid/telephony/TelephonyCallback;
    :cond_37
    move-object v6, p1

    .end local p1    # "callback":Landroid/telephony/TelephonyCallback;
    .restart local v6    # "callback":Landroid/telephony/TelephonyCallback;
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18156
    .end local v6    # "callback":Landroid/telephony/TelephonyCallback;
    .restart local p1    # "callback":Landroid/telephony/TelephonyCallback;
    :cond_3e
    move-object v6, p1

    .end local p1    # "callback":Landroid/telephony/TelephonyCallback;
    .restart local v6    # "callback":Landroid/telephony/TelephonyCallback;
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist updateAvailableNetworks(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/AvailableNetworkInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 15987
    .local p1, "availableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/AvailableNetworkInfo;>;"
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "<unknown>"

    .line 15988
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_d
    const-string v1, "availableNetworks must not be null."

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15990
    :try_start_12
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v1

    .line 15991
    .local v1, "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    if-nez v1, :cond_31

    .line 15992
    const-wide/32 v2, 0xadbeeaa

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 15993
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Opportunistic Network Service is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "availableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/AvailableNetworkInfo;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    throw v2

    .line 15996
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "availableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/AvailableNetworkInfo;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :cond_29
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Null Opportunistic Network Service!"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "availableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/AvailableNetworkInfo;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    throw v2

    .line 16000
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "availableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/AvailableNetworkInfo;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :cond_31
    new-instance v2, Landroid/telephony/TelephonyManager$12;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/TelephonyManager$12;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 16012
    .local v2, "callbackStub":Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;
    nop

    .line 16013
    invoke-interface {v1, p1, v2, v0}, Lcom/android/internal/telephony/IOns;->updateAvailableNetworks(Ljava/util/List;Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;Ljava/lang/String;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_3a} :catch_3b

    .line 16026
    .end local v1    # "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    .end local v2    # "callbackStub":Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;
    goto :goto_51

    .line 16014
    :catch_3b
    move-exception v1

    .line 16015
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "updateAvailableNetworks RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16016
    if-eqz p2, :cond_52

    if-nez p3, :cond_49

    goto :goto_52

    .line 16019
    :cond_49
    new-instance v2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda9;

    invoke-direct {v2, p2, p3}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda9;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 16027
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_51
    return-void

    .line 16017
    .restart local v1    # "ex":Landroid/os/RemoteException;
    :cond_52
    :goto_52
    return-void
.end method

.method public whitelist updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "otaParcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15396
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15397
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_a

    .line 15398
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V

    .line 15405
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_1f

    .line 15400
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "otaParcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 15402
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "otaParcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catch_13
    move-exception v0

    .line 15403
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "updateOtaEmergencyNumberDbFilePath RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15404
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15406
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method

.method public whitelist updateServiceLocation()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11817
    const-string v0, "TelephonyManager"

    const-string v1, "Do not call TelephonyManager#updateServiceLocation()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11818
    return-void
.end method

.method public whitelist uploadCallComposerPicture(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 14
    .param p1, "pictureToUpload"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/os/ParcelUuid;",
            "Landroid/telephony/TelephonyManager$CallComposerException;",
            ">;)V"
        }
    .end annotation

    .line 5169
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/ParcelUuid;Landroid/telephony/TelephonyManager$CallComposerException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5170
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5171
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5173
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5174
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_6c

    .line 5181
    :try_start_f
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createReliablePipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 5182
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    move-object v7, v2

    .line 5183
    .local v7, "writeFd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    aget-object v5, v0, v2
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1a} :catch_60

    .line 5188
    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .local v5, "readFd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 5190
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v7}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v8, v0

    .line 5193
    .local v8, "output":Ljava/io/OutputStream;
    :try_start_21
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Landroid/telephony/TelephonyManager$3;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0, p3, p4}, Landroid/telephony/TelephonyManager$3;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_31} :catch_39

    move-object v4, p2

    .end local p2    # "contentType":Ljava/lang/String;
    .local v4, "contentType":Ljava/lang/String;
    :try_start_32
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephony;->uploadCallComposerPicture(ILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36

    .line 5218
    goto :goto_57

    .line 5215
    :catch_36
    move-exception v0

    move-object p2, v0

    goto :goto_3c

    .end local v4    # "contentType":Ljava/lang/String;
    .restart local p2    # "contentType":Ljava/lang/String;
    :catch_39
    move-exception v0

    move-object v4, p2

    move-object p2, v0

    .line 5216
    .restart local v4    # "contentType":Ljava/lang/String;
    .local p2, "e":Landroid/os/RemoteException;
    :goto_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception uploading call composer pic:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TelephonyManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5217
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 5220
    .end local p2    # "e":Landroid/os/RemoteException;
    :goto_57
    new-instance p2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;

    invoke-direct {p2, p1, p4, v7, v8}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;-><init>(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    invoke-interface {p3, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5289
    return-void

    .line 5184
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v5    # "readFd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "writeFd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "output":Ljava/io/OutputStream;
    .local p2, "contentType":Ljava/lang/String;
    :catch_60
    move-exception v0

    move-object v4, p2

    move-object p2, v0

    .line 5185
    .restart local v4    # "contentType":Ljava/lang/String;
    .local p2, "e":Ljava/io/IOException;
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda19;

    invoke-direct {v0, p4, p2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda19;-><init>(Landroid/os/OutcomeReceiver;Ljava/io/IOException;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5187
    return-void

    .line 5175
    .end local v4    # "contentType":Ljava/lang/String;
    .local p2, "contentType":Ljava/lang/String;
    :cond_6c
    move-object v4, p2

    .end local p2    # "contentType":Ljava/lang/String;
    .restart local v4    # "contentType":Ljava/lang/String;
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony service not available."

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist uploadCallComposerPicture(Ljava/nio/file/Path;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 13
    .param p1, "pictureToUpload"    # Ljava/nio/file/Path;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/os/ParcelUuid;",
            "Landroid/telephony/TelephonyManager$CallComposerException;",
            ">;)V"
        }
    .end annotation

    .line 5059
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/ParcelUuid;Landroid/telephony/TelephonyManager$CallComposerException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5060
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5061
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5065
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 5066
    .local v0, "rm":Landroid/app/role/RoleManager;
    const-string v1, "android.app.role.DIALER"

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 5070
    new-instance v2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v5, p4

    .end local p1    # "pictureToUpload":Ljava/nio/file/Path;
    .end local p2    # "contentType":Ljava/lang/String;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/ParcelUuid;Landroid/telephony/TelephonyManager$CallComposerException;>;"
    .local v4, "pictureToUpload":Ljava/nio/file/Path;
    .local v5, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/ParcelUuid;Landroid/telephony/TelephonyManager$CallComposerException;>;"
    .local v6, "contentType":Ljava/lang/String;
    .local v7, "executor":Ljava/util/concurrent/Executor;
    invoke-direct/range {v2 .. v7}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/TelephonyManager;Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    invoke-interface {v7, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5128
    return-void

    .line 5067
    .end local v4    # "pictureToUpload":Ljava/nio/file/Path;
    .end local v5    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/ParcelUuid;Landroid/telephony/TelephonyManager$CallComposerException;>;"
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v7    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "pictureToUpload":Ljava/nio/file/Path;
    .restart local p2    # "contentType":Ljava/lang/String;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/ParcelUuid;Landroid/telephony/TelephonyManager$CallComposerException;>;"
    :cond_29
    move-object v4, p1

    move-object v6, p2

    .end local p1    # "pictureToUpload":Ljava/nio/file/Path;
    .end local p2    # "contentType":Ljava/lang/String;
    .restart local v4    # "pictureToUpload":Ljava/nio/file/Path;
    .restart local v6    # "contentType":Ljava/lang/String;
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "You must hold RoleManager.ROLE_DIALER to do this"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
