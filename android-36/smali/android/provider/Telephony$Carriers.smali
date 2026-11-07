.class public final Landroid/provider/Telephony$Carriers;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Carriers"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$Carriers$EditStatus;
    }
.end annotation


# static fields
.field public static final whitelist ALWAYS_ON:Ljava/lang/String; = "always_on"

.field public static final whitelist APN:Ljava/lang/String; = "apn"

.field public static final blacklist APN_ID:Ljava/lang/String; = "apn_id"

.field public static final blacklist APN_READING_PERMISSION_CHANGE_ID:J = 0x765bc20L

.field public static final whitelist APN_SET_ID:Ljava/lang/String; = "apn_set_id"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUTH_TYPE:Ljava/lang/String; = "authtype"

.field public static final whitelist BEARER:Ljava/lang/String; = "bearer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o BEARER_BITMASK:Ljava/lang/String; = "bearer_bitmask"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o CARRIER_DELETED:I = 0x5

.field public static final greylist-max-o CARRIER_DELETED_BUT_PRESENT_IN_XML:I = 0x6

.field public static final whitelist CARRIER_EDITED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field public static final whitelist CARRIER_ID:Ljava/lang/String; = "carrier_id"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist CURRENT:Ljava/lang/String; = "current"

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final greylist-max-o DPC_URI:Landroid/net/Uri;

.field public static final whitelist EDITED_STATUS:Ljava/lang/String; = "edited"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ENFORCE_KEY:Ljava/lang/String; = "enforced"

.field public static final greylist-max-o ENFORCE_MANAGED_URI:Landroid/net/Uri;

.field public static final blacklist ESIM_BOOTSTRAP_PROVISIONING:Ljava/lang/String; = "esim_bootstrap_provisioning"

.field public static final greylist-max-o FILTERED_URI:Landroid/net/Uri;

.field public static final blacklist INFRASTRUCTURE_BITMASK:Ljava/lang/String; = "infrastructure_bitmask"

.field public static final blacklist INVALID_APN_ID:I = -0x1

.field public static final blacklist LINGERING_NETWORK_TYPE_BITMASK:Ljava/lang/String; = "lingering_network_type_bitmask"

.field public static final whitelist MATCH_ALL_APN_SET_ID:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MAX_CONNECTIONS:Ljava/lang/String; = "max_conns"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MCC:Ljava/lang/String; = "mcc"

.field public static final whitelist MMSC:Ljava/lang/String; = "mmsc"

.field public static final whitelist MMSPORT:Ljava/lang/String; = "mmsport"

.field public static final whitelist MMSPROXY:Ljava/lang/String; = "mmsproxy"

.field public static final whitelist MNC:Ljava/lang/String; = "mnc"

.field public static final whitelist MODEM_PERSIST:Ljava/lang/String; = "modem_cognitive"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MTU:Ljava/lang/String; = "mtu"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MTU_V4:Ljava/lang/String; = "mtu_v4"

.field public static final whitelist MTU_V6:Ljava/lang/String; = "mtu_v6"

.field public static final whitelist MVNO_MATCH_DATA:Ljava/lang/String; = "mvno_match_data"

.field public static final whitelist MVNO_TYPE:Ljava/lang/String; = "mvno_type"

.field public static final whitelist NAME:Ljava/lang/String; = "name"

.field public static final whitelist NETWORK_TYPE_BITMASK:Ljava/lang/String; = "network_type_bitmask"

.field public static final whitelist NO_APN_SET_ID:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NUMERIC:Ljava/lang/String; = "numeric"

.field public static final greylist-max-o OWNED_BY:Ljava/lang/String; = "owned_by"

.field public static final greylist-max-o OWNED_BY_DPC:I = 0x0

.field public static final greylist-max-o OWNED_BY_OTHERS:I = 0x1

.field public static final whitelist PASSWORD:Ljava/lang/String; = "password"

.field public static final whitelist PORT:Ljava/lang/String; = "port"

.field public static final blacklist PREFERRED_APN_SET_URI:Landroid/net/Uri;

.field public static final blacklist PREFERRED_APN_URI:Landroid/net/Uri;

.field public static final greylist-max-o PROFILE_ID:Ljava/lang/String; = "profile_id"

.field public static final whitelist PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final whitelist PROXY:Ljava/lang/String; = "proxy"

.field public static final whitelist ROAMING_PROTOCOL:Ljava/lang/String; = "roaming_protocol"

.field public static final whitelist SERVER:Ljava/lang/String; = "server"

.field public static final whitelist SIM_APN_URI:Landroid/net/Uri;

.field public static final blacklist SKIP_464XLAT:Ljava/lang/String; = "skip_464xlat"

.field public static final blacklist SKIP_464XLAT_DEFAULT:I = -0x1

.field public static final blacklist SKIP_464XLAT_DISABLE:I = 0x0

.field public static final blacklist SKIP_464XLAT_ENABLE:I = 0x1

.field public static final whitelist SUBSCRIPTION_ID:Ljava/lang/String; = "sub_id"

.field public static final whitelist TIME_LIMIT_FOR_MAX_CONNECTIONS:Ljava/lang/String; = "max_conns_time"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE:Ljava/lang/String; = "type"

.field public static final whitelist UNEDITED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER:Ljava/lang/String; = "user"

.field public static final whitelist USER_DELETED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o USER_DELETED_BUT_PRESENT_IN_XML:I = 0x3

.field public static final whitelist USER_EDITABLE:Ljava/lang/String; = "user_editable"

.field public static final whitelist USER_EDITED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_VISIBLE:Ljava/lang/String; = "user_visible"

.field public static final whitelist WAIT_TIME_RETRY:Ljava/lang/String; = "wait_time"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2942
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 2955
    const-string v0, "content://telephony/carriers/sim_apn_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    .line 2963
    const-string v0, "content://telephony/carriers/dpc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    .line 2973
    const-string v0, "content://telephony/carriers/filtered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->FILTERED_URI:Landroid/net/Uri;

    .line 2980
    const-string v0, "content://telephony/carriers/enforce_managed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->ENFORCE_MANAGED_URI:Landroid/net/Uri;

    .line 2988
    const-string v0, "content://telephony/carriers/preferapn/subId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->PREFERRED_APN_URI:Landroid/net/Uri;

    .line 2996
    const-string v0, "content://telephony/carriers/preferapnset/subId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->PREFERRED_APN_SET_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
