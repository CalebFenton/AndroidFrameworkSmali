.class public Landroid/net/connectivity/android/net/BpfNetMapsConstants;
.super Ljava/lang/Object;
.source "BpfNetMapsConstants.java"


# static fields
.field public static final blacklist ALLOW_CHAINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist BACKGROUND_MATCH:J = 0x1000L

.field public static final blacklist CONFIGURATION_MAP_PATH:Ljava/lang/String; = "/sys/fs/bpf/netd_shared/map_netd_configuration_map"

.field public static final blacklist COOKIE_TAG_MAP_PATH:Ljava/lang/String; = "/sys/fs/bpf/netd_shared/map_netd_cookie_tag_map"

.field public static final blacklist CURRENT_STATS_MAP_CONFIGURATION_KEY:Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

.field public static final blacklist DATA_SAVER_DISABLED:S = 0x0s

.field public static final blacklist DATA_SAVER_ENABLED:S = 0x1s

.field public static final blacklist DATA_SAVER_ENABLED_KEY:Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

.field public static final blacklist DATA_SAVER_ENABLED_MAP_PATH:Ljava/lang/String; = "/sys/fs/bpf/netd_shared/map_netd_data_saver_enabled_map"

.field public static final blacklist DENY_CHAINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DOZABLE_MATCH:J = 0x4L

.field public static final blacklist HAPPY_BOX_MATCH:J = 0x1L

.field public static final blacklist IIF_MATCH:J = 0x80L

.field public static final blacklist INGRESS_DISCARD_MAP_PATH:Ljava/lang/String; = "/sys/fs/bpf/netd_shared/map_netd_ingress_discard_map"

.field public static final blacklist LOCAL_NET_ACCESS_MAP_PATH:Ljava/lang/String; = "/sys/fs/bpf/netd_shared/map_netd_local_net_access_map"

.field public static final blacklist LOCAL_NET_BLOCKED_UID_MAP_PATH:Ljava/lang/String; = "/sys/fs/bpf/netd_shared/map_netd_local_net_blocked_uid_map"

.field public static final blacklist LOCKDOWN_VPN_MATCH:J = 0x100L

.field public static final blacklist LOW_POWER_STANDBY_MATCH:J = 0x40L

.field public static final blacklist MATCH_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist METERED_ALLOW_CHAINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist METERED_DENY_CHAINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NO_MATCH:J = 0x0L

.field public static final blacklist OEM_DENY_1_MATCH:J = 0x200L

.field public static final blacklist OEM_DENY_2_MATCH:J = 0x400L

.field public static final blacklist OEM_DENY_3_MATCH:J = 0x800L

.field public static final blacklist PENALTY_BOX_ADMIN_MATCH:J = 0x2000L

.field public static final blacklist PENALTY_BOX_USER_MATCH:J = 0x2L

.field public static final blacklist POWERSAVE_MATCH:J = 0x10L

.field public static final blacklist RESTRICTED_MATCH:J = 0x20L

.field public static final blacklist STANDBY_MATCH:J = 0x8L

.field public static final blacklist UID_OWNER_MAP_PATH:Ljava/lang/String; = "/sys/fs/bpf/netd_shared/map_netd_uid_owner_map"

.field public static final blacklist UID_PERMISSION_MAP_PATH:Ljava/lang/String; = "/sys/fs/bpf/netd_shared/map_netd_uid_permission_map"

.field public static final blacklist UID_RULES_CONFIGURATION_KEY:Landroid/net/connectivity/com/android/net/module/util/Struct$S32;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 68
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;-><init>(I)V

    sput-object v0, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->UID_RULES_CONFIGURATION_KEY:Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    .line 69
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;-><init>(I)V

    sput-object v0, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->CURRENT_STATS_MAP_CONFIGURATION_KEY:Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    .line 70
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;-><init>(I)V

    sput-object v0, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->DATA_SAVER_ENABLED_KEY:Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    .line 92
    const/16 v0, 0xe

    new-array v0, v0, [Landroid/util/Pair;

    .line 93
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "HAPPY_BOX_MATCH"

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    .line 94
    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "PENALTY_BOX_USER_MATCH"

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    .line 95
    const-wide/16 v3, 0x4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "DOZABLE_MATCH"

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 96
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "STANDBY_MATCH"

    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 97
    const-wide/16 v5, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v5, "POWERSAVE_MATCH"

    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    .line 98
    const-wide/16 v6, 0x20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v6, "RESTRICTED_MATCH"

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v6, 0x5

    aput-object v1, v0, v6

    .line 99
    const-wide/16 v7, 0x40

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v7, "LOW_POWER_STANDBY_MATCH"

    invoke-static {v1, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v7, 0x6

    aput-object v1, v0, v7

    .line 100
    const-wide/16 v8, 0x80

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v8, "IIF_MATCH"

    invoke-static {v1, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v8, 0x7

    aput-object v1, v0, v8

    .line 101
    const-wide/16 v9, 0x100

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v9, "LOCKDOWN_VPN_MATCH"

    invoke-static {v1, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v9, 0x8

    aput-object v1, v0, v9

    .line 102
    const-wide/16 v10, 0x200

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v10, "OEM_DENY_1_MATCH"

    invoke-static {v1, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v10, 0x9

    aput-object v1, v0, v10

    .line 103
    const-wide/16 v11, 0x400

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v11, "OEM_DENY_2_MATCH"

    invoke-static {v1, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v11, 0xa

    aput-object v1, v0, v11

    .line 104
    const-wide/16 v12, 0x800

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v12, "OEM_DENY_3_MATCH"

    invoke-static {v1, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v12, 0xb

    aput-object v1, v0, v12

    .line 105
    const-wide/16 v13, 0x1000

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v13, "BACKGROUND_MATCH"

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v13, 0xc

    aput-object v1, v0, v13

    .line 106
    const-wide/16 v14, 0x2000

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v14, "PENALTY_BOX_ADMIN_MATCH"

    invoke-static {v1, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v14, 0xd

    aput-object v1, v0, v14

    .line 92
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->MATCH_LIST:Ljava/util/List;

    .line 115
    nop

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 119
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 120
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 115
    invoke-static {v0, v1, v2, v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->ALLOW_CHAINS:Ljava/util/List;

    .line 129
    nop

    .line 130
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 131
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 132
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 133
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 129
    invoke-static {v0, v1, v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->DENY_CHAINS:Ljava/util/List;

    .line 141
    nop

    .line 142
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 141
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->METERED_ALLOW_CHAINS:Ljava/util/List;

    .line 150
    nop

    .line 151
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 152
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 150
    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->METERED_DENY_CHAINS:Ljava/util/List;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
