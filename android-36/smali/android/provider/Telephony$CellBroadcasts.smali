.class public final Landroid/provider/Telephony$CellBroadcasts;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellBroadcasts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$CellBroadcasts$Preference;
    }
.end annotation


# static fields
.field public static final whitelist AUTHORITY_LEGACY:Ljava/lang/String; = "cellbroadcast-legacy"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUTHORITY_LEGACY_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_METHOD_GET_PREFERENCE:Ljava/lang/String; = "get_preference"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CID:Ljava/lang/String; = "cid"

.field public static final whitelist CMAS_CATEGORY:Ljava/lang/String; = "cmas_category"

.field public static final whitelist CMAS_CERTAINTY:Ljava/lang/String; = "cmas_certainty"

.field public static final whitelist CMAS_MESSAGE_CLASS:Ljava/lang/String; = "cmas_message_class"

.field public static final whitelist CMAS_RESPONSE_TYPE:Ljava/lang/String; = "cmas_response_type"

.field public static final whitelist CMAS_SEVERITY:Ljava/lang/String; = "cmas_severity"

.field public static final whitelist CMAS_URGENCY:Ljava/lang/String; = "cmas_urgency"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DATA_CODING_SCHEME:Ljava/lang/String; = "dcs"

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final whitelist DELIVERY_TIME:Ljava/lang/String; = "date"

.field public static final whitelist ETWS_IS_PRIMARY:Ljava/lang/String; = "etws_is_primary"

.field public static final whitelist ETWS_WARNING_TYPE:Ljava/lang/String; = "etws_warning_type"

.field public static final whitelist GEOGRAPHICAL_SCOPE:Ljava/lang/String; = "geo_scope"

.field public static final whitelist GEOMETRIES:Ljava/lang/String; = "geometries"

.field public static final whitelist LAC:Ljava/lang/String; = "lac"

.field public static final whitelist LANGUAGE_CODE:Ljava/lang/String; = "language"

.field public static final whitelist LOCATION_CHECK_TIME:Ljava/lang/String; = "location_check_time"

.field public static final whitelist MAXIMUM_WAIT_TIME:Ljava/lang/String; = "maximum_wait_time"

.field public static final whitelist MESSAGE_BODY:Ljava/lang/String; = "body"

.field public static final whitelist MESSAGE_BROADCASTED:Ljava/lang/String; = "message_broadcasted"

.field public static final whitelist MESSAGE_DISPLAYED:Ljava/lang/String; = "message_displayed"

.field public static final whitelist MESSAGE_FORMAT:Ljava/lang/String; = "format"

.field public static final whitelist MESSAGE_HISTORY_URI:Landroid/net/Uri;

.field public static final whitelist MESSAGE_PRIORITY:Ljava/lang/String; = "priority"

.field public static final whitelist MESSAGE_READ:Ljava/lang/String; = "read"

.field public static final whitelist PLMN:Ljava/lang/String; = "plmn"

.field public static final greylist-max-o QUERY_COLUMNS:[Ljava/lang/String;

.field public static final whitelist RECEIVED_TIME:Ljava/lang/String; = "received_time"

.field public static final whitelist SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field public static final whitelist SERVICE_CATEGORY:Ljava/lang/String; = "service_category"

.field public static final whitelist SLOT_INDEX:Ljava/lang/String; = "slot_index"

.field public static final whitelist SUBSCRIPTION_ID:Ljava/lang/String; = "sub_id"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 21

    .line 3546
    const-string v0, "content://cellbroadcasts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$CellBroadcasts;->CONTENT_URI:Landroid/net/Uri;

    .line 3577
    const-string v0, "content://cellbroadcasts/history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$CellBroadcasts;->MESSAGE_HISTORY_URI:Landroid/net/Uri;

    .line 3596
    nop

    .line 3597
    const-string v0, "content://cellbroadcast-legacy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$CellBroadcasts;->AUTHORITY_LEGACY_URI:Landroid/net/Uri;

    .line 3948
    const-string v19, "cmas_urgency"

    const-string v20, "cmas_certainty"

    const-string v1, "_id"

    const-string v2, "geo_scope"

    const-string/jumbo v3, "plmn"

    const-string/jumbo v4, "lac"

    const-string v5, "cid"

    const-string/jumbo v6, "serial_number"

    const-string/jumbo v7, "service_category"

    const-string/jumbo v8, "language"

    const-string v9, "body"

    const-string v10, "date"

    const-string/jumbo v11, "read"

    const-string v12, "format"

    const-string/jumbo v13, "priority"

    const-string v14, "etws_warning_type"

    const-string v15, "cmas_message_class"

    const-string v16, "cmas_category"

    const-string v17, "cmas_response_type"

    const-string v18, "cmas_severity"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$CellBroadcasts;->QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 3538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
