.class public final Landroid/telephony/CarrierConfigManager$Gps;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gps"
.end annotation


# static fields
.field public static final blacklist KEY_A_GLONASS_POS_PROTOCOL_SELECT_STRING:Ljava/lang/String; = "gps.a_glonass_pos_protocol_select"

.field public static final whitelist KEY_ENABLE_NI_SUPL_MESSAGE_INJECTION_BOOL:Ljava/lang/String; = "gps.enable_ni_supl_message_injection_bool"

.field public static final blacklist KEY_ES_EXTENSION_SEC_STRING:Ljava/lang/String; = "gps.es_extension_sec"

.field public static final blacklist KEY_ES_SUPL_CONTROL_PLANE_SUPPORT_INT:Ljava/lang/String; = "gps.es_supl_control_plane_support_int"

.field public static final blacklist KEY_ES_SUPL_DATA_PLANE_ONLY_ROAMING_PLMN_STRING_ARRAY:Ljava/lang/String; = "gps.es_supl_data_plane_only_roaming_plmn_string_array"

.field public static final blacklist KEY_GPS_LOCK_STRING:Ljava/lang/String; = "gps.gps_lock"

.field public static final blacklist KEY_LPP_PROFILE_STRING:Ljava/lang/String; = "gps.lpp_profile"

.field public static final blacklist KEY_NFW_PROXY_APPS_STRING:Ljava/lang/String; = "gps.nfw_proxy_apps"

.field public static final whitelist KEY_PERSIST_LPP_MODE_BOOL:Ljava/lang/String; = "gps.persist_lpp_mode_bool"

.field public static final whitelist KEY_PREFIX:Ljava/lang/String; = "gps."

.field public static final blacklist KEY_SUPL_ES_STRING:Ljava/lang/String; = "gps.supl_es"

.field public static final blacklist KEY_SUPL_HOST_STRING:Ljava/lang/String; = "gps.supl_host"

.field public static final blacklist KEY_SUPL_MODE_STRING:Ljava/lang/String; = "gps.supl_mode"

.field public static final blacklist KEY_SUPL_PORT_STRING:Ljava/lang/String; = "gps.supl_port"

.field public static final blacklist KEY_SUPL_VER_STRING:Ljava/lang/String; = "gps.supl_ver"

.field public static final blacklist KEY_USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL_STRING:Ljava/lang/String; = "gps.use_emergency_pdn_for_emergency_supl"

.field public static final blacklist SUPL_EMERGENCY_MODE_TYPE_CP_FALLBACK:I = 0x1

.field public static final blacklist SUPL_EMERGENCY_MODE_TYPE_CP_ONLY:I = 0x0

.field public static final blacklist SUPL_EMERGENCY_MODE_TYPE_DP_ONLY:I = 0x2


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$Gps;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 4942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDefaults()Landroid/os/PersistableBundle;
    .registers 4

    .line 5115
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 5116
    .local v0, "defaults":Landroid/os/PersistableBundle;
    const-string/jumbo v1, "gps.persist_lpp_mode_bool"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5117
    const-string/jumbo v1, "gps.supl_host"

    const-string/jumbo v2, "supl.google.com"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5118
    const-string/jumbo v1, "gps.supl_port"

    const-string v2, "7275"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5119
    const-string/jumbo v1, "gps.supl_ver"

    const-string v2, "0x20000"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5120
    const-string/jumbo v1, "gps.supl_mode"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5121
    const-string/jumbo v1, "gps.supl_es"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5122
    const-string/jumbo v1, "gps.lpp_profile"

    const-string v3, "2"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5123
    const-string/jumbo v1, "gps.use_emergency_pdn_for_emergency_supl"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5124
    const-string/jumbo v1, "gps.a_glonass_pos_protocol_select"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5125
    const-string/jumbo v1, "gps.gps_lock"

    const-string v3, "3"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5126
    const-string/jumbo v1, "gps.es_extension_sec"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5127
    const-string/jumbo v1, "gps.nfw_proxy_apps"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5128
    const-string/jumbo v1, "gps.es_supl_control_plane_support_int"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 5130
    const-string/jumbo v1, "gps.es_supl_data_plane_only_roaming_plmn_string_array"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5131
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->enableNiSuplMessageInjectionByCarrierConfigBugfix()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 5132
    const-string/jumbo v1, "gps.enable_ni_supl_message_injection_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5134
    :cond_79
    return-object v0
.end method
