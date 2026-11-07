.class public final Landroid/provider/Telephony$SimInfo;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimInfo"
.end annotation


# static fields
.field private static final blacklist ALL_COLUMNS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist COLOR_DEFAULT:I = 0x0

.field public static final blacklist COLUMN_ACCESS_RULES:Ljava/lang/String; = "access_rules"

.field public static final blacklist COLUMN_ACCESS_RULES_FROM_CARRIER_CONFIGS:Ljava/lang/String; = "access_rules_from_carrier_configs"

.field public static final blacklist COLUMN_ALLOWED_NETWORK_TYPES:Ljava/lang/String; = "allowed_network_types"

.field public static final blacklist COLUMN_ALLOWED_NETWORK_TYPES_FOR_REASONS:Ljava/lang/String; = "allowed_network_types_for_reasons"

.field public static final blacklist COLUMN_CARD_ID:Ljava/lang/String; = "card_id"

.field public static final blacklist COLUMN_CARRIER_ID:Ljava/lang/String; = "carrier_id"

.field public static final blacklist COLUMN_CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field public static final blacklist COLUMN_CB_ALERT_REMINDER_INTERVAL:Ljava/lang/String; = "alert_reminder_interval"

.field public static final blacklist COLUMN_CB_ALERT_SOUND_DURATION:Ljava/lang/String; = "alert_sound_duration"

.field public static final blacklist COLUMN_CB_ALERT_SPEECH:Ljava/lang/String; = "enable_alert_speech"

.field public static final blacklist COLUMN_CB_ALERT_VIBRATE:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final blacklist COLUMN_CB_AMBER_ALERT:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final blacklist COLUMN_CB_CHANNEL_50_ALERT:Ljava/lang/String; = "enable_channel_50_alerts"

.field public static final blacklist COLUMN_CB_CMAS_TEST_ALERT:Ljava/lang/String; = "enable_cmas_test_alerts"

.field public static final blacklist COLUMN_CB_EMERGENCY_ALERT:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final blacklist COLUMN_CB_ETWS_TEST_ALERT:Ljava/lang/String; = "enable_etws_test_alerts"

.field public static final blacklist COLUMN_CB_EXTREME_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final blacklist COLUMN_CB_OPT_OUT_DIALOG:Ljava/lang/String; = "show_cmas_opt_out_dialog"

.field public static final blacklist COLUMN_CB_SEVERE_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final blacklist COLUMN_COLOR:Ljava/lang/String; = "color"

.field public static final blacklist COLUMN_CROSS_SIM_CALLING_ENABLED:Ljava/lang/String; = "cross_sim_calling_enabled"

.field public static final blacklist COLUMN_D2D_STATUS_SHARING:Ljava/lang/String; = "d2d_sharing_status"

.field public static final blacklist COLUMN_D2D_STATUS_SHARING_SELECTED_CONTACTS:Ljava/lang/String; = "d2d_sharing_contacts"

.field public static final blacklist COLUMN_DATA_ENABLED_OVERRIDE_RULES:Ljava/lang/String; = "data_enabled_override_rules"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist COLUMN_DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final blacklist COLUMN_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final blacklist COLUMN_DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final blacklist COLUMN_EHPLMNS:Ljava/lang/String; = "ehplmns"

.field public static final blacklist COLUMN_ENABLED_MOBILE_DATA_POLICIES:Ljava/lang/String; = "enabled_mobile_data_policies"

.field public static final blacklist COLUMN_ENHANCED_4G_MODE_ENABLED:Ljava/lang/String; = "volte_vt_enabled"

.field public static final blacklist COLUMN_GROUP_OWNER:Ljava/lang/String; = "group_owner"

.field public static final blacklist COLUMN_GROUP_UUID:Ljava/lang/String; = "group_uuid"

.field public static final blacklist COLUMN_HPLMNS:Ljava/lang/String; = "hplmns"

.field public static final blacklist COLUMN_ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final blacklist COLUMN_IMSI:Ljava/lang/String; = "imsi"

