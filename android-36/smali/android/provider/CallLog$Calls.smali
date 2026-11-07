.class public Landroid/provider/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$Calls$MissedReason;
    }
.end annotation


# static fields
.field public static final greylist-max-o ADD_FOR_ALL_USERS:Ljava/lang/String; = "add_for_all_users"

.field public static final greylist-max-o ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final whitelist ANSWERED_EXTERNALLY_TYPE:I = 0x7

.field public static final whitelist ASSERTED_DISPLAY_NAME:Ljava/lang/String; = "asserted_display_name"

.field public static final whitelist AUTO_MISSED_EMERGENCY_CALL:J = 0x1L

.field public static final whitelist AUTO_MISSED_MAXIMUM_DIALING:J = 0x4L

.field public static final whitelist AUTO_MISSED_MAXIMUM_RINGING:J = 0x2L

.field public static final whitelist BLOCKED_TYPE:I = 0x6

.field public static final whitelist BLOCK_REASON:Ljava/lang/String; = "block_reason"

.field public static final whitelist BLOCK_REASON_BLOCKED_NUMBER:I = 0x3

.field public static final whitelist BLOCK_REASON_CALL_SCREENING_SERVICE:I = 0x1

.field public static final whitelist BLOCK_REASON_DIRECT_TO_VOICEMAIL:I = 0x2

.field public static final whitelist BLOCK_REASON_NOT_BLOCKED:I = 0x0

.field public static final whitelist BLOCK_REASON_NOT_IN_CONTACTS:I = 0x7

.field public static final whitelist BLOCK_REASON_PAY_PHONE:I = 0x6

.field public static final whitelist BLOCK_REASON_RESTRICTED_NUMBER:I = 0x5

.field public static final whitelist BLOCK_REASON_UNKNOWN_NUMBER:I = 0x4

.field public static final whitelist CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final whitelist CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final whitelist CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final whitelist CACHED_NAME:Ljava/lang/String; = "name"

.field public static final whitelist CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final whitelist CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final whitelist CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final whitelist CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final whitelist CACHED_PHOTO_URI:Ljava/lang/String; = "photo_uri"

.field public static final whitelist CALL_SCREENING_APP_NAME:Ljava/lang/String; = "call_screening_app_name"

.field public static final whitelist CALL_SCREENING_COMPONENT_NAME:Ljava/lang/String; = "call_screening_component_name"

.field public static final whitelist COMPOSER_PHOTO_URI:Ljava/lang/String; = "composer_photo_uri"

.field public static final whitelist CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist CONTENT_URI_LIMIT_1:Landroid/net/Uri;

.field public static final whitelist CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final whitelist COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final whitelist DATA_USAGE:Ljava/lang/String; = "data_usage"

.field public static final whitelist DATE:Ljava/lang/String; = "date"

.field private static final blacklist DEFAULT_MAX_CALL_LOG_SIZE:I = 0x1f4

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final whitelist DURATION:Ljava/lang/String; = "duration"

.field public static final whitelist EXTRA_CALL_TYPE_FILTER:Ljava/lang/String; = "android.provider.extra.CALL_TYPE_FILTER"

.field public static final whitelist FEATURES:Ljava/lang/String; = "features"

.field public static final whitelist FEATURES_ASSISTED_DIALING_USED:I = 0x10

.field public static final whitelist FEATURES_HD_CALL:I = 0x4

.field public static final whitelist FEATURES_PULLED_EXTERNALLY:I = 0x2

.field public static final whitelist FEATURES_RTT:I = 0x20

.field public static final whitelist FEATURES_VIDEO:I = 0x1

.field public static final whitelist FEATURES_VOLTE:I = 0x40

.field public static final whitelist FEATURES_WIFI:I = 0x8

.field public static final whitelist GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final whitelist INCOMING_TYPE:I = 0x1

.field public static final whitelist IS_BUSINESS_CALL:Ljava/lang/String; = "is_business_call"

.field public static final blacklist IS_PHONE_ACCOUNT_MIGRATION_PENDING:Ljava/lang/String; = "is_call_log_phone_account_migration_pending"

.field public static final whitelist IS_READ:Ljava/lang/String; = "is_read"

