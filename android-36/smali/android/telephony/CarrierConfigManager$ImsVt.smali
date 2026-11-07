.class public final Landroid/telephony/CarrierConfigManager$ImsVt;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsVt"
.end annotation


# static fields
.field public static final whitelist KEY_H264_PAYLOAD_DESCRIPTION_BUNDLE:Ljava/lang/String; = "imsvt.h264_payload_description_bundle"

.field public static final whitelist KEY_H264_PAYLOAD_TYPE_INT_ARRAY:Ljava/lang/String; = "imsvt.h264_payload_type_int_array"

.field public static final whitelist KEY_H264_VIDEO_CODEC_ATTRIBUTE_PROFILE_LEVEL_ID_STRING:Ljava/lang/String; = "imsvt.h264_video_codec_attribute_profile_level_id_string"

.field public static final whitelist KEY_PREFIX:Ljava/lang/String; = "imsvt."

.field public static final whitelist KEY_VIDEO_AS_BANDWIDTH_KBPS_INT:Ljava/lang/String; = "imsvt.video_as_bandwidth_kbps_int"

.field public static final whitelist KEY_VIDEO_CODEC_ATTRIBUTE_FRAME_RATE_INT:Ljava/lang/String; = "imsvt.video_codec_attribute_frame_rate_int"

.field public static final whitelist KEY_VIDEO_CODEC_ATTRIBUTE_PACKETIZATION_MODE_INT:Ljava/lang/String; = "imsvt.video_codec_attribute_packetization_mode_int"

.field public static final whitelist KEY_VIDEO_CODEC_ATTRIBUTE_RESOLUTION_INT_ARRAY:Ljava/lang/String; = "imsvt.video_codec_attribute_resolution_int_array"

.field public static final whitelist KEY_VIDEO_CODEC_CAPABILITY_PAYLOAD_TYPES_BUNDLE:Ljava/lang/String; = "imsvt.video_codec_capability_payload_types_bundle"

.field public static final whitelist KEY_VIDEO_ON_DEFAULT_BEARER_SUPPORTED_BOOL:Ljava/lang/String; = "imsvt.video_on_default_bearer_supported_bool"

.field public static final whitelist KEY_VIDEO_QOS_PRECONDITION_SUPPORTED_BOOL:Ljava/lang/String; = "imsvt.video_qos_precondition_supported_bool"

.field public static final whitelist KEY_VIDEO_RR_BANDWIDTH_BPS_INT:Ljava/lang/String; = "imsvt.video_rr_bandwidth_bps_int"

.field public static final whitelist KEY_VIDEO_RS_BANDWIDTH_BPS_INT:Ljava/lang/String; = "imsvt.video_rs_bandwidth_bps_int"

.field public static final whitelist KEY_VIDEO_RTCP_INACTIVITY_TIMER_MILLIS_INT:Ljava/lang/String; = "imsvt.video_rtcp_inactivity_timer_millis_int"

.field public static final whitelist KEY_VIDEO_RTP_DSCP_INT:Ljava/lang/String; = "imsvt.video_rtp_dscp_int"

.field public static final whitelist KEY_VIDEO_RTP_INACTIVITY_TIMER_MILLIS_INT:Ljava/lang/String; = "imsvt.video_rtp_inactivity_timer_millis_int"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsVt;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 8208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDefaults()Landroid/os/PersistableBundle;
    .registers 7

    .line 8402
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 8403
    .local v0, "defaults":Landroid/os/PersistableBundle;
    const-string/jumbo v1, "imsvt.video_on_default_bearer_supported_bool"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8404
    const-string/jumbo v1, "imsvt.video_qos_precondition_supported_bool"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8406
    const-string/jumbo v1, "imsvt.video_rtp_inactivity_timer_millis_int"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8407
    const-string/jumbo v1, "imsvt.video_rtcp_inactivity_timer_millis_int"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8409
    const-string/jumbo v1, "imsvt.video_as_bandwidth_kbps_int"

    const/16 v3, 0x3c0

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8410
    const-string/jumbo v1, "imsvt.video_rs_bandwidth_bps_int"

    const/16 v3, 0x1f40

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8411
    const-string/jumbo v1, "imsvt.video_rr_bandwidth_bps_int"

    const/16 v3, 0x1770

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8412
    const-string/jumbo v1, "imsvt.video_rtp_dscp_int"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8414
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 8416
    .local v1, "video_codec_capability_payload_types":Landroid/os/PersistableBundle;
    const/16 v3, 0x63

    const/16 v4, 0x64

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-string/jumbo v4, "imsvt.h264_payload_type_int_array"

    invoke-virtual {v1, v4, v3}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 8420
    const-string/jumbo v3, "imsvt.video_codec_capability_payload_types_bundle"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 8424
    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    .line 8429
    .local v3, "all_h264_payload_bundles":Landroid/os/PersistableBundle;
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 8430
    .local v4, "h264_bundle_instance1":Landroid/os/PersistableBundle;
    const-string v5, "99"

    invoke-virtual {v3, v5, v4}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 8436
    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    .line 8437
    .local v5, "h264_bundle_instance2":Landroid/os/PersistableBundle;
    const-string/jumbo v6, "imsvt.video_codec_attribute_packetization_mode_int"

    invoke-virtual {v5, v6, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8441
    const-string v2, "100"

    invoke-virtual {v3, v2, v5}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 8445
    const-string/jumbo v2, "imsvt.h264_payload_description_bundle"

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 8449
    return-object v0
.end method