.field public static final blacklist COLUMN_IMS_RCS_UCE_ENABLED:Ljava/lang/String; = "ims_rcs_uce_enabled"

.field public static final blacklist COLUMN_ISO_COUNTRY_CODE:Ljava/lang/String; = "iso_country_code"

.field public static final blacklist COLUMN_IS_EMBEDDED:Ljava/lang/String; = "is_embedded"

.field public static final blacklist COLUMN_IS_METERED:Ljava/lang/String; = "is_metered"

.field public static final blacklist COLUMN_IS_ONLY_NTN:Ljava/lang/String; = "is_only_ntn"

.field public static final blacklist COLUMN_IS_OPPORTUNISTIC:Ljava/lang/String; = "is_opportunistic"

.field public static final blacklist COLUMN_IS_REMOVABLE:Ljava/lang/String; = "is_removable"

.field public static final blacklist COLUMN_IS_SATELLITE_PROVISIONED_FOR_NON_IP_DATAGRAM:Ljava/lang/String; = "is_satellite_provisioned_for_non_ip_datagram"

.field public static final blacklist COLUMN_MCC:Ljava/lang/String; = "mcc"

.field public static final blacklist COLUMN_MCC_STRING:Ljava/lang/String; = "mcc_string"

.field public static final blacklist COLUMN_MNC:Ljava/lang/String; = "mnc"

.field public static final blacklist COLUMN_MNC_STRING:Ljava/lang/String; = "mnc_string"

.field public static final blacklist COLUMN_NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final blacklist COLUMN_NR_ADVANCED_CALLING_ENABLED:Ljava/lang/String; = "nr_advanced_calling_enabled"

.field public static final blacklist COLUMN_NUMBER:Ljava/lang/String; = "number"

.field public static final blacklist COLUMN_PHONE_NUMBER_SOURCE_CARRIER:Ljava/lang/String; = "phone_number_source_carrier"

.field public static final blacklist COLUMN_PHONE_NUMBER_SOURCE_IMS:Ljava/lang/String; = "phone_number_source_ims"

.field public static final blacklist COLUMN_PORT_INDEX:Ljava/lang/String; = "port_index"

.field public static final blacklist COLUMN_PROFILE_CLASS:Ljava/lang/String; = "profile_class"

.field public static final blacklist COLUMN_RCS_CONFIG:Ljava/lang/String; = "rcs_config"

.field public static final blacklist COLUMN_SATELLITE_ATTACH_ENABLED_FOR_CARRIER:Ljava/lang/String; = "satellite_attach_enabled_for_carrier"

.field public static final blacklist COLUMN_SATELLITE_ENABLED:Ljava/lang/String; = "satellite_enabled"

.field public static final blacklist COLUMN_SATELLITE_ENTITLEMENT_BARRED_PLMNS:Ljava/lang/String; = "satellite_entitlement_barred_plmns"

.field public static final blacklist COLUMN_SATELLITE_ENTITLEMENT_DATA_PLAN_PLMNS:Ljava/lang/String; = "satellite_entitlement_data_plan_plmns"

.field public static final blacklist COLUMN_SATELLITE_ENTITLEMENT_DATA_SERVICE_POLICY:Ljava/lang/String; = "satellite_entitlement_data_service_policy"

.field public static final blacklist COLUMN_SATELLITE_ENTITLEMENT_PLMNS:Ljava/lang/String; = "satellite_entitlement_plmns"

.field public static final blacklist COLUMN_SATELLITE_ENTITLEMENT_SERVICE_TYPE_MAP:Ljava/lang/String; = "satellite_entitlement_service_type_map"

.field public static final blacklist COLUMN_SATELLITE_ENTITLEMENT_STATUS:Ljava/lang/String; = "satellite_entitlement_status"

.field public static final blacklist COLUMN_SATELLITE_ENTITLEMENT_VOICE_SERVICE_POLICY:Ljava/lang/String; = "satellite_entitlement_voice_service_policy"

.field public static final blacklist COLUMN_SATELLITE_ESOS_SUPPORTED:Ljava/lang/String; = "satellite_esos_supported"

