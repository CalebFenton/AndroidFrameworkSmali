.class public final Lcom/android/internal/app/procstats/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# static fields
.field public static final blacklist ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

.field static final blacklist ADJ_MEM_PROTO_ENUMS:[I

.field static final blacklist ADJ_MEM_TAGS:[Ljava/lang/String;

.field public static final blacklist ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

.field static final blacklist ADJ_SCREEN_PROTO_ENUMS:[I

.field static final blacklist ADJ_SCREEN_TAGS:[Ljava/lang/String;

.field static final blacklist CSV_SEP:Ljava/lang/String; = "\t"

.field private static final blacklist PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

.field public static final blacklist STATE_LABELS:[Ljava/lang/String;

.field public static final blacklist STATE_LABEL_CACHED:Ljava/lang/String;

.field public static final blacklist STATE_LABEL_TOTAL:Ljava/lang/String;

.field public static final blacklist STATE_NAMES:[Ljava/lang/String;

.field public static final blacklist STATE_NAMES_CSV:[Ljava/lang/String;

.field static final blacklist STATE_PROTO_ENUMS:[I

.field static final blacklist STATE_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 20

    .line 72
    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    .line 73
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Persist"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 74
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Top"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 75
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "BFgs"

    const/4 v5, 0x4

    aput-object v2, v1, v5

    .line 76
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "BTop"

    const/4 v6, 0x2

    aput-object v2, v1, v6

    .line 77
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Fgs"

    const/4 v7, 0x3

    aput-object v2, v1, v7

    .line 78
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "ImpFg"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 79
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "ImpBg"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 80
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Backup"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    .line 81
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Service"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    .line 82
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "ServRst"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    .line 83
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Receivr"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    .line 84
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "HeavyWt"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    .line 85
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Home"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    .line 86
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "LastAct"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    .line 87
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Cached"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    .line 88
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Frozen"

    const/16 v18, 0xf

    aput-object v2, v1, v18

    .line 90
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    .line 91
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v2, "Persistent"

    aput-object v2, v1, v3

    .line 92
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v2, "       Top"

    aput-object v2, v1, v4

    .line 93
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v2, "   Bnd Fgs"

    aput-object v2, v1, v5

    .line 94
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v2, "   Bnd Top"

    aput-object v2, v1, v6

    .line 95
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v2, "       Fgs"

    aput-object v2, v1, v7

    .line 96
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v2, "    Imp Fg"

    aput-object v2, v1, v8

    .line 97
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v2, "    Imp Bg"

    aput-object v2, v1, v9

    .line 98
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v2, "    Backup"

    aput-object v2, v1, v10

    .line 99
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v2, "   Service"

    aput-object v2, v1, v11

    .line 100
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v2, "Service Rs"

    aput-object v2, v1, v12

    .line 101
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v2, "  Receiver"

    aput-object v2, v1, v13

    .line 102
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v2, " Heavy Wgt"

    aput-object v2, v1, v14

    .line 103
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v2, "    (Home)"

    aput-object v2, v1, v15

    .line 104
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v2, "(Last Act)"

    aput-object v2, v1, v16

    .line 105
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v2, "  (Cached)"

    aput-object v2, v1, v17

    .line 106
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const-string v19, "    Frozen"

    aput-object v19, v1, v18

    .line 107
    sput-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_CACHED:Ljava/lang/String;

    .line 108
    const-string v1, "     TOTAL"

    sput-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    .line 110
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    .line 111
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "pers"

    aput-object v2, v1, v3

    .line 112
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string/jumbo v2, "top"

    aput-object v2, v1, v4

    .line 113
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "bfgs"

    aput-object v2, v1, v5

    .line 114
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "btop"

    aput-object v2, v1, v6

    .line 115
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "fgs"

    aput-object v2, v1, v7

    .line 116
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "impfg"

    aput-object v2, v1, v8

    .line 117
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "impbg"

    aput-object v2, v1, v9

    .line 118
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "backup"

    aput-object v2, v1, v10

    .line 119
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string/jumbo v2, "service"

    aput-object v2, v1, v11

    .line 120
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string/jumbo v2, "service-rs"

    aput-object v2, v1, v12

    .line 121
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string/jumbo v2, "receiver"

    aput-object v2, v1, v13

    .line 122
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "heavy"

    aput-object v2, v1, v14

    .line 123
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "home"

    aput-object v2, v1, v15

    .line 124
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "lastact"

    aput-object v2, v1, v16

    .line 125
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "cached"

    aput-object v2, v1, v17

    .line 126
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "frzn"

    aput-object v2, v1, v18

    .line 128
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    .line 129
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "p"

    aput-object v2, v1, v3

    .line 130
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "t"

    aput-object v2, v1, v4

    .line 131
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "y"

    aput-object v2, v1, v5

    .line 132
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "z"

    aput-object v2, v1, v6

    .line 133
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "g"

    aput-object v2, v1, v7

    .line 134
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "f"

    aput-object v2, v1, v8

    .line 135
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "b"

    aput-object v2, v1, v9

    .line 136
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "u"

    aput-object v2, v1, v10

    .line 137
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "s"

    aput-object v2, v1, v11

    .line 138
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "x"

    aput-object v2, v1, v12

    .line 139
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "r"

    aput-object v2, v1, v13

    .line 140
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "w"

    aput-object v2, v1, v14

    .line 141
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "h"

    aput-object v2, v1, v15

    .line 142
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "l"

    aput-object v2, v1, v16

    .line 143
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v19, "a"

    aput-object v19, v1, v17

    .line 144
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v19, "e"

    aput-object v19, v1, v18

    .line 146
    new-array v1, v0, [I

    sput-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    .line 147
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v4, v1, v3

    .line 148
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v6, v1, v4

    .line 149
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    const/16 v19, 0x14

    aput v19, v1, v5

    .line 150
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    const/16 v19, 0x13

    aput v19, v1, v6

    .line 151
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v0, v1, v7

    .line 152
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v7, v1, v8

    .line 154
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v5, v1, v9

    .line 156
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v8, v1, v10

    .line 157
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v9, v1, v11

    .line 158
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v10, v1, v12

    .line 160
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v11, v1, v13

    .line 161
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v12, v1, v14

    .line 162
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v13, v1, v15

    .line 163
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v14, v1, v16

    .line 164
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v15, v1, v17

    .line 165
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    const/16 v19, 0x11

    aput v19, v1, v18

    .line 169
    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    .line 170
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v4, v0, v3

    .line 172
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v6, v0, v4

    .line 174
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v7, v0, v5

    .line 176
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v7, v0, v6

    .line 178
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v5, v0, v7

    .line 180
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v8, v0, v8

    .line 182
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v9, v0, v9

    .line 184
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v9, v0, v10

    .line 186
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v9, v0, v11

    .line 189
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v3, v0, v12

    .line 191
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v10, v0, v13

    .line 193
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v9, v0, v14

    .line 195
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v11, v0, v15

    .line 197
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v11, v0, v16

    .line 199
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v11, v0, v17

    .line 201
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aput v11, v0, v18

    .line 205
    const-string v0, "off"

    const-string v1, "on"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    .line 209
    const-string v0, "low"

    const-string v1, "crit"

    const-string v3, "norm"

    const-string v8, "mod"

    filled-new-array {v3, v8, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    .line 215
    const-string v0, "0"

    const-string v1, "1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    .line 219
    filled-new-array {v4, v6}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_PROTO_ENUMS:[I

    .line 224
    const-string v0, "m"

    const-string v1, "c"

    const-string v3, "n"

    filled-new-array {v3, v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    .line 228
    filled-new-array {v4, v6, v7, v5}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_PROTO_ENUMS:[I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method public static blacklist aggregateCurrentProcessState(I)I
    .registers 4
    .param p0, "curState"    # I

    .line 547
    div-int/lit8 v0, p0, 0x40

    .line 549
    .local v0, "screenStateIndex":I
    rem-int/lit8 v1, p0, 0x10

    .line 553
    .local v1, "procStateIndex":I
    :try_start_4
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->PROCESS_STATS_STATE_TO_AGGREGATED_STATE:[I

    aget v2, v2, v1
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_8} :catch_9

    .line 556
    .end local v1    # "procStateIndex":I
    .local v2, "procStateIndex":I
    goto :goto_c

    .line 554
    .end local v2    # "procStateIndex":I
    .restart local v1    # "procStateIndex":I
    :catch_9
    move-exception v2

    .line 555
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    move v2, v1

    .line 559
    .end local v1    # "procStateIndex":I
    .local v2, "procStateIndex":I
    :goto_c
    shl-int/lit8 v1, v2, 0xf

    or-int/2addr v1, v0

    return v1
.end method

.method public static blacklist collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "itemName"    # Ljava/lang/String;

    .line 519
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 520
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 521
    .local v0, "ITEMLEN":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 522
    .local v1, "PKGLEN":I
    if-ne v0, v1, :cond_13

    .line 523
    const-string v2, ""

    return-object v2

    .line 524
    :cond_13
    if-lt v0, v1, :cond_22

    .line 525
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_22

    .line 526
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 530
    .end local v0    # "ITEMLEN":I
    .end local v1    # "PKGLEN":I
    :cond_22
    return-object p1
.end method

.method public static blacklist dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V
    .registers 15
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    .line 418
    const/4 v0, 0x0

    .local v0, "iscreen":I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_21

    .line 419
    const/4 v1, 0x0

    .local v1, "imem":I
    :goto_6
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1e

    .line 420
    add-int v2, v1, v0

    .line 421
    .local v2, "state":I
    aget-wide v3, p2, v2

    .line 422
    .local v3, "time":J
    if-ne p3, v2, :cond_12

    .line 423
    sub-long v5, p6, p4

    add-long/2addr v3, v5

    .line 425
    :cond_12
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1b

    .line 426
    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 419
    .end local v2    # "state":I
    .end local v3    # "time":J
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 418
    .end local v1    # "imem":I
    :cond_1e
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 430
    .end local v0    # "iscreen":I
    :cond_21
    return-void
.end method

.method public static blacklist dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V
    .registers 22
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;Z[IZ[IZ[IJ)V"
        }
    .end annotation

    .line 477
    .local p1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    const-string v0, "process"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    const-string v10, "\t"

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 479
    const-string/jumbo v0, "uid"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 481
    const-string/jumbo v0, "vers"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 482
    const/4 v0, 0x0

    if-eqz p2, :cond_1e

    move-object v2, p3

    goto :goto_1f

    :cond_1e
    move-object v2, v0

    .line 483
    :goto_1f
    if-eqz p4, :cond_24

    move-object/from16 v3, p5

    goto :goto_25

    :cond_24
    move-object v3, v0

    .line 484
    :goto_25
    if-eqz p6, :cond_29

    move-object/from16 v0, p7

    .line 482
    :cond_29
    invoke-static {p0, v10, v2, v3, v0}, Lcom/android/internal/app/procstats/DumpUtils;->dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    .line 485
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 486
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v11, v0

    .local v11, "i":I
    :goto_36
    if-ltz v11, :cond_6f

    .line 487
    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    .line 488
    .local v0, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v2

    invoke-static {p0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 491
    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 493
    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V

    .line 495
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 486
    .end local v0    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v11, v11, -0x1

    goto :goto_36

    .line 497
    .end local v11    # "i":I
    :cond_6f
    return-void
.end method

.method public static blacklist dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V
    .registers 25
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;[I[I[IJJ)V"
        }
    .end annotation

    .line 467
    .local p3, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_25

    .line 468
    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/internal/app/procstats/ProcessState;

    .line 469
    .local v3, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/app/procstats/ProcessState;->dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJ)V

    .line 467
    .end local v3    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_25
    move-object/from16 v1, p3

    .line 472
    .end local v0    # "i":I
    return-void
.end method

.method public static blacklist dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J
    .registers 24
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    .line 378
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 379
    .local v1, "totalTime":J
    const/4 v3, -0x1

    .line 380
    .local v3, "printedScreen":I
    const/4 v4, 0x0

    .local v4, "iscreen":I
    :goto_6
    const/16 v5, 0x8

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_51

    .line 381
    const/4 v5, -0x1

    .line 382
    .local v5, "printedMem":I
    const/4 v8, 0x0

    .local v8, "imem":I
    :goto_e
    const/4 v9, 0x4

    if-ge v8, v9, :cond_4c

    .line 383
    add-int v9, v8, v4

    .line 384
    .local v9, "state":I
    aget-wide v10, p2, v9

    .line 385
    .local v10, "time":J
    const-string v12, ""

    .line 386
    .local v12, "running":Ljava/lang/String;
    move/from16 v13, p3

    if-ne v13, v9, :cond_22

    .line 387
    sub-long v14, p6, p4

    add-long/2addr v10, v14

    .line 388
    if-eqz v0, :cond_22

    .line 389
    const-string v12, " (running)"

    .line 392
    :cond_22
    cmp-long v14, v10, v6

    if-eqz v14, :cond_49

    .line 393
    if-eqz v0, :cond_48

    .line 394
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    const/4 v14, -0x1

    if-eq v3, v4, :cond_30

    .line 396
    move v15, v4

    goto :goto_31

    :cond_30
    move v15, v14

    .line 395
    :goto_31
    invoke-static {v0, v15}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 397
    move v3, v4

    .line 398
    if-eq v5, v8, :cond_38

    move v14, v8

    :cond_38
    const/4 v15, 0x0

    invoke-static {v0, v14, v15}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 399
    move v5, v8

    .line 400
    const-string v14, ": "

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    :cond_48
    add-long/2addr v1, v10

    .line 382
    .end local v9    # "state":I
    .end local v10    # "time":J
    .end local v12    # "running":Ljava/lang/String;
    :cond_49
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_4c
    move/from16 v13, p3

    .line 380
    .end local v5    # "printedMem":I
    .end local v8    # "imem":I
    add-int/lit8 v4, v4, 0x4

    goto :goto_6

    :cond_51
    move/from16 v13, p3

    .line 407
    .end local v4    # "iscreen":I
    cmp-long v4, v1, v6

    if-eqz v4, :cond_67

    if-eqz v0, :cond_67

    .line 408
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    const-string v4, "    TOTAL: "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 411
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 413
    :cond_67
    return-wide v1
.end method

.method private static blacklist dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .registers 15
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "screenStates"    # [I
    .param p3, "memStates"    # [I
    .param p4, "procStates"    # [I

    .line 434
    const/4 v0, 0x1

    if-eqz p2, :cond_5

    array-length v1, p2

    goto :goto_6

    :cond_5
    move v1, v0

    .line 435
    .local v1, "NS":I
    :goto_6
    if-eqz p3, :cond_a

    array-length v2, p3

    goto :goto_b

    :cond_a
    move v2, v0

    .line 436
    .local v2, "NM":I
    :goto_b
    if-eqz p4, :cond_f

    array-length v3, p4

    goto :goto_10

    :cond_f
    move v3, v0

    .line 437
    .local v3, "NP":I
    :goto_10
    const/4 v4, 0x0

    .local v4, "is":I
    :goto_11
    if-ge v4, v1, :cond_56

    .line 438
    const/4 v5, 0x0

    .local v5, "im":I
    :goto_14
    if-ge v5, v2, :cond_53

    .line 439
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_17
    if-ge v6, v3, :cond_50

    .line 440
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    const/4 v7, 0x0

    .line 442
    .local v7, "printed":Z
    if-eqz p2, :cond_28

    array-length v8, p2

    if-le v8, v0, :cond_28

    .line 443
    aget v8, p2, v4

    invoke-static {p0, v8}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 444
    const/4 v7, 0x1

    .line 446
    :cond_28
    const-string v8, "-"

    if-eqz p3, :cond_3a

    array-length v9, p3

    if-le v9, v0, :cond_3a

    .line 447
    if-eqz v7, :cond_34

    .line 448
    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    :cond_34
    aget v9, p3, v5

    invoke-static {p0, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 451
    const/4 v7, 0x1

    .line 453
    :cond_3a
    if-eqz p4, :cond_4d

    array-length v9, p4

    if-le v9, v0, :cond_4d

    .line 454
    if-eqz v7, :cond_44

    .line 455
    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    :cond_44
    sget-object v8, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v9, p4, v6

    aget-object v8, v8, v9

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 439
    .end local v7    # "printed":Z
    :cond_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 438
    .end local v6    # "ip":I
    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 437
    .end local v5    # "im":I
    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 462
    .end local v4    # "is":I
    :cond_56
    return-void
.end method

.method public static blacklist printAdjTag(Ljava/io/PrintWriter;I)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    .line 342
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 343
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 344
    return-void
.end method

.method public static blacklist printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    .line 370
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 371
    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTag(Ljava/io/PrintWriter;I)V

    .line 372
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 373
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 374
    return-void
.end method

.method public static blacklist printAggregatedProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJI)V
    .registers 9
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "screenId"    # J
    .param p3, "stateId"    # J
    .param p5, "state"    # I

    .line 568
    shr-int/lit8 v0, p5, 0xf

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p3, p4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_6} :catch_7

    .line 571
    goto :goto_b

    .line 569
    :catch_7
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0, p3, p4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 574
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_b
    :try_start_b
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_PROTO_ENUMS:[I

    and-int/lit8 v2, p5, 0xf

    aget v0, v0, v2

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_14
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_14} :catch_15

    .line 577
    goto :goto_19

    .line 575
    :catch_15
    move-exception v0

    .line 576
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0, p1, p2, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 578
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_19
    return-void
.end method

.method public static blacklist printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "mod"    # I

    .line 500
    div-int v0, p2, p3

    .line 501
    .local v0, "index":I
    if-ltz v0, :cond_d

    array-length v1, p1

    if-ge v0, v1, :cond_d

    .line 502
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_12

    .line 504
    :cond_d
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 506
    :goto_12
    mul-int v1, v0, p3

    sub-int v1, p2, v1

    return v1
.end method

.method public static blacklist printMemLabel(Ljava/io/PrintWriter;IC)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I
    .param p2, "sep"    # C

    .line 277
    packed-switch p1, :pswitch_data_48

    .line 299
    const-string v0, "????"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    if-eqz p2, :cond_46

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_46

    .line 295
    :pswitch_e
    const-string v0, "Crit"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    if-eqz p2, :cond_46

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_46

    .line 291
    :pswitch_19
    const-string v0, " Low"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    if-eqz p2, :cond_46

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_46

    .line 287
    :pswitch_24
    const-string v0, " Mod"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    if-eqz p2, :cond_46

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_46

    .line 283
    :pswitch_2f
    const-string v0, "Norm"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    if-eqz p2, :cond_46

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_46

    .line 279
    :pswitch_3a
    const-string v0, "    "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    if-eqz p2, :cond_46

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 303
    :cond_46
    :goto_46
    return-void

    nop

    :pswitch_data_48
    .packed-switch -0x1
        :pswitch_3a
        :pswitch_2f
        :pswitch_24
        :pswitch_19
        :pswitch_e
    .end packed-switch
.end method

.method public static blacklist printMemLabelCsv(Ljava/io/PrintWriter;I)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .line 306
    if-ltz p1, :cond_12

    .line 307
    const/4 v0, 0x3

    if-gt p1, v0, :cond_d

    .line 308
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_12

    .line 310
    :cond_d
    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    :cond_12
    :goto_12
    return-void
.end method

.method public static blacklist printPercent(Ljava/io/PrintWriter;D)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "fraction"    # D

    .line 316
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    .line 317
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1b

    .line 318
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_44

    .line 319
    :cond_1b
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_33

    .line 320
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.1f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_44

    .line 322
    :cond_33
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.0f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    :goto_44
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public static blacklist printProcStateAdjTagProto(Landroid/util/proto/ProtoOutputStream;JJI)V
    .registers 12
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "screenId"    # J
    .param p3, "memId"    # J
    .param p5, "state"    # I

    .line 348
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_PROTO_ENUMS:[I

    const/16 v5, 0x40

    move-object v0, p0

    move-wide v1, p1

    move v4, p5

    .end local p0    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local p1    # "screenId":J
    .end local p5    # "state":I
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    .local v1, "screenId":J
    .local v4, "state":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    move-result p0

    .line 350
    .end local v4    # "state":I
    .local p0, "state":I
    move-wide p1, p3

    .end local p3    # "memId":J
    .local p1, "memId":J
    sget-object p3, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_PROTO_ENUMS:[I

    const/16 p5, 0x10

    move p4, p0

    move-object p0, v0

    .end local v0    # "proto":Landroid/util/proto/ProtoOutputStream;
    .local p0, "proto":Landroid/util/proto/ProtoOutputStream;
    .local p4, "state":I
    invoke-static/range {p0 .. p5}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    .line 351
    .end local p0    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v0    # "proto":Landroid/util/proto/ProtoOutputStream;
    return-void
.end method

.method public static blacklist printProcStateDurationProto(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .registers 14
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "procState"    # I
    .param p4, "duration"    # J

    .line 355
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 356
    .local v0, "stateToken":J
    sget-object v5, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    const/4 v7, 0x1

    const-wide v3, 0x10e00000003L

    move-object v2, p0

    move v6, p3

    .end local p0    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local p3    # "procState":I
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    .local v6, "procState":I
    invoke-static/range {v2 .. v7}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    .line 358
    const-wide v3, 0x10300000004L

    invoke-virtual {v2, v3, v4, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 359
    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 360
    return-void
.end method

.method public static blacklist printProcStateTag(Ljava/io/PrintWriter;I)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    .line 328
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/16 v1, 0x40

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 329
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 330
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 331
    return-void
.end method

.method public static blacklist printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    .line 363
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 364
    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 365
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 366
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 367
    return-void
.end method

.method public static blacklist printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V
    .registers 20
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "screenId"    # J
    .param p3, "memId"    # J
    .param p5, "stateId"    # J
    .param p7, "state"    # I

    .line 335
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_PROTO_ENUMS:[I

    const/16 v5, 0x40

    move-object v0, p0

    move-wide v1, p1

    move/from16 v4, p7

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    move-result v10

    .line 337
    .end local p7    # "state":I
    .local v10, "state":I
    sget-object v9, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_PROTO_ENUMS:[I

    const/16 v11, 0x10

    move-object v6, p0

    move-wide v7, p3

    invoke-static/range {v6 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    move-result v4

    .line 338
    .end local v10    # "state":I
    .local v4, "state":I
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    const/4 v5, 0x1

    move-wide/from16 v1, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    .line 339
    return-void
.end method

.method public static blacklist printProto(Landroid/util/proto/ProtoOutputStream;J[III)I
    .registers 8
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "enums"    # [I
    .param p4, "value"    # I
    .param p5, "mod"    # I

    .line 511
    div-int v0, p4, p5

    .line 512
    .local v0, "index":I
    if-ltz v0, :cond_c

    array-length v1, p3

    if-ge v0, v1, :cond_c

    .line 513
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 515
    :cond_c
    mul-int v1, v0, p5

    sub-int v1, p4, v1

    return v1
.end method

.method public static blacklist printScreenLabel(Ljava/io/PrintWriter;I)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .line 244
    sparse-switch p1, :sswitch_data_1c

    .line 255
    const-string v0, "????/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1b

    .line 252
    :sswitch_9
    const-string v0, " SOn/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    goto :goto_1b

    .line 249
    :sswitch_f
    const-string v0, "SOff/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    goto :goto_1b

    .line 246
    :sswitch_15
    const-string v0, "     "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    nop

    .line 258
    :goto_1b
    return-void

    :sswitch_data_1c
    .sparse-switch
        -0x1 -> :sswitch_15
        0x0 -> :sswitch_f
        0x4 -> :sswitch_9
    .end sparse-switch
.end method

.method public static blacklist printScreenLabelCsv(Ljava/io/PrintWriter;I)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .line 261
    sparse-switch p1, :sswitch_data_1e

    .line 271
    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1c

    .line 268
    :sswitch_9
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    goto :goto_1c

    .line 265
    :sswitch_12
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    goto :goto_1c

    .line 263
    :sswitch_1b
    nop

    .line 274
    :goto_1c
    return-void

    nop

    :sswitch_data_1e
    .sparse-switch
        -0x1 -> :sswitch_1b
        0x0 -> :sswitch_12
        0x4 -> :sswitch_9
    .end sparse-switch
.end method
