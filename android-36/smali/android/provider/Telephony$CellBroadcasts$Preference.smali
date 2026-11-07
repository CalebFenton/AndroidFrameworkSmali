.class public final Landroid/provider/Telephony$CellBroadcasts$Preference;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$CellBroadcasts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Preference"
.end annotation


# static fields
.field public static final whitelist ENABLE_ALERT_VIBRATION_PREF:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final whitelist ENABLE_AREA_UPDATE_INFO_PREF:Ljava/lang/String; = "enable_area_update_info_alerts"

.field public static final whitelist ENABLE_CMAS_AMBER_PREF:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final whitelist ENABLE_CMAS_EXTREME_THREAT_PREF:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final whitelist ENABLE_CMAS_IN_SECOND_LANGUAGE_PREF:Ljava/lang/String; = "receive_cmas_in_second_language"

.field public static final whitelist ENABLE_CMAS_PRESIDENTIAL_PREF:Ljava/lang/String; = "enable_cmas_presidential_alerts"

.field public static final whitelist ENABLE_CMAS_SEVERE_THREAT_PREF:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final whitelist ENABLE_EMERGENCY_PERF:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final whitelist ENABLE_PUBLIC_SAFETY_PREF:Ljava/lang/String; = "enable_public_safety_messages"

.field public static final whitelist ENABLE_STATE_LOCAL_TEST_PREF:Ljava/lang/String; = "enable_state_local_test_alerts"

.field public static final whitelist ENABLE_TEST_ALERT_PREF:Ljava/lang/String; = "enable_test_alerts"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 3634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