.field public static final blacklist COLUMN_SERVICE_CAPABILITIES:Ljava/lang/String; = "service_capabilities"

.field public static final blacklist COLUMN_SIM_PROVISIONING_STATUS:Ljava/lang/String; = "sim_provisioning_status"

.field public static final blacklist COLUMN_SIM_SLOT_INDEX:Ljava/lang/String; = "sim_id"

.field public static final blacklist COLUMN_SUBSCRIPTION_TYPE:Ljava/lang/String; = "subscription_type"

.field public static final blacklist COLUMN_TP_MESSAGE_REF:Ljava/lang/String; = "tp_message_ref"

.field public static final blacklist COLUMN_TRANSFER_STATUS:Ljava/lang/String; = "transfer_status"

.field public static final blacklist COLUMN_UICC_APPLICATIONS_ENABLED:Ljava/lang/String; = "uicc_applications_enabled"

.field public static final blacklist COLUMN_UNIQUE_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "_id"

.field public static final blacklist COLUMN_USAGE_SETTING:Ljava/lang/String; = "usage_setting"

.field public static final blacklist COLUMN_USER_HANDLE:Ljava/lang/String; = "user_handle"

.field public static final blacklist COLUMN_VOIMS_OPT_IN_STATUS:Ljava/lang/String; = "voims_opt_in_status"

.field public static final blacklist COLUMN_VT_IMS_ENABLED:Ljava/lang/String; = "vt_ims_enabled"

.field public static final blacklist COLUMN_WFC_IMS_ENABLED:Ljava/lang/String; = "wfc_ims_enabled"

.field public static final blacklist COLUMN_WFC_IMS_MODE:Ljava/lang/String; = "wfc_ims_mode"

.field public static final blacklist COLUMN_WFC_IMS_ROAMING_ENABLED:Ljava/lang/String; = "wfc_ims_roaming_enabled"

.field public static final blacklist COLUMN_WFC_IMS_ROAMING_MODE:Ljava/lang/String; = "wfc_ims_roaming_mode"

.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist DATA_ROAMING_DISABLE:I = 0x0

.field public static final blacklist DATA_ROAMING_ENABLE:I = 0x1

.field public static final blacklist DISPLAY_NUMBER_DEFAULT:I = 0x1

.field public static final blacklist NAME_SOURCE_CARRIER:I = 0x3

.field public static final blacklist NAME_SOURCE_CARRIER_ID:I = 0x0

.field public static final blacklist NAME_SOURCE_SIM_PNN:I = 0x4

.field public static final blacklist NAME_SOURCE_SIM_SPN:I = 0x1

.field public static final blacklist NAME_SOURCE_UNKNOWN:I = -0x1

.field public static final blacklist NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final blacklist PROFILE_CLASS_OPERATIONAL:I = 0x2

.field public static final blacklist PROFILE_CLASS_PROVISIONING:I = 0x1

.field public static final blacklist PROFILE_CLASS_TESTING:I = 0x0

.field public static final blacklist PROFILE_CLASS_UNSET:I = -0x1

.field public static final blacklist SIM_NOT_INSERTED:I = -0x1

.field public static final blacklist SIM_PROVISIONED:I = 0x0

.field public static final blacklist SUBSCRIPTION_TYPE_LOCAL_SIM:I = 0x0

