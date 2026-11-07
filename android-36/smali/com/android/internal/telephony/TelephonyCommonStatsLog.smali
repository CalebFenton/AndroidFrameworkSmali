.class public Lcom/android/internal/telephony/TelephonyCommonStatsLog;
.super Ljava/lang/Object;
.source "TelephonyCommonStatsLog.java"


# static fields
.field public static final blacklist ANNOTATION_ID_DEFAULT_STATE:B = 0x6t

.field public static final blacklist ANNOTATION_ID_EXCLUSIVE_STATE:B = 0x4t

.field public static final blacklist ANNOTATION_ID_IS_UID:B = 0x1t

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD:B = 0x3t

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B = 0x5t

.field public static final blacklist ANNOTATION_ID_STATE_NESTED:B = 0x8t

.field public static final blacklist ANNOTATION_ID_TRIGGER_STATE_RESET:B = 0x7t

.field public static final blacklist ANNOTATION_ID_TRUNCATE_TIMESTAMP:B = 0x2t

.field public static final blacklist DEVICE_IDENTIFIER_ACCESS_DENIED:I = 0xac


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist write(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 7
    .param p0, "code"    # I
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Z
    .param p4, "arg4"    # Z

    .line 54
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 55
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 56
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 57
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 58
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 59
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 61
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 62
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 63
    return-void
.end method