.field public static final whitelist LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final whitelist LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field public static final whitelist LOCATION:Ljava/lang/String; = "location"

.field public static final blacklist LOW_RING_VOLUME:I = 0x0

.field private static final greylist-max-o MIN_DURATION_FOR_NORMALIZED_NUMBER_UPDATE_MS:I = 0x2710

.field public static final whitelist MISSED_REASON:Ljava/lang/String; = "missed_reason"

.field public static final whitelist MISSED_REASON_NOT_MISSED:J = 0x0L

.field public static final whitelist MISSED_TYPE:I = 0x3

.field public static final whitelist NEW:Ljava/lang/String; = "new"

.field public static final whitelist NUMBER:Ljava/lang/String; = "number"

.field public static final whitelist NUMBER_PRESENTATION:Ljava/lang/String; = "presentation"

.field public static final whitelist OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final whitelist OUTGOING_TYPE:I = 0x2

.field public static final greylist-max-o PHONE_ACCOUNT_ADDRESS:Ljava/lang/String; = "phone_account_address"

.field public static final whitelist PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final greylist-max-o PHONE_ACCOUNT_HIDDEN:Ljava/lang/String; = "phone_account_hidden"

.field public static final whitelist PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final whitelist POST_DIAL_DIGITS:Ljava/lang/String; = "post_dial_digits"

.field public static final whitelist PRESENTATION_ALLOWED:I = 0x1

.field public static final whitelist PRESENTATION_PAYPHONE:I = 0x4

.field public static final whitelist PRESENTATION_RESTRICTED:I = 0x2

.field public static final whitelist PRESENTATION_UNAVAILABLE:I = 0x5

.field public static final whitelist PRESENTATION_UNKNOWN:I = 0x3

.field public static final whitelist PRIORITY:Ljava/lang/String; = "priority"

.field public static final whitelist PRIORITY_NORMAL:I = 0x0

.field public static final whitelist PRIORITY_URGENT:I = 0x1

.field public static final whitelist REJECTED_TYPE:I = 0x5

.field public static final greylist-max-o SHADOW_CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist SHORT_RING_THRESHOLD:J = 0x1388L

.field public static final whitelist SUBJECT:Ljava/lang/String; = "subject"

.field public static final greylist-max-o SUB_ID:Ljava/lang/String; = "sub_id"

.field private static final blacklist TELEPHONY_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final whitelist TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final greylist-max-o TRANSCRIPTION_STATE:Ljava/lang/String; = "transcription_state"

.field public static final whitelist TYPE:Ljava/lang/String; = "type"

.field public static final whitelist USER_MISSED_CALL_FILTERS_TIMEOUT:J = 0x400000L

.field public static final whitelist USER_MISSED_CALL_SCREENING_SERVICE_SILENCED:J = 0x200000L

.field public static final whitelist USER_MISSED_DND_MODE:J = 0x40000L

.field public static final whitelist USER_MISSED_LOW_RING_VOLUME:J = 0x80000L

.field public static final blacklist USER_MISSED_NEVER_RANG:J = 0x800000L

.field public static final blacklist USER_MISSED_NOT_RUNNING:J = 0x1000000L

.field public static final whitelist USER_MISSED_NO_ANSWER:J = 0x10000L

.field public static final whitelist USER_MISSED_NO_VIBRATE:J = 0x100000L

.field public static final whitelist USER_MISSED_SHORT_RING:J = 0x20000L

.field public static final whitelist VIA_NUMBER:Ljava/lang/String; = "via_number"

.field public static final whitelist VOICEMAIL_TYPE:I = 0x4

