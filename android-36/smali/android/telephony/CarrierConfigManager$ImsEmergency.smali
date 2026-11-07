.class public final Landroid/telephony/CarrierConfigManager$ImsEmergency;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsEmergency"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CarrierConfigManager$ImsEmergency$EmergencyScanType;,
        Landroid/telephony/CarrierConfigManager$ImsEmergency$VoWiFiRequires;,
        Landroid/telephony/CarrierConfigManager$ImsEmergency$EmergencyDomain;
    }
.end annotation


# static fields
.field public static final whitelist DOMAIN_CS:I = 0x1

.field public static final whitelist DOMAIN_PS_3GPP:I = 0x2

.field public static final whitelist DOMAIN_PS_NON_3GPP:I = 0x3

.field public static final whitelist KEY_CROSS_STACK_REDIAL_TIMER_SEC_INT:Ljava/lang/String; = "imsemergency.cross_stack_redial_timer_sec_int"

.field public static final whitelist KEY_EMERGENCY_CALLBACK_MODE_SUPPORTED_BOOL:Ljava/lang/String; = "imsemergency.emergency_callback_mode_supported_bool"

.field public static final whitelist KEY_EMERGENCY_CALL_SETUP_TIMER_ON_CURRENT_NETWORK_SEC_INT:Ljava/lang/String; = "imsemergency.emergency_call_setup_timer_on_current_network_sec_int"

.field public static final whitelist KEY_EMERGENCY_CDMA_PREFERRED_NUMBERS_STRING_ARRAY:Ljava/lang/String; = "imsemergency.emergency_cdma_preferred_numbers_string_array"

.field public static final whitelist KEY_EMERGENCY_DOMAIN_PREFERENCE_INT_ARRAY:Ljava/lang/String; = "imsemergency.emergency_domain_preference_int_array"

.field public static final whitelist KEY_EMERGENCY_DOMAIN_PREFERENCE_ROAMING_INT_ARRAY:Ljava/lang/String; = "imsemergency.emergency_domain_preference_roaming_int_array"

.field public static final whitelist KEY_EMERGENCY_LTE_PREFERRED_AFTER_NR_FAILED_BOOL:Ljava/lang/String; = "imsemergency.emergency_lte_preferred_after_nr_failed_bool"

.field public static final whitelist KEY_EMERGENCY_NETWORK_SCAN_TYPE_INT:Ljava/lang/String; = "imsemergency.emergency_network_scan_type_int"

.field public static final whitelist KEY_EMERGENCY_OVER_CS_ROAMING_SUPPORTED_ACCESS_NETWORK_TYPES_INT_ARRAY:Ljava/lang/String; = "imsemergency.emergency_over_cs_roaming_supported_access_network_types_int_array"

.field public static final whitelist KEY_EMERGENCY_OVER_CS_SUPPORTED_ACCESS_NETWORK_TYPES_INT_ARRAY:Ljava/lang/String; = "imsemergency.emergency_over_cs_supported_access_network_types_int_array"

.field public static final whitelist KEY_EMERGENCY_OVER_IMS_ROAMING_SUPPORTED_3GPP_NETWORK_TYPES_INT_ARRAY:Ljava/lang/String; = "imsemergency.emergency_over_ims_roaming_supported_3gpp_network_types_int_array"

.field public static final whitelist KEY_EMERGENCY_OVER_IMS_SUPPORTED_3GPP_NETWORK_TYPES_INT_ARRAY:Ljava/lang/String; = "imsemergency.emergency_over_ims_supported_3gpp_network_types_int_array"

.field public static final whitelist KEY_EMERGENCY_OVER_IMS_SUPPORTED_RATS_INT_ARRAY:Ljava/lang/String; = "imsemergency.emergency_over_ims_supported_rats_int_array"

.field public static final whitelist KEY_EMERGENCY_QOS_PRECONDITION_SUPPORTED_BOOL:Ljava/lang/String; = "imsemergency.emergency_qos_precondition_supported_bool"

