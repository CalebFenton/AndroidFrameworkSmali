.class public final Landroid/telephony/CarrierConfigManager$ImsRtt;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsRtt"
.end annotation


# static fields
.field public static final whitelist KEY_PREFIX:Ljava/lang/String; = "imsrtt."

.field public static final whitelist KEY_RED_PAYLOAD_TYPE_INT:Ljava/lang/String; = "imsrtt.red_payload_type_int"

.field public static final whitelist KEY_T140_PAYLOAD_TYPE_INT:Ljava/lang/String; = "imsrtt.t140_payload_type_int"

.field public static final whitelist KEY_TEXT_AS_BANDWIDTH_KBPS_INT:Ljava/lang/String; = "imsrtt.text_as_bandwidth_kbps_int"

.field public static final whitelist KEY_TEXT_CODEC_CAPABILITY_PAYLOAD_TYPES_BUNDLE:Ljava/lang/String; = "imsrtt.text_codec_capability_payload_types_bundle"

.field public static final whitelist KEY_TEXT_ON_DEFAULT_BEARER_SUPPORTED_BOOL:Ljava/lang/String; = "imsrtt.text_on_default_bearer_supported_bool"

.field public static final whitelist KEY_TEXT_QOS_PRECONDITION_SUPPORTED_BOOL:Ljava/lang/String; = "imsrtt.text_qos_precondition_supported_bool"

.field public static final whitelist KEY_TEXT_RR_BANDWIDTH_BPS_INT:Ljava/lang/String; = "imsrtt.text_rr_bandwidth_bps_int"

.field public static final whitelist KEY_TEXT_RS_BANDWIDTH_BPS_INT:Ljava/lang/String; = "imsrtt.text_rs_bandwidth_bps_int"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsRtt;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 7519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDefaults()Landroid/os/PersistableBundle;
    .registers 4

    .line 7601
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 7602
    .local v0, "defaults":Landroid/os/PersistableBundle;
    const-string/jumbo v1, "imsrtt.text_on_default_bearer_supported_bool"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7603
    const-string/jumbo v1, "imsrtt.text_qos_precondition_supported_bool"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7605
    const-string/jumbo v1, "imsrtt.text_as_bandwidth_kbps_int"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 7606
    const-string/jumbo v1, "imsrtt.text_rs_bandwidth_bps_int"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 7607
    const-string/jumbo v1, "imsrtt.text_rr_bandwidth_bps_int"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 7609
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 7611
    .local v1, "text_codec_capability_payload_types":Landroid/os/PersistableBundle;
    const-string/jumbo v2, "imsrtt.red_payload_type_int"

    const/16 v3, 0x70

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 7615
    const-string/jumbo v2, "imsrtt.t140_payload_type_int"

    const/16 v3, 0x6f

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 7619
    const-string/jumbo v2, "imsrtt.text_codec_capability_payload_types_bundle"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 7623
    return-object v0
.end method