.field public static final blacklist SUBSCRIPTION_TYPE_REMOTE_SIM:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 82

    .line 4291
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 5052
    const-string/jumbo v80, "satellite_entitlement_data_service_policy"

    const-string/jumbo v81, "satellite_entitlement_voice_service_policy"

    const-string v1, "_id"

    const-string/jumbo v2, "icc_id"

    const-string/jumbo v3, "sim_id"

    const-string v4, "display_name"

    const-string v5, "carrier_name"

    const-string/jumbo v6, "name_source"

    const-string v7, "color"

    const-string/jumbo v8, "number"

    const-string v9, "display_number_format"

    const-string v10, "data_roaming"

    const-string/jumbo v11, "mcc"

    const-string/jumbo v12, "mnc"

    const-string/jumbo v13, "mcc_string"

    const-string/jumbo v14, "mnc_string"

    const-string v15, "ehplmns"

    const-string/jumbo v16, "hplmns"

    const-string/jumbo v17, "sim_provisioning_status"

    const-string/jumbo v18, "is_embedded"

    const-string v19, "card_id"

    const-string v20, "access_rules"

    const-string v21, "access_rules_from_carrier_configs"

    const-string/jumbo v22, "is_removable"

    const-string v23, "enable_cmas_extreme_threat_alerts"

    const-string v24, "enable_cmas_severe_threat_alerts"

    const-string v25, "enable_cmas_amber_alerts"

    const-string v26, "enable_emergency_alerts"

    const-string v27, "alert_sound_duration"

    const-string v28, "alert_reminder_interval"

    const-string v29, "enable_alert_vibrate"

    const-string v30, "enable_alert_speech"

    const-string v31, "enable_etws_test_alerts"

    const-string v32, "enable_channel_50_alerts"

    const-string v33, "enable_cmas_test_alerts"

    const-string/jumbo v34, "show_cmas_opt_out_dialog"

    const-string/jumbo v35, "volte_vt_enabled"

    const-string/jumbo v36, "vt_ims_enabled"

    const-string/jumbo v37, "wfc_ims_enabled"

    const-string/jumbo v38, "wfc_ims_mode"

    const-string/jumbo v39, "wfc_ims_roaming_mode"

    const-string/jumbo v40, "wfc_ims_roaming_enabled"

    const-string/jumbo v41, "is_opportunistic"

    const-string/jumbo v42, "group_uuid"

    const-string/jumbo v43, "is_metered"

    const-string/jumbo v44, "iso_country_code"

    const-string v45, "carrier_id"

    const-string/jumbo v46, "profile_class"

    const-string/jumbo v47, "subscription_type"

    const-string/jumbo v48, "group_owner"

    const-string v49, "data_enabled_override_rules"

    const-string v50, "enabled_mobile_data_policies"

    const-string/jumbo v51, "imsi"

    const-string/jumbo v52, "uicc_applications_enabled"

    const-string v53, "allowed_network_types"

    const-string/jumbo v54, "ims_rcs_uce_enabled"

    const-string v55, "cross_sim_calling_enabled"

    const-string/jumbo v56, "rcs_config"

    const-string v57, "allowed_network_types_for_reasons"

    const-string v58, "d2d_sharing_status"

    const-string/jumbo v59, "voims_opt_in_status"

    const-string v60, "d2d_sharing_contacts"

    const-string/jumbo v61, "nr_advanced_calling_enabled"

    const-string/jumbo v62, "phone_number_source_carrier"

    const-string/jumbo v63, "phone_number_source_ims"

    const-string/jumbo v64, "port_index"

    const-string/jumbo v65, "usage_setting"

    const-string/jumbo v66, "tp_message_ref"

    const-string/jumbo v67, "user_handle"

    const-string/jumbo v68, "satellite_enabled"

    const-string/jumbo v69, "satellite_attach_enabled_for_carrier"

    const-string/jumbo v70, "is_only_ntn"

    const-string/jumbo v71, "service_capabilities"

    const-string/jumbo v72, "transfer_status"

    const-string/jumbo v73, "satellite_entitlement_status"

    const-string/jumbo v74, "satellite_entitlement_plmns"

    const-string/jumbo v75, "satellite_esos_supported"

    const-string/jumbo v76, "is_satellite_provisioned_for_non_ip_datagram"

    const-string/jumbo v77, "satellite_entitlement_barred_plmns"

    const-string/jumbo v78, "satellite_entitlement_data_plan_plmns"

    const-string/jumbo v79, "satellite_entitlement_service_type_map"

    filled-new-array/range {v1 .. v81}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$SimInfo;->ALL_COLUMNS:Ljava/util/List;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 4284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAllColumns()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5143
    sget-object v0, Landroid/provider/Telephony$SimInfo;->ALL_COLUMNS:Ljava/util/List;

    return-object v0
.end method