.field public static final whitelist KEY_EMERGENCY_REGISTRATION_TIMER_MILLIS_INT:Ljava/lang/String; = "imsemergency.emergency_registration_timer_millis_int"

.field public static final whitelist KEY_EMERGENCY_REQUIRES_IMS_REGISTRATION_BOOL:Ljava/lang/String; = "imsemergency.emergency_requires_ims_registration_bool"

.field public static final whitelist KEY_EMERGENCY_REQUIRES_VOLTE_ENABLED_BOOL:Ljava/lang/String; = "imsemergency.emergency_requires_volte_enabled_bool"

.field public static final whitelist KEY_EMERGENCY_SCAN_TIMER_SEC_INT:Ljava/lang/String; = "imsemergency.emergency_scan_timer_sec_int"

.field public static final whitelist KEY_EMERGENCY_VOWIFI_REQUIRES_CONDITION_INT:Ljava/lang/String; = "imsemergency.emergency_vowifi_requires_condition_int"

.field public static final blacklist KEY_IMS_REASONINFO_CODE_TO_RETRY_EMERGENCY_INT_ARRAY:Ljava/lang/String; = "imsemergency.ims_reasoninfo_code_to_retry_emergency_int_array"

.field public static final whitelist KEY_MAXIMUM_CELLULAR_SEARCH_TIMER_SEC_INT:Ljava/lang/String; = "imsemergency.maximum_cellular_search_timer_sec_int"

.field public static final whitelist KEY_MAXIMUM_NUMBER_OF_EMERGENCY_TRIES_OVER_VOWIFI_INT:Ljava/lang/String; = "imsemergency.maximum_number_of_emergency_tries_over_vowifi_int"

.field public static final whitelist KEY_PREFER_IMS_EMERGENCY_WHEN_VOICE_CALLS_ON_CS_BOOL:Ljava/lang/String; = "imsemergency.prefer_ims_emergency_when_voice_calls_on_cs_bool"

.field public static final whitelist KEY_PREFIX:Ljava/lang/String; = "imsemergency."

.field public static final whitelist KEY_QUICK_CROSS_STACK_REDIAL_TIMER_SEC_INT:Ljava/lang/String; = "imsemergency.quick_cross_stack_redial_timer_sec_int"

.field public static final whitelist KEY_REFRESH_GEOLOCATION_TIMEOUT_MILLIS_INT:Ljava/lang/String; = "imsemergency.refresh_geolocation_timeout_millis_int"

.field public static final whitelist KEY_RETRY_EMERGENCY_ON_IMS_PDN_BOOL:Ljava/lang/String; = "imsemergency.retry_emergency_on_ims_pdn_bool"

.field public static final whitelist KEY_SCAN_LIMITED_SERVICE_AFTER_VOLTE_FAILURE_BOOL:Ljava/lang/String; = "imsemergency.scan_limited_service_after_volte_failure_bool"

.field public static final whitelist KEY_START_QUICK_CROSS_STACK_REDIAL_TIMER_WHEN_REGISTERED_BOOL:Ljava/lang/String; = "imsemergency.start_quick_cross_stack_redial_timer_when_registered_bool"

.field public static final whitelist REDIAL_TIMER_DISABLED:I = 0x0

.field public static final whitelist SCAN_TYPE_FULL_SERVICE:I = 0x1

.field public static final whitelist SCAN_TYPE_FULL_SERVICE_FOLLOWED_BY_LIMITED_SERVICE:I = 0x2

.field public static final whitelist SCAN_TYPE_NO_PREFERENCE:I = 0x0

.field public static final whitelist VOWIFI_REQUIRES_NONE:I = 0x0

.field public static final whitelist VOWIFI_REQUIRES_SETTING_ENABLED:I = 0x1

