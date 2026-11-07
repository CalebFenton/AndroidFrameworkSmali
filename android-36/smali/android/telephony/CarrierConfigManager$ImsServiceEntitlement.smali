.class public final Landroid/telephony/CarrierConfigManager$ImsServiceEntitlement;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsServiceEntitlement"
.end annotation


# static fields
.field public static final blacklist KEY_DEFAULT_SERVICE_ENTITLEMENT_STATUS_BOOL:Ljava/lang/String; = "imsserviceentitlement.default_service_entitlement_status_bool"

.field public static final whitelist KEY_ENTITLEMENT_SERVER_URL_STRING:Ljava/lang/String; = "imsserviceentitlement.entitlement_server_url_string"

.field public static final blacklist KEY_ENTITLEMENT_VERSION_INT:Ljava/lang/String; = "imsserviceentitlement.entitlement_version_int"

.field public static final whitelist KEY_FCM_SENDER_ID_STRING:Ljava/lang/String; = "imsserviceentitlement.fcm_sender_id_string"

.field public static final whitelist KEY_IMS_PROVISIONING_BOOL:Ljava/lang/String; = "imsserviceentitlement.ims_provisioning_bool"

.field public static final whitelist KEY_PREFIX:Ljava/lang/String; = "imsserviceentitlement."

.field public static final whitelist KEY_SHOW_VOWIFI_WEBVIEW_BOOL:Ljava/lang/String; = "imsserviceentitlement.show_vowifi_webview_bool"

.field public static final blacklist KEY_SKIP_WFC_ACTIVATION_BOOL:Ljava/lang/String; = "imsserviceentitlement.skip_wfc_activation_bool"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsServiceEntitlement;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 4832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDefaults()Landroid/os/PersistableBundle;
    .registers 3

    .line 4926
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 4927
    .local v0, "defaults":Landroid/os/PersistableBundle;
    const-string/jumbo v1, "imsserviceentitlement.entitlement_server_url_string"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4928
    const-string/jumbo v1, "imsserviceentitlement.fcm_sender_id_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4929
    const-string/jumbo v1, "imsserviceentitlement.show_vowifi_webview_bool"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4930
    const-string/jumbo v1, "imsserviceentitlement.ims_provisioning_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4931
    const-string/jumbo v1, "imsserviceentitlement.default_service_entitlement_status_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4932
    const-string/jumbo v1, "imsserviceentitlement.skip_wfc_activation_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4933
    const-string/jumbo v1, "imsserviceentitlement.entitlement_version_int"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 4934
    return-object v0
.end method