.field public static final whitelist VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 832
    nop

    .line 833
    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 836
    nop

    .line 837
    const-string v0, "content://call_log_shadow/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    .line 842
    nop

    .line 843
    const-string v0, "content://call_log/calls/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 855
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 856
    const-string/jumbo v1, "limit"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 857
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    .line 906
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 907
    const-string v1, "allow_voicemails"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 908
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 1636
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/CallLog$Calls;->TELEPHONY_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addCall(Landroid/content/Context;Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;
    .registers 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/provider/CallLog$AddCallParams;

    .line 1804
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1806
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAccountHandle(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/provider/CallLog$Calls;->getLogAccountAddress(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v9

    .line 1808
    .local v9, "accountAddress":Ljava/lang/String;
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmPresentation(Landroid/provider/CallLog$AddCallParams;)I

    move-result v4

    invoke-static {v0, v4}, Landroid/provider/CallLog$Calls;->getLogNumberPresentation(Ljava/lang/String;I)I

    move-result v10

    .line 1809
    .local v10, "numberPresentation":I
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v0

    const-string v4, ""

    if-eqz v0, :cond_2d

    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    move-object v0, v4

    .line 1810
    .local v0, "name":Ljava/lang/String;
    :goto_2e
    const/4 v5, 0x1

    if-eq v10, v5, :cond_3e

    .line 1811
    invoke-static {v2, v4}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fputmNumber(Landroid/provider/CallLog$AddCallParams;Ljava/lang/String;)V

    .line 1812
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 1813
    const-string v0, ""

    move-object v11, v0

    goto :goto_3f

    .line 1818
    :cond_3e
    move-object v11, v0

    .end local v0    # "name":Ljava/lang/String;
    .local v11, "name":Ljava/lang/String;
    :goto_3f
    const/4 v0, 0x0

    .line 1819
    .local v0, "accountComponentString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1820
    .local v4, "accountId":Ljava/lang/String;
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAccountHandle(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    if-eqz v6, :cond_5e

    .line 1821
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAccountHandle(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 1822
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAccountHandle(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    move-object v12, v0

    move-object v13, v4

    goto :goto_60

    .line 1820
    :cond_5e
    move-object v12, v0

    move-object v13, v4

    .line 1825
    .end local v0    # "accountComponentString":Ljava/lang/String;
    .end local v4    # "accountId":Ljava/lang/String;
    .local v12, "accountComponentString":Ljava/lang/String;
    .local v13, "accountId":Ljava/lang/String;
    :goto_60
    new-instance v0, Landroid/content/ContentValues;

    const/16 v4, 0xe

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    move-object v14, v0

    .line 1826
    .local v14, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "number"

    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const-string/jumbo v0, "post_dial_digits"

    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmPostDialDigits(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    const-string/jumbo v0, "via_number"

    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmViaNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const-string/jumbo v0, "presentation"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1830
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallType(Landroid/provider/CallLog$AddCallParams;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v4, "type"

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1831
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmFeatures(Landroid/provider/CallLog$AddCallParams;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "features"

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1832
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmStart(Landroid/provider/CallLog$AddCallParams;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "date"

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1833
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmDuration(Landroid/provider/CallLog$AddCallParams;)I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "duration"

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1834
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmDataUsage(Landroid/provider/CallLog$AddCallParams;)J

    move-result-wide v6

    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v0, v6, v15

    if-eqz v0, :cond_dd

    .line 1835
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmDataUsage(Landroid/provider/CallLog$AddCallParams;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "data_usage"

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1837
    :cond_dd
    const-string/jumbo v0, "subscription_component_name"

    invoke-virtual {v14, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const-string/jumbo v0, "subscription_id"

    invoke-virtual {v14, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    const-string/jumbo v0, "phone_account_address"

    invoke-virtual {v14, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    const-string/jumbo v0, "new"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1841
    const-string/jumbo v0, "name"

    invoke-virtual {v14, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAddForAllUsers(Landroid/provider/CallLog$AddCallParams;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "add_for_all_users"

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1844
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallType(Landroid/provider/CallLog$AddCallParams;)I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_121

    .line 1845
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmIsRead(Landroid/provider/CallLog$AddCallParams;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v4, "is_read"

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1848
    :cond_121
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallBlockReason(Landroid/provider/CallLog$AddCallParams;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "block_reason"

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1849
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallScreeningAppName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/CallLog$Calls;->charSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "call_screening_app_name"

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    const-string v0, "call_screening_component_name"

    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallScreeningComponentName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmMissedReason(Landroid/provider/CallLog$AddCallParams;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v4, "missed_reason"

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1852
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmPriority(Landroid/provider/CallLog$AddCallParams;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v4, "priority"

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1853
    const-string/jumbo v0, "subject"

    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmSubject(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmPictureUri(Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_17d

    .line 1855
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmPictureUri(Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "composer_photo_uri"

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    :cond_17d
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmIsPhoneAccountMigrationPending(Landroid/provider/CallLog$AddCallParams;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v4, "is_call_log_phone_account_migration_pending"

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1858
    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->businessCallComposer()Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 1859
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmIsBusinessCall(Landroid/provider/CallLog$AddCallParams;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v4, "is_business_call"

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1860
    const-string v0, "asserted_display_name"

    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAssertedDisplayName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    :cond_1a8
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v0

    if-eqz v0, :cond_26a

    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallerInfo;->getContactId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_26a

    .line 1871
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    const-string v4, "_id"

    if-eqz v0, :cond_1ec

    .line 1872
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 1873
    .local v0, "normalizedPhoneNumber":Ljava/lang/String;
    move-object v5, v4

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v6

    .line 1876
    invoke-virtual {v6}, Landroid/telecom/CallerInfo;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v7

    .line 1873
    const-string v6, "contact_id =? AND data4 =?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1879
    .local v0, "cursor":Landroid/database/Cursor;
    move-object v4, v0

    goto :goto_229

    .line 1880
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1ec
    move-object v5, v4

    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallerInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_200

    .line 1881
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallerInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_204

    :cond_200
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v0

    .line 1882
    .local v0, "phoneNumber":Ljava/lang/String;
    :goto_204
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 1884
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1883
    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v6

    .line 1887
    invoke-virtual {v6}, Landroid/telecom/CallerInfo;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    .line 1882
    const-string v6, "contact_id =?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1891
    .end local v0    # "phoneNumber":Ljava/lang/String;
    .local v4, "cursor":Landroid/database/Cursor;
    :goto_229
    if-eqz v4, :cond_26a

    .line 1893
    :try_start_22b
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_261

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_261

    .line 1894
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1895
    .local v0, "dataId":Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/provider/CallLog$Calls;->updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1896
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmDuration(Landroid/provider/CallLog$AddCallParams;)I

    move-result v5

    const/16 v6, 0x2710

    if-lt v5, v6, :cond_261

    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallType(Landroid/provider/CallLog$AddCallParams;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_261

    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 1898
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_261

    .line 1899
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v0, v5}, Landroid/provider/CallLog$Calls;->updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_261
    .catchall {:try_start_22b .. :try_end_261} :catchall_265

    .line 1903
    .end local v0    # "dataId":Ljava/lang/String;
    :cond_261
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1904
    goto :goto_26a

    .line 1903
    :catchall_265
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1904
    throw v0

    .line 1930
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_26a
    :goto_26a
    const/4 v0, 0x0

    .line 1932
    .local v0, "result":Landroid/net/Uri;
    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1933
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getProcessUserId()I

    move-result v5

    .line 1935
    .local v5, "currentUserId":I
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAddForAllUsers(Landroid/provider/CallLog$AddCallParams;)Z

    move-result v6

    const-string/jumbo v8, "location"

    if-eqz v6, :cond_336

    .line 1936
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_297

    .line 1941
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v2, v3, v6}, Landroid/provider/CallLog$Calls;->maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v6

    .line 1942
    .local v6, "locationUri":Landroid/net/Uri;
    if-eqz v6, :cond_297

    .line 1943
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    .end local v6    # "locationUri":Landroid/net/Uri;
    :cond_297
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v1, v4, v6, v14}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1950
    .local v6, "uriForSystem":Landroid/net/Uri;
    if-eqz v6, :cond_331

    .line 1951
    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const-string v7, "call_log_shadow"

    invoke-virtual {v7, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b1

    move-object/from16 v20, v6

    goto/16 :goto_333

    .line 1957
    :cond_2b1
    if-nez v5, :cond_2b4

    .line 1958
    move-object v0, v6

    .line 1963
    :cond_2b4
    invoke-virtual {v4}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v7

    .line 1965
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    .line 1966
    .local v15, "count":I
    const/16 v17, 0x0

    move/from16 v23, v17

    move-object/from16 v17, v0

    move/from16 v0, v23

    .local v0, "i":I
    .local v17, "result":Landroid/net/Uri;
    :goto_2c4
    if-ge v0, v15, :cond_328

    .line 1967
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/UserInfo;

    .line 1968
    .local v18, "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v19, v0

    .end local v0    # "i":I
    .local v19, "i":I
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1969
    .local v0, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v20, v6

    .end local v6    # "uriForSystem":Landroid/net/Uri;
    .local v20, "uriForSystem":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1971
    .local v6, "userId":I
    invoke-virtual {v0}, Landroid/os/UserHandle;->isSystem()Z

    move-result v21

    if-eqz v21, :cond_2e1

    .line 1973
    move-object/from16 v22, v7

    goto :goto_31f

    .line 1976
    :cond_2e1
    invoke-static {v1, v4, v6}, Landroid/provider/CallLog$Calls;->shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v21

    if-nez v21, :cond_2ea

    .line 1978
    move-object/from16 v22, v7

    goto :goto_31f

    .line 1984
    :cond_2ea
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v21

    if-eqz v21, :cond_31d

    .line 1985
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v21

    if-eqz v21, :cond_31a

    .line 1986
    invoke-static {v2, v3, v0}, Landroid/provider/CallLog$Calls;->maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v21

    .line 1987
    .local v21, "locationUri":Landroid/net/Uri;
    if-eqz v21, :cond_306

    .line 1988
    move-object/from16 v22, v7

    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v22, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_311

    .line 1990
    .end local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_306
    move-object/from16 v22, v7

    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;

    move-object/from16 v7, v16

    invoke-virtual {v14, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    :goto_311
    invoke-static {v1, v4, v0, v14}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 1994
    .local v7, "uri":Landroid/net/Uri;
    if-ne v6, v5, :cond_31f

    .line 1995
    move-object/from16 v17, v7

    goto :goto_31f

    .line 1985
    .end local v21    # "locationUri":Landroid/net/Uri;
    .end local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_31a
    move-object/from16 v22, v7

    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_31f

    .line 1984
    .end local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_31d
    move-object/from16 v22, v7

    .line 1966
    .end local v0    # "userHandle":Landroid/os/UserHandle;
    .end local v6    # "userId":I
    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v18    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_31f
    :goto_31f
    add-int/lit8 v0, v19, 0x1

    move-object/from16 v6, v20

    move-object/from16 v7, v22

    const/16 v16, 0x0

    .end local v19    # "i":I
    .local v0, "i":I
    goto :goto_2c4

    .end local v20    # "uriForSystem":Landroid/net/Uri;
    .end local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v6, "uriForSystem":Landroid/net/Uri;
    .restart local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_328
    move/from16 v19, v0

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    .line 1999
    .end local v0    # "i":I
    .end local v6    # "uriForSystem":Landroid/net/Uri;
    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v15    # "count":I
    move-object/from16 v0, v17

    goto :goto_36c

    .line 1950
    .end local v17    # "result":Landroid/net/Uri;
    .local v0, "result":Landroid/net/Uri;
    .restart local v6    # "uriForSystem":Landroid/net/Uri;
    :cond_331
    move-object/from16 v20, v6

    .line 1955
    .end local v6    # "uriForSystem":Landroid/net/Uri;
    .restart local v20    # "uriForSystem":Landroid/net/Uri;
    :goto_333
    const/16 v16, 0x0

    return-object v16

    .line 2002
    .end local v20    # "uriForSystem":Landroid/net/Uri;
    :cond_336
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmUserToBeInsertedTo(Landroid/provider/CallLog$AddCallParams;)Landroid/os/UserHandle;

    move-result-object v6

    if-eqz v6, :cond_341

    .line 2003
    invoke-static {v2}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmUserToBeInsertedTo(Landroid/provider/CallLog$AddCallParams;)Landroid/os/UserHandle;

    move-result-object v6

    goto :goto_345

    .line 2004
    :cond_341
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    :goto_345
    nop

    .line 2006
    .local v6, "targetUserHandle":Landroid/os/UserHandle;
    invoke-virtual {v4, v6}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_368

    .line 2007
    invoke-virtual {v4, v6}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_368

    .line 2008
    invoke-static {v2, v3, v6}, Landroid/provider/CallLog$Calls;->maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v7

    .line 2009
    .local v7, "locationUri":Landroid/net/Uri;
    if-eqz v7, :cond_360

    .line 2010
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_368

    .line 2012
    :cond_360
    const/4 v15, 0x0

    move-object/from16 v16, v15

    check-cast v16, Ljava/lang/String;

    invoke-virtual {v14, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    .end local v7    # "locationUri":Landroid/net/Uri;
    :cond_368
    :goto_368
    invoke-static {v1, v4, v6, v14}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2019
    .end local v6    # "targetUserHandle":Landroid/os/UserHandle;
    :goto_36c
    return-object v0
.end method

.method public static blacklist addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;JI)Landroid/net/Uri;
    .registers 37
    .param p0, "ci"    # Landroid/telecom/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;
    .param p11, "missedReason"    # J
    .param p13, "isPhoneAccountMigrationPending"    # I

    .line 1667
    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v4, ""

    const-string v5, ""

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-wide/from16 v20, p11

    move/from16 v22, p13

    invoke-static/range {v1 .. v22}, Landroid/provider/CallLog$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;JI)Landroid/net/Uri;
    .registers 41
    .param p0, "ci"    # Landroid/telecom/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # Ljava/lang/Long;
    .param p13, "addForAllUsers"    # Z
    .param p14, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p15, "missedReason"    # J
    .param p17, "isPhoneAccountMigrationPending"    # I

    .line 1710
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-wide/from16 v20, p15

    move/from16 v22, p17

    invoke-static/range {v1 .. v22}, Landroid/provider/CallLog$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-p addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JI)Landroid/net/Uri;
    .registers 39
    .param p0, "ci"    # Landroid/telecom/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # Ljava/lang/Long;
    .param p13, "addForAllUsers"    # Z
    .param p14, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p15, "isRead"    # Z
    .param p16, "callBlockReason"    # I
    .param p17, "callScreeningAppName"    # Ljava/lang/CharSequence;
    .param p18, "callScreeningComponentName"    # Ljava/lang/String;
    .param p19, "missedReason"    # J
    .param p21, "isPhoneAccountMigrationPending"    # I

    .line 1766
    new-instance v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    invoke-direct {v0}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;-><init>()V

    .line 1768
    .local v0, "builder":Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallerInfo(Landroid/telecom/CallerInfo;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1769
    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1770
    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setPostDialDigits(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1771
    move-object/from16 v4, p4

    invoke-virtual {v0, v4}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setViaNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1772
    move/from16 v5, p5

    invoke-virtual {v0, v5}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setPresentation(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1773
    move/from16 v6, p6

    invoke-virtual {v0, v6}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallType(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1774
    move/from16 v7, p7

    invoke-virtual {v0, v7}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setFeatures(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1775
    move-object/from16 v8, p8

    invoke-virtual {v0, v8}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1776
    move-wide/from16 v9, p9

    invoke-virtual {v0, v9, v10}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setStart(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1777
    move/from16 v11, p11

    invoke-virtual {v0, v11}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setDuration(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1778
    if-nez p12, :cond_3c

    const-wide/high16 v12, -0x8000000000000000L

    goto :goto_40

    :cond_3c
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_40
    invoke-virtual {v0, v12, v13}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setDataUsage(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1779
    move/from16 v12, p13

    invoke-virtual {v0, v12}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setAddForAllUsers(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1780
    move-object/from16 v13, p14

    invoke-virtual {v0, v13}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setUserToBeInsertedTo(Landroid/os/UserHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1781
    move/from16 v14, p15

    invoke-virtual {v0, v14}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setIsRead(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1782
    move/from16 v15, p16

    invoke-virtual {v0, v15}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallBlockReason(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1783
    move-object/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallScreeningAppName(Ljava/lang/CharSequence;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1784
    move-object/from16 v1, p18

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallScreeningComponentName(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1785
    move-wide/from16 v1, p19

    invoke-virtual {v0, v1, v2}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setMissedReason(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1786
    move/from16 v1, p21

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setIsPhoneAccountMigrationPending(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1788
    invoke-virtual {v0}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->build()Landroid/provider/CallLog$AddCallParams;

    move-result-object v2

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    .end local v0    # "builder":Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .local v16, "builder":Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    invoke-static {v0, v2}, Landroid/provider/CallLog$Calls;->addCall(Landroid/content/Context;Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "values"    # Landroid/content/ContentValues;

    .line 2064
    const-string/jumbo v0, "subscription_component_name"

    const-string/jumbo v1, "subscription_id"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2069
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_15

    :cond_13
    sget-object v3, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    .line 2070
    :goto_15
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 2068
    invoke-static {v3, v4}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    .line 2072
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "addEntryAndRemoveExpiredEntries: provider uri=%s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CallLog"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    const/4 v4, 0x0

    :try_start_31
    invoke-virtual {v2, v3, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 2083
    .local v6, "result":Landroid/net/Uri;
    if-eqz v6, :cond_5c

    .line 2084
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 2092
    .local v7, "lastPathSegment":Ljava/lang/String;
    if-eqz v7, :cond_5b

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 2093
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to insert into call log due to appops denial; resultUri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    .end local v7    # "lastPathSegment":Ljava/lang/String;
    :cond_5b
    goto :goto_61

    .line 2097
    :cond_5c
    const-string v7, "Failed to insert into call log; null result uri."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :goto_61
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 2103
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6d

    :cond_6c
    move-object v1, v4

    .line 2105
    .local v1, "phoneAccountId":Ljava/lang/String;
    :goto_6d
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 2106
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    :cond_78
    move-object v0, v4

    .line 2107
    .local v0, "phoneAccountComponentName":Ljava/lang/String;
    :goto_79
    const/16 v7, 0x1f4

    .line 2108
    .local v7, "maxCallLogSize":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_7f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_7f} :catch_ff

    const-string v9, ")"

    if-nez v8, :cond_c7

    .line 2109
    :try_start_83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c7

    .line 2110
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->allowConfigMaximumCallLogEntriesPerSim()Z

    move-result v8

    if-eqz v8, :cond_a7

    sget-object v8, Landroid/provider/CallLog$Calls;->TELEPHONY_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 2112
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a7

    .line 2113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x10e00cf

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    move v7, v8

    .line 2117
    :cond_a7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id IN (SELECT _id FROM calls WHERE subscription_component_name = ? AND subscription_id = ? ORDER BY date DESC LIMIT -1 OFFSET "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v3, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .local v8, "numDeleted":I
    goto :goto_e2

    .line 2127
    .end local v8    # "numDeleted":I
    :cond_c7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 2131
    .restart local v8    # "numDeleted":I
    :goto_e2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addEntry: cleaned up "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " old entries"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catch Ljava/lang/IllegalArgumentException; {:try_start_83 .. :try_end_fe} :catch_ff

    .line 2133
    return-object v6

    .line 2134
    .end local v0    # "phoneAccountComponentName":Ljava/lang/String;
    .end local v1    # "phoneAccountId":Ljava/lang/String;
    .end local v6    # "result":Landroid/net/Uri;
    .end local v7    # "maxCallLogSize":I
    .end local v8    # "numDeleted":I
    :catch_ff
    move-exception v0

    .line 2135
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Failed to insert calllog"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2139
    return-object v4
.end method

.method private static blacklist charSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .line 2023
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method private static greylist-max-o getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2248
    const/4 v0, 0x0

    .line 2249
    .local v0, "countryIso":Ljava/lang/String;
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 2251
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_15

    .line 2252
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    .line 2253
    .local v2, "country":Landroid/location/Country;
    if-eqz v2, :cond_15

    .line 2254
    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2257
    .end local v2    # "country":Landroid/location/Country;
    :cond_15
    return-object v0
.end method

.method public static whitelist getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 2044
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2045
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 2047
    .local v7, "c":Landroid/database/Cursor;
    :try_start_5
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    const-string/jumbo v0, "number"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "type = 2"

    const-string v6, "date DESC"

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 2053
    if-eqz v7, :cond_2d

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_2d

    .line 2056
    :cond_22
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_35

    .line 2058
    if-eqz v7, :cond_2c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2056
    :cond_2c
    return-object v0

    .line 2054
    :cond_2d
    :goto_2d
    :try_start_2d
    const-string v0, ""
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_35

    .line 2058
    if-eqz v7, :cond_34

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2054
    :cond_34
    return-object v0

    .line 2058
    :catchall_35
    move-exception v0

    if-eqz v7, :cond_3b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2059
    :cond_3b
    throw v0
.end method

.method private static blacklist getLogAccountAddress(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 2225
    const/4 v0, 0x0

    .line 2227
    .local v0, "tm":Landroid/telecom/TelecomManager;
    :try_start_1
    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;
    :try_end_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_9} :catch_b

    move-object v0, v1

    .line 2232
    goto :goto_c

    .line 2228
    :catch_b
    move-exception v1

    .line 2234
    :goto_c
    const/4 v1, 0x0

    .line 2235
    .local v1, "accountAddress":Ljava/lang/String;
    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    .line 2236
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 2237
    .local v2, "account":Landroid/telecom/PhoneAccount;
    if-eqz v2, :cond_21

    .line 2238
    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v3

    .line 2239
    .local v3, "address":Landroid/net/Uri;
    if-eqz v3, :cond_21

    .line 2240
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 2244
    .end local v2    # "account":Landroid/telecom/PhoneAccount;
    .end local v3    # "address":Landroid/net/Uri;
    :cond_21
    return-object v1
.end method

.method private static blacklist getLogNumberPresentation(Ljava/lang/String;I)I
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "presentation"    # I

    .line 2203
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 2204
    return p1

    .line 2207
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 2208
    return p1

    .line 2211
    :cond_8
    const/4 v0, 0x5

    if-ne p1, v0, :cond_c

    .line 2212
    return v0

    .line 2215
    :cond_c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_18

    if-ne p1, v1, :cond_16

    goto :goto_18

    .line 2220
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 2217
    :cond_18
    :goto_18
    return v1
.end method

.method public static blacklist isUserMissed(J)Z
    .registers 4
    .param p0, "missedReason"    # J

    .line 2271
    const-wide/32 v0, 0x10000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static blacklist maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;
    .registers 9
    .param p0, "params"    # Landroid/provider/CallLog$AddCallParams;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2145
    invoke-static {p0}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmLatitude(Landroid/provider/CallLog$AddCallParams;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4f

    invoke-static {p0}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmLongitude(Landroid/provider/CallLog$AddCallParams;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_4f

    .line 2148
    :cond_16
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2149
    .local v0, "locationValues":Landroid/content/ContentValues;
    invoke-static {p0}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmLatitude(Landroid/provider/CallLog$AddCallParams;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "latitude"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2150
    invoke-static {p0}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmLongitude(Landroid/provider/CallLog$AddCallParams;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "longitude"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2151
    sget-object v2, Landroid/provider/CallLog$Locations;->CONTENT_URI:Landroid/net/Uri;

    .line 2152
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 2151
    invoke-static {v2, v3}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 2154
    .local v2, "locationUri":Landroid/net/Uri;
    :try_start_41
    invoke-virtual {p1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_45} :catch_46

    return-object v1

    .line 2155
    :catch_46
    move-exception v3

    .line 2158
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "CallLog"

    const-string v5, "Skipping inserting location because caller lacks ACCESS_FINE_LOCATION."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    return-object v1

    .line 2146
    .end local v0    # "locationValues":Landroid/content/ContentValues;
    .end local v2    # "locationUri":Landroid/net/Uri;
    .end local v3    # "e":Ljava/lang/SecurityException;
    :cond_4f
    :goto_4f
    return-object v1
.end method

.method public static greylist-max-o shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userId"    # I

    .line 2029
    nop

    .line 2030
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 2029
    const-string/jumbo v1, "no_outgoing_calls"

    invoke-virtual {p1, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 2031
    return v1

    .line 2033
    :cond_10
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2034
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method private static greylist-max-o updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "dataId"    # Ljava/lang/String;

    .line 2165
    sget-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2166
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2167
    const-string/jumbo v1, "type"

    const-string v2, "call"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2169
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2170
    .local v0, "feedbackUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2171
    return-void
.end method

.method private static greylist-max-o updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .line 2179
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_39

    .line 2182
    :cond_d
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2183
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2184
    return-void

    .line 2186
    :cond_18
    invoke-static {p3, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2187
    .local v1, "normalizedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2188
    return-void

    .line 2190
    :cond_23
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2191
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "data4"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2193
    return-void

    .line 2180
    .end local v0    # "countryIso":Ljava/lang/String;
    .end local v1    # "normalizedNumber":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_39
    :goto_39
    return-void
.end method
