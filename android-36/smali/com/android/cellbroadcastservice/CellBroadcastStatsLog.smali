.class public Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;
.super Ljava/lang/Object;
.source "CellBroadcastStatsLog.java"


# static fields
.field public static final blacklist ANNOTATION_ID_DEFAULT_STATE:B

.field public static final blacklist ANNOTATION_ID_EXCLUSIVE_STATE:B

.field public static final blacklist ANNOTATION_ID_IS_UID:B

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD:B

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B

.field public static final blacklist ANNOTATION_ID_STATE_NESTED:B

.field public static final blacklist ANNOTATION_ID_TRIGGER_STATE_RESET:B

.field public static final blacklist ANNOTATION_ID_TRUNCATE_TIMESTAMP:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 145
    sput-byte v0, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->ANNOTATION_ID_IS_UID:B

    const/4 v0, 0x2

    .line 150
    sput-byte v0, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->ANNOTATION_ID_TRUNCATE_TIMESTAMP:B

    const/4 v0, 0x3

    .line 155
    sput-byte v0, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->ANNOTATION_ID_PRIMARY_FIELD:B

    const/4 v0, 0x4

    .line 160
    sput-byte v0, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->ANNOTATION_ID_EXCLUSIVE_STATE:B

    const/4 v0, 0x5

    .line 165
    sput-byte v0, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B

    const/4 v0, 0x6

    .line 170
    sput-byte v0, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->ANNOTATION_ID_DEFAULT_STATE:B

    const/4 v0, 0x7

    .line 175
    sput-byte v0, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->ANNOTATION_ID_TRIGGER_STATE_RESET:B

    const/16 v0, 0x8

    .line 180
    sput-byte v0, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->ANNOTATION_ID_STATE_NESTED:B

    return-void
.end method

.method public static blacklist write(III)V
    .registers 4

    .line 211
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 213
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 214
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 216
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 217
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public static blacklist write(IILjava/lang/String;)V
    .registers 4

    .line 247
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 249
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 250
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 252
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 253
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method