.field public static final whitelist VOWIFI_REQUIRES_VALID_EID:I = 0x2


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsEmergency;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 7634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDefaults()Landroid/os/PersistableBundle;
    .registers 7

    .line 8126
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 8127
    .local v0, "defaults":Landroid/os/PersistableBundle;
    const-string/jumbo v1, "imsemergency.retry_emergency_on_ims_pdn_bool"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8128
    const-string/jumbo v1, "imsemergency.emergency_callback_mode_supported_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8129
    const-string/jumbo v1, "imsemergency.emergency_qos_precondition_supported_bool"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8131
    const/4 v1, 0x5

    const/4 v4, 0x3

    filled-new-array {v4, v1}, [I

    move-result-object v1

    const-string/jumbo v5, "imsemergency.emergency_over_ims_supported_rats_int_array"

    invoke-virtual {v0, v5, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 8138
    const-string/jumbo v1, "imsemergency.emergency_registration_timer_millis_int"

    const/16 v5, 0x2710

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8139
    const-string/jumbo v1, "imsemergency.refresh_geolocation_timeout_millis_int"

    const/16 v5, 0x1388

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8141
    const-string/jumbo v1, "imsemergency.emergency_over_ims_supported_3gpp_network_types_int_array"

    filled-new-array {v4}, [I

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 8147
    const-string/jumbo v1, "imsemergency.emergency_over_ims_roaming_supported_3gpp_network_types_int_array"

    filled-new-array {v4}, [I

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 8153
    const/4 v1, 0x2

    filled-new-array {v1, v3}, [I

    move-result-object v5

    const-string/jumbo v6, "imsemergency.emergency_over_cs_supported_access_network_types_int_array"

    invoke-virtual {v0, v6, v5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 8160
    const-string/jumbo v5, "imsemergency.emergency_over_cs_roaming_supported_access_network_types_int_array"

    filled-new-array {v1, v3}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 8167
    const-string/jumbo v5, "imsemergency.emergency_domain_preference_int_array"

    filled-new-array {v1, v3, v4}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 8173
    const-string/jumbo v5, "imsemergency.emergency_domain_preference_roaming_int_array"

    filled-new-array {v1, v3, v4}, [I

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 8180
    const-string/jumbo v1, "imsemergency.prefer_ims_emergency_when_voice_calls_on_cs_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8181
    const-string/jumbo v1, "imsemergency.emergency_vowifi_requires_condition_int"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8182
    const-string/jumbo v1, "imsemergency.maximum_number_of_emergency_tries_over_vowifi_int"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8183
    const-string/jumbo v1, "imsemergency.emergency_scan_timer_sec_int"

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8184
    const-string/jumbo v1, "imsemergency.maximum_cellular_search_timer_sec_int"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8185
    const-string/jumbo v1, "imsemergency.emergency_network_scan_type_int"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8186
    const-string/jumbo v1, "imsemergency.emergency_call_setup_timer_on_current_network_sec_int"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8187
    const-string/jumbo v1, "imsemergency.emergency_requires_ims_registration_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8188
    const-string/jumbo v1, "imsemergency.emergency_lte_preferred_after_nr_failed_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8189
    const-string/jumbo v1, "imsemergency.emergency_requires_volte_enabled_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8190
    const-string/jumbo v1, "imsemergency.emergency_cdma_preferred_numbers_string_array"

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8192
    const-string/jumbo v1, "imsemergency.cross_stack_redial_timer_sec_int"

    const/16 v4, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8193
    const-string/jumbo v1, "imsemergency.quick_cross_stack_redial_timer_sec_int"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8194
    const-string/jumbo v1, "imsemergency.start_quick_cross_stack_redial_timer_when_registered_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8196
    const-string/jumbo v1, "imsemergency.scan_limited_service_after_volte_failure_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8197
    const-string/jumbo v1, "imsemergency.ims_reasoninfo_code_to_retry_emergency_int_array"

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 8200
    return-object v0
.end method
