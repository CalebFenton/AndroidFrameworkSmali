.class public final Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;
.super Ljava/lang/Object;
.source "MetricIds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;
    }
.end annotation


# static fields
.field public static final blacklist INVALID_METRIC_ID:J = 0x0L

.field public static final blacklist METRIC_TYPE_COUNTER:I = 0x1

.field public static final blacklist METRIC_TYPE_COUNTER_WITH_UID:I = 0x3

.field public static final blacklist METRIC_TYPE_HISTOGRAM:I = 0x2

.field public static final blacklist METRIC_TYPE_HISTOGRAM_WITH_UID:I = 0x4

.field public static final blacklist METRIC_TYPE_UNKNOWN:I

.field private static blacklist metricIds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    .line 31
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5444f12b0e4d986aL    # -4.948300889871327E-98

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "accessibility.value_fab_shortcut_dismiss"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x3a3041d817065fa4L    # 2.051947565728453E-28

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "accessibility.value_fab_shortcut_edit"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x501065ef6b27f871L    # -8.5287064191305405E-78

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "accessibility.value_full_triple_tap_first_interval"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x1c43b2ac0b8de29cL    # 1.592844032361875E-172

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "accessibility.value_full_triple_tap_second_interval"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x139aad8d9df92e5dL    # -1.4356086011430703E214

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "accessibility.value_hct_notification_dismissed"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x338373c39815575aL    # 1.5131419773959072E-60

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "accessibility.value_hct_notification_opened_settings"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x53f40828d13831a9L    # -1.6367214961773442E-96

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "accessibility.value_hct_notification_posted"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x2754d4f9a5296018L

    const/4 v6, 0x3

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "accessibility.value_qs_shortcut_add"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x83bf2e0b584644bL

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "accessibility.value_qs_shortcut_remove"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x77acd12c240de40dL    # 2.9734190730656435E268

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "app.value_force_stop_cancelled_pi_sent_from_top_per_caller"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x76ba1bfb3306cb2aL

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "app.value_force_stop_cancelled_pi_sent_from_top_per_owner"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x6852f9fc5bfdd64eL

    const/4 v7, 0x4

    invoke-direct {v1, v2, v3, v7}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "app.value_high_authenticator_response_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x3d10827d5871fc87L    # -2.7699138713602778E14

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_concurrent_sync_operations"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x72cf207fa10c3123L    # -3.861154651922167E-245

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_get_async_end_to_end_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x7b6f9cc4c3afd918L    # -1.076217601646089E-286

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_get_async_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x22d963ea48a25c8L

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_set_async_end_to_end_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x3c1ba3578e1cf431L    # -1.1737862285679294E19

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_set_async_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x3ab2616778f3cc63L    # -7.1615592618853E25

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_subscription_update_rate"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x49a8c8329f9bbc42L    # -6.354553961239671E-47

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_sync_get_property_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x43b54cbfeb676e69L    # 1.5348125908000054E18

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_sync_hal_get_property_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0xab7feef8d733723L    # -9.01058071389562E256

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_sync_hal_set_property_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x4869052b642e8ec9L    # 6.811144490957559E40

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_sync_set_property_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x4155186e41701bf4L    # 5530041.022467602

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "battery.value_app_added_to_power_allowlist"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x1c6c4a10e6db7362L    # 9.150292962707835E-172

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "battery.value_app_background_restricted"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x453a7ff44f445158L    # -1.3894164627363795E-25

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "battery.value_app_removed_from_power_allowlist"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x17158a9ed9eebf7cL

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "binary_transparency.value_digest_all_packages_latency_uniform"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x55cad0788b78da2aL

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "biometric.value_biometric_scheduler_operation_state_error_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x7c336b0416a73de0L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "biometric.value_scheduler_watchdog_triggered_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x4e86967f8cfe37d5L    # 1.9486980536459892E70

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_aac_codec_usage_over_a2dp"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x54382c80ec187a1bL    # -8.714559344345322E-98

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_aptx_codec_usage_over_a2dp"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x6131a892d2067c68L    # 1.5516411251772335E160

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_aptx_codec_usage_over_hfp"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x1c2143d79041cc81L    # 3.490272098619207E-173

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_aptx_hd_codec_usage_over_a2dp"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x87ef3ede6bd509L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_auto_on_disabled"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x39a3c1101b299cbdL    # 4.869774448811658E-31

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_auto_on_enabled"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x2d647beae1c1e1f6L    # -8.757964757037787E89

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_auto_on_supported"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x24e072786ce44520L    # 4.634282980049659E-131

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_auto_on_triggered"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x47d104929f8bfa03L    # 9.048247595271338E37

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_close_profile_proxy_adapter_mismatch"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x1f0c73cbd475ae39L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_cvsd_codec_usage_over_hfp"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x113869a2f025d0a7L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_kill_from_binder_thread"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x79d3a81563d25490L    # 6.96889434966805E278

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_lc3_codec_usage_over_hfp"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x5b2eb663547eeb15L    # 1.703109761980315E131

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_ldac_codec_usage_over_a2dp"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x31753514119277deL    # -2.311452008942414E70

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_msbc_codec_usage_over_hfp"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x67611e7526943856L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_opus_codec_usage_over_a2dp"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5d4eed22df667c14L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_sbc_codec_usage_over_a2dp"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x6f2e0ee50245a435L    # 3.5603234267040877E227

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_shutdown_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x25c8adfc2d8e5d89L    # -3.946514003156704E126

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "content_capture.value_content_capture_wrong_thread_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0xfa8c28b286b580fL    # -1.443224800447832E233

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "core_networking.value_httpengine_preload_attempt_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x655a65f8ab28af33L    # -2.6029152090000515E-180

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "core_networking.value_nud_failure_ignored"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0xc4fb7133edc542cL

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "core_networking.value_nud_failure_queried"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5f41298b39ca05c0L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "cpu.value_aggregated_thread_tracking_start_failure_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x6d5994fe9c614a19L    # 5.644058865828992E218

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "cpu.value_process_tracking_start_failure_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0xf7b23a301efa66bL

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "device_lock.value_resets_unsuccessful_provisioning_deferred"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x35aa95e37b557beL

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "device_lock.value_resets_unsuccessful_provisioning_mandatory"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x44bcaa48d3139677L    # 1.3536745557240847E23

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "device_lock.value_successful_check_in_response_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x7540e724207dac73L    # 6.344938434532908E256

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "device_lock.value_successful_locking_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x274c38d05da5b6e3L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "device_lock.value_successful_provisioning_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x204163f2a980bd2aL    # -1.6031537094185499E153

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "device_lock.value_successful_unlocking_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x15232d207be1b578L    # 7.466159783193892E-207

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "input.value_app_handled_stem_primary_key_gestures_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x1d64ec18c8f3c34eL    # -9.979531153805873E166

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "input.value_rotary_input_device_full_rotation_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x66100e86aa88184aL    # 4.264172949408985E183

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "intents.value_explicit_uri_grant_for_image_capture_action"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0xc89cc3adaf3c176L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "intents.value_explicit_uri_grant_for_send_action"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x3ed50a409a791ee4L    # -883423.6982946726

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "intents.value_explicit_uri_grant_for_send_multiple_action"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x1c51fcd42695a70cL    # -1.4497999868880154E172

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_estimated_network_bytes_updated"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x68e9ea00cc274796L    # 2.421379621593642E197

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_estimated_network_download_bytes_decreased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x3bc6ddfb2c1afecdL    # 9.684599413406268E-21

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_estimated_network_download_bytes_increased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x6b82050ca37ed569L    # 7.40517169354174E209

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_estimated_network_upload_bytes_decreased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x10b534c96dcf71a1L

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_estimated_network_upload_bytes_increased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x5b3701a8aa27b929L    # 2.5515747800028147E131

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_initial_set_notification_call_optional"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x38608cdff97ef2d6L    # 3.890955086701937E-37

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_initial_set_notification_call_required"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x67a26400a6b431faL

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_job_work_items_enqueued"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x7eccaa055ff3229aL    # -7.049004085412806E-303

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_max_scheduling_limit_hit"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x6de140574e150542L    # 1.948720114029396E221

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_schedule_failure_app_start_mode_disabled"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x62c575e1260ba4cdL    # -7.032272785818312E-168

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_schedule_failure_ej_out_of_quota"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x49d5ea63ae224707L    # -8.923841012019315E-48

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_schedule_failure_uij_invalid_state"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5ecf4258c6fd6cfbL    # -8.182748652338636E-149

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_schedule_failure_uij_no_permission"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x53193479fa47c19eL    # -2.1856026002554066E-92

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_set_notification_changed_notification_ids"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x48fdb46d8af6757eL    # 4.1402443607265673E43

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_slow_app_response_binding"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x35e66a77a55eb9deL    # -9.347805338614186E48

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_slow_app_response_on_start_job"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x5ffb596529e9b1a1L    # 2.2918301194232052E154

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_slow_app_response_on_stop_job"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x2df319fd797517a9L    # -1.7964854537503615E87

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_slow_app_response_set_notification"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x7eebcee46c2eaaceL

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_subsequent_set_notification_call_optional"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x32d90fb45fce9ca5L    # 9.518868365889177E-64

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_subsequent_set_notification_call_required"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x350b0bb70aa35a18L    # -1.2543858082770914E53

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_transferred_network_bytes_updated"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x51f06ce260cf1b16L    # -7.936154102547392E-87

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_transferred_network_download_bytes_decreased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x25141488e95050eeL    # -9.676543028252252E129

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_transferred_network_download_bytes_increased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x54255e6982feb5beL    # 2.282173719606102E97

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_transferred_network_upload_bytes_decreased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x6a756ab89c7e7c84L    # -6.62397862451482E-205

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_transferred_network_upload_bytes_increased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x12087e43d5443704L    # -5.310677411322023E221

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_cntr_w_uid_unexpected_service_disconnects"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0xae51d9fa24ff8b4L    # -1.26146379070036E256

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_hist_initial_job_estimated_network_download_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x4a6ee8a96e2c9d26L    # -1.1420165464629962E-50

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_hist_initial_job_estimated_network_upload_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x31f3422bbe553cfcL    # 4.46460452296716E-68

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_hist_initial_jwi_estimated_network_download_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x17a3280d91cbb72cL    # 8.20064485656831E-195

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_hist_initial_jwi_estimated_network_upload_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x617637d5b06bb141L    # 3.12366675993134E161

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_hist_job_concurrency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5b53f736077a061eL

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_hist_scheduled_job_30_min_high_water_mark"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x77b62df4bf16ee41L    # -9.775033695744229E-269

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_hist_transferred_network_download_kilobytes_high_water_mark"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5d543f2d98d35aebL

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_hist_transferred_network_upload_kilobytes_high_water_mark"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x16cf2aef1a08e643L    # -5.032923592559582E198

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_hist_updated_estimated_network_download_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x66ad1762e9fac4d8L

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_hist_updated_estimated_network_upload_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x564a77010d5d4a7fL    # -9.169576209767794E-108

    invoke-direct {v1, v2, v3, v7}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_hist_w_uid_enqueued_work_items_at_job_start"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x581886dcf5c2b0aeL

    invoke-direct {v1, v2, v3, v7}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_hist_w_uid_enqueued_work_items_high_water_mark"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0xcd43aaa2a7c4003L

    invoke-direct {v1, v2, v3, v7}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_hist_w_uid_job_minimum_chunk_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x2dfe1c318d925793L    # 3.7840242666368218E-87

    invoke-direct {v1, v2, v3, v7}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_hist_w_uid_jwi_minimum_chunk_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x1d0147a34a1c3a2dL    # 5.723372878689358E-169

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_job_quota_reduced_due_to_buggy_uid"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x440e8ad98073b802L    # -5.914871283205462E-20

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "job_scheduler.value_job_scheduler_job_deadline_expired_counter"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0xa1e61b1a3fb8ad7L

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "media_audio.value_audio_focus_gain_appops_denial"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x33cfdbac2f35c291L    # -1.0132437313595713E59

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "media_audio.value_audio_focus_gain_granted"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x6718e524a4d7faeL    # -3.37293947483345E277

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "media_audio.value_audio_focus_gain_transient_appops_denial"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x1bc172d713f288b4L    # -7.556291430273552E174

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "media_audio.value_audio_focus_gain_transient_duck_appops_denial"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x645c4e4f0948c7a4L    # 2.8003632011387193E175

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "media_audio.value_audio_focus_gain_transient_duck_granted"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x49a1fc4ceed5dc88L    # 5.133966634961988E46

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "media_audio.value_audio_focus_gain_transient_excl_appops_denial"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x19045d28a33039e0L    # 3.656400020583057E-188

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "media_audio.value_audio_focus_gain_transient_excl_granted"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x512e0e4bc26f2e85L    # -3.694743159463262E-83

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "media_audio.value_audio_focus_gain_transient_granted"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x4ceecb4a217623f6L    # -1.0456306564814178E-62

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "media_audio.value_audio_focus_grant_hardening_waived_by_sdk"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x3602fa0f03dd15daL    # 1.6230559658131883E-48

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "media_audio.value_audio_playback_hardening_partial_restriction"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x20fd93bf4d377ff1L    # -4.711345637313692E149

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "media_audio.value_audio_playback_hardening_strict_would_restrict"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x2077fb48916f8a6eL    # -1.5724336673926277E152

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "media_audio.value_audio_volume_hardening_allowed"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x480ae323ac34b17bL    # 1.1436576897658586E39

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "media_audio.value_audio_volume_hardening_partial_restriction"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x64f0015a99ee69dfL    # -2.46735008964658E-178

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "media_audio.value_audio_volume_hardening_strict_restriction"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x57ebc7c5590b2346L    # 3.4206303793090055E115

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "notifications.value_client_throttled_cancel_duplicate"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x3ed648a6ae8b5f99L    # -842668.6590929151

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "notifications.value_client_throttled_notify_update"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x75178207e4798f4dL

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "screen.value_dim_to_screen_off"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x958042f2f6a2252L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "screen.value_undim"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x396cc7264ef70f50L    # 4.433941906594358E-32

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "speech_recognition.value_exceed_service_connections_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x26d75abf3150df53L    # -3.1820445677905694E121

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "speech_recognition.value_exceed_session_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x17671594a4602dbaL    # -7.275289898858634E195

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "stability_anr.value_skipped_anrs"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x3dbbf06bbce333c0L    # -1.723214413375957E11

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "stability_anr.value_total_anrs"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5a56aac8f2a4ad93L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "stability_errors.value_dropbox_buffer_expired_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x5dccc72a89dcb8d3L    # 7.018566985776186E143

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "statsd_errors.value_report_vendor_atom_errors_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x7381d6d5c0af90dbL

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "tex_test.value_telemetry_express_fixed_range_histogram"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x5398f56398f25a68L    # 5.206166146721598E94

    invoke-direct {v1, v2, v3, v7}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "tex_test.value_telemetry_express_fixed_range_histogram_with_uid"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x35a09b238904c47eL    # 2.2191980054108587E-50

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "tex_test.value_telemetry_express_scaled_factor_histogram"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x69e163a07d42722bL    # 1.064843788138933E202

    invoke-direct {v1, v2, v3, v7}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "tex_test.value_telemetry_express_scaled_range_histogram_with_uid"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x1bcd9f279749be83L    # -4.545512846619693E174

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "tex_test.value_telemetry_express_test_counter"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x43b1ba88b8212502L    # 1.2774837687243904E18

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "tex_test.value_telemetry_express_test_counter_with_uid"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5b4a5839e251c075L    # -7.62724068638949E-132

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "vibrator.value_perform_haptic_feedback_keyboard"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0xcd63eb8effa1893L    # -5.627400975153213E246

    invoke-direct {v1, v2, v3, v7}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "vibrator.value_vibration_adaptive_haptic_scale"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x3a255f8236245b58L    # 1.348831018001073E-28

    invoke-direct {v1, v2, v3, v7}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "vibrator.value_vibration_param_request_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x7a0ebfc5e719b300L    # 8.721247044425197E279

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "vibrator.value_vibration_param_request_timeout"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x671bd808a3946c49L    # 4.8460410068431267E188

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "vibrator.value_vibration_param_response_ignored"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x2d36a803bcdab779L    # -6.4532517933783635E90

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "vibrator.value_vibration_param_scale"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x57a85d21fa6c5964L    # -2.39949206299405E-114

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "vibrator.value_vibration_vendor_effect_requests"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x485b0dcf79b23bd9L    # -1.202244476939334E-40

    invoke-direct {v1, v2, v3, v7}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "vibrator.value_vibration_vendor_effect_size"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0xa42a4baf5e06f14L

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "vibrator.value_vibration_vendor_session_interrupted"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x4f2a844bd4cb6126L    # -1.8998547553599104E-73

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "vibrator.value_vibration_vendor_session_started"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x15f8b719a55e7dc8L    # 7.882930120627674E-203

    invoke-direct {v1, v2, v3, v7}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "vibrator.value_vibration_vendor_session_vibrations"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x62403419a0fa9a6fL

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "virtual_devices.value_activity_blocked_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x54bb7718245771dL

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "virtual_devices.value_secure_window_blocked_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x3010da96ca29c4eL

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "virtual_devices.value_virtual_audio_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x250cba2a5fb7d20fL    # 3.237764979643793E-130

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "virtual_devices.value_virtual_camera_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0xbc8ede78a85bf30L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "virtual_devices.value_virtual_devices_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x6fa1422a7a40caceL    # -7.920433132846928E-230

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "virtual_devices.value_virtual_devices_created_with_uid_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x7393f9ae1fe7a8caL    # -7.828424411436505E-249

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "virtual_devices.value_virtual_display_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x68d847f8e005cd23L    # -3.966309836187191E-197

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "virtual_devices.value_virtual_dpad_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x3b6c7efb006b555dL    # -2.30262383324969E22

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "virtual_devices.value_virtual_keyboard_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x14cae2b72d93ce8fL

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "virtual_devices.value_virtual_mouse_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x7361a5b5701c8764L    # -6.782985899342115E-248

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "virtual_devices.value_virtual_navigationtouchpad_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x70274689d6159fe1L

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "virtual_devices.value_virtual_rotary_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x5a08a069995dd3f6L    # 5.209461888107144E125

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "virtual_devices.value_virtual_sensors_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x64283077ddfd5e81L

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "virtual_devices.value_virtual_stylus_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x76515e28f396e68fL    # 8.545182918377024E261

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "virtual_devices.value_virtual_touchscreen_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x4cc53f8914338477L    # 6.828903500777625E61

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "wear_frameworks.value_power_key_down_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x5f319455673be1e1L    # 3.59652093745926E150

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "wear_frameworks.value_stem_primary_key_down_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x79df130727822146L    # 1.1016857869928886E279

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "wear_notifications.value_hist_image_asset_open_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x7c152e47f2ba1e8eL    # -8.600035433358443E-290

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "wear_notifications.value_local_notification_orphan_candidates"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x678db4a16c802b4cL    # 6.617674895733634E190

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "wear_notifications.value_local_notification_orphans"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x71b01e2e8fa55212L    # -9.562697368061225E-240

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "wear_notifications.value_local_notification_widow_candidates"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x33d0b574500deb59L    # -9.820900395072912E58

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "wear_notifications.value_local_notification_widows"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x404ff190fe9576f9L    # -0.06272023949216897

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "wear_notifications.value_notification_unhide"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x52481dddec720c05L    # 2.398755830047928E88

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "wear_notifications.value_notification_unhide_from_blocked"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x510b55d83f4687f1L    # 2.5929441912542327E82

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "wear_notifications.value_notification_unhide_from_dismissed"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x3dc530626f524beeL

    invoke-direct {v1, v2, v3, v6}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "wear_notifications.value_notification_unhide_from_filtered"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x4b95c6a9c51549efL    # 1.3348666312333791E56

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "webview.value_app_waiting_for_relro_completion_delay"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x1181eed2e7682492L    # -1.7389546326901507E224

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "webview.value_default_webview_package_invalid_counter"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x6650197c4c11fd74L    # -5.865289400836702E-185

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "webview.value_find_preferred_webview_package_counter"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5c5c295c77c64b1eL    # -5.330885349361753E-137

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "webview.value_on_webview_provider_changed_counter"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x24d987fa20b535f8L    # 3.59693386888069E-131

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "webview.value_on_webview_provider_changed_with_default_package_counter"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x6221576dc49584c7L    # -8.318653272745789E-165

    invoke-direct {v1, v2, v3, v5}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "webview.value_prepare_webview_in_system_server_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x72c2df65a9f17304L    # -6.66537497941079E-245

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "webview.value_webview_not_usable_for_all_users_counter"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getMetricIdHash(Ljava/lang/String;I)J
    .registers 5
    .param p0, "metricId"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 212
    sget-object v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;

    .line 213
    .local v0, "info":Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;
    if-eqz v0, :cond_12

    iget v1, v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;->mType:I

    if-eq v1, p1, :cond_f

    goto :goto_12

    .line 216
    :cond_f
    iget-wide v1, v0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;->mHash:J

    return-wide v1

    .line 214
    :cond_12
    :goto_12
    const-wide/16 v1, 0x0

    return-wide v1
.end method
