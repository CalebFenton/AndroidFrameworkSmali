.class public final Landroid/telephony/CarrierConfigManager$ImsSms;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsSms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CarrierConfigManager$ImsSms$SmsFormat;
    }
.end annotation


# static fields
.field public static final whitelist KEY_PREFIX:Ljava/lang/String; = "imssms."

.field public static final whitelist KEY_SMS_CSFB_RETRY_ON_FAILURE_BOOL:Ljava/lang/String; = "imssms.sms_csfb_retry_on_failure_bool"

.field public static final whitelist KEY_SMS_MAX_RETRY_COUNT_INT:Ljava/lang/String; = "imssms.sms_max_retry_count_int"

.field public static final whitelist KEY_SMS_MAX_RETRY_OVER_IMS_COUNT_INT:Ljava/lang/String; = "imssms.sms_max_retry_over_ims_count_int"

.field public static final whitelist KEY_SMS_OVER_IMS_FORMAT_INT:Ljava/lang/String; = "imssms.sms_over_ims_format_int"

.field public static final whitelist KEY_SMS_OVER_IMS_SEND_RETRY_DELAY_MILLIS_INT:Ljava/lang/String; = "imssms.sms_over_ims_send_retry_delay_millis_int"

.field public static final whitelist KEY_SMS_OVER_IMS_SUPPORTED_BOOL:Ljava/lang/String; = "imssms.sms_over_ims_supported_bool"

.field public static final whitelist KEY_SMS_OVER_IMS_SUPPORTED_RATS_INT_ARRAY:Ljava/lang/String; = "imssms.sms_over_ims_supported_rats_int_array"

.field public static final whitelist KEY_SMS_RP_CAUSE_VALUES_TO_FALLBACK_INT_ARRAY:Ljava/lang/String; = "imssms.sms_rp_cause_values_to_fallback_int_array"

.field public static final whitelist KEY_SMS_RP_CAUSE_VALUES_TO_RETRY_OVER_IMS_INT_ARRAY:Ljava/lang/String; = "imssms.sms_rp_cause_values_to_retry_over_ims_int_array"

.field public static final whitelist KEY_SMS_TR1_TIMER_MILLIS_INT:Ljava/lang/String; = "imssms.sms_tr1_timer_millis_int"

.field public static final whitelist KEY_SMS_TR2_TIMER_MILLIS_INT:Ljava/lang/String; = "imssms.sms_tr2_timer_millis_int"

.field public static final whitelist SMS_FORMAT_3GPP:I = 0x0

.field public static final whitelist SMS_FORMAT_3GPP2:I = 0x1


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsSms;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 7323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDefaults()Landroid/os/PersistableBundle;
    .registers 4

    .line 7458
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 7459
    .local v0, "defaults":Landroid/os/PersistableBundle;
    const-string/jumbo v1, "imssms.sms_over_ims_supported_bool"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7460
    const-string/jumbo v1, "imssms.sms_csfb_retry_on_failure_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7462
    const-string/jumbo v1, "imssms.sms_over_ims_format_int"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 7464
    const-string/jumbo v1, "imssms.sms_max_retry_count_int"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 7465
    const-string/jumbo v1, "imssms.sms_max_retry_over_ims_count_int"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 7466
    const-string/jumbo v1, "imssms.sms_over_ims_send_retry_delay_millis_int"

    const/16 v3, 0x7d0

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 7468
    const-string/jumbo v1, "imssms.sms_tr1_timer_millis_int"

    const v3, 0x1fbd0

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 7469
    const-string/jumbo v1, "imssms.sms_tr2_timer_millis_int"

    const/16 v3, 0x3a98

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 7471
    const/16 v1, 0x29

    filled-new-array {v1}, [I

    move-result-object v1

    const-string/jumbo v3, "imssms.sms_rp_cause_values_to_retry_over_ims_int_array"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 7476
    const/16 v1, 0x16

    new-array v1, v1, [I

    fill-array-data v1, :array_64

    const-string/jumbo v3, "imssms.sms_rp_cause_values_to_fallback_int_array"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 7503
    const/4 v1, 0x5

    filled-new-array {v2, v1}, [I

    move-result-object v1

    const-string/jumbo v2, "imssms.sms_over_ims_supported_rats_int_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 7510
    return-object v0

    :array_64
    .array-data 4
        0x1
        0x8
        0xa
        0xb
        0x15
        0x1b
        0x1c
        0x1d
        0x1e
        0x26
        0x2a
        0x2f
        0x32
        0x45
        0x51
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x6f
        0x7f
    .end array-data
.end method
