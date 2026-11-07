.class public final Landroid/util/StatsLog;
.super Ljava/lang/Object;
.source "StatsLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/StatsLog$RestrictionCategory;
    }
.end annotation


# static fields
.field public static final whitelist ANNOTATION_ID_DEFAULT_STATE:B = 0x6t
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_EXCLUSIVE_STATE:B = 0x4t
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_FIELD_RESTRICTION_ACCESSIBILITY:B = 0xet
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_FIELD_RESTRICTION_AMBIENT_SENSING:B = 0x11t
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_FIELD_RESTRICTION_APP_ACTIVITY:B = 0xct
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_FIELD_RESTRICTION_APP_USAGE:B = 0xbt
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_FIELD_RESTRICTION_DEMOGRAPHIC_CLASSIFICATION:B = 0x12t
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_FIELD_RESTRICTION_HEALTH_CONNECT:B = 0xdt
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_FIELD_RESTRICTION_PERIPHERAL_DEVICE_INFO:B = 0xat
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_FIELD_RESTRICTION_SYSTEM_SEARCH:B = 0xft
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_FIELD_RESTRICTION_USER_ENGAGEMENT:B = 0x10t
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_IS_UID:B = 0x1t
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_PRIMARY_FIELD:B = 0x3t
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B = 0x5t
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_RESTRICTION_CATEGORY:B = 0x9t
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_STATE_NESTED:B = 0x8t
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_TRIGGER_STATE_RESET:B = 0x7t
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANNOTATION_ID_TRUNCATE_TIMESTAMP:B = 0x2t
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist EXPERIMENT_IDS_FIELD_ID:I = 0x1

.field public static final whitelist RESTRICTION_CATEGORY_AUTHENTICATION:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTRICTION_CATEGORY_DIAGNOSTIC:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTRICTION_CATEGORY_FRAUD_AND_ABUSE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTRICTION_CATEGORY_SYSTEM_INTELLIGENCE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "StatsLog"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 52
    invoke-static {}, Landroid/util/StatsLog;->loadNativeLibrary()V

    .line 53
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    return-void
.end method

.method private static blacklist loadNativeLibrary()V
    .registers 1

    .line 57
    const-string v0, "stats_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private static blacklist loadNativeLibrary$ravenwood()V
    .registers 0

    .line 61
    return-void
.end method

.method public static whitelist logBinaryPushStateChanged(Ljava/lang/String;JII[J)Z
    .registers 23
    .param p0, "trainName"    # Ljava/lang/String;
    .param p1, "trainVersionCode"    # J
    .param p3, "options"    # I
    .param p4, "state"    # I
    .param p5, "experimentIds"    # [J

    .line 423
    move-object/from16 v0, p5

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 424
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_19

    aget-wide v5, v0, v4

    .line 425
    .local v5, "id":J
    const-wide v7, 0x20300000001L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 424
    .end local v5    # "id":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 431
    :cond_19
    and-int/lit8 v2, p3, 0x1

    const/4 v4, 0x1

    if-lez v2, :cond_20

    move v9, v4

    goto :goto_21

    :cond_20
    move v9, v3

    :goto_21
    and-int/lit8 v2, p3, 0x2

    if-lez v2, :cond_27

    move v10, v4

    goto :goto_28

    :cond_27
    move v10, v3

    :goto_28
    and-int/lit8 v2, p3, 0x4

    if-lez v2, :cond_2e

    move v11, v4

    goto :goto_2f

    :cond_2e
    move v11, v3

    .line 438
    :goto_2f
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v13

    .line 431
    const/16 v5, 0x66

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move/from16 v12, p4

    invoke-static/range {v5 .. v16}, Lcom/android/internal/statsd/StatsdStatsLog;->write(ILjava/lang/String;JZZZI[BIIZ)V

    .line 442
    return v4
.end method

.method public static whitelist logEvent(I)Z
    .registers 4
    .param p0, "label"    # I

    .line 394
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 395
    .local v0, "callingUid":I
    const/16 v1, 0x2f

    const/4 v2, 0x1

    invoke-static {v1, v0, p0, v2}, Lcom/android/internal/statsd/StatsdStatsLog;->write(IIII)V

    .line 400
    return v2
.end method

.method public static whitelist logStart(I)Z
    .registers 4
    .param p0, "label"    # I

    .line 362
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 363
    .local v0, "callingUid":I
    const/16 v1, 0x2f

    const/4 v2, 0x3

    invoke-static {v1, v0, p0, v2}, Lcom/android/internal/statsd/StatsdStatsLog;->write(IIII)V

    .line 368
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist logStop(I)Z
    .registers 4
    .param p0, "label"    # I

    .line 378
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 379
    .local v0, "callingUid":I
    const/16 v1, 0x2f

    const/4 v2, 0x2

    invoke-static {v1, v0, p0, v2}, Lcom/android/internal/statsd/StatsdStatsLog;->write(IIII)V

    .line 384
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist write(Landroid/util/StatsEvent;)V
    .registers 4
    .param p0, "statsEvent"    # Landroid/util/StatsEvent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 485
    invoke-virtual {p0}, Landroid/util/StatsEvent;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/StatsEvent;->getNumBytes()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/StatsEvent;->getAtomId()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/util/StatsLog;->writeImpl([BII)V

    .line 486
    invoke-virtual {p0}, Landroid/util/StatsEvent;->release()V

    .line 487
    return-void
.end method

.method private static native blacklist writeImpl([BII)V
.end method

.method private static blacklist writeImpl$ravenwood([BII)V
    .registers 3
    .param p0, "buffer"    # [B
    .param p1, "size"    # I
    .param p2, "atomId"    # I

    .line 473
    return-void
.end method

.method public static whitelist writeRaw([BI)V
    .registers 3
    .param p0, "buffer"    # [B
    .param p1, "size"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 457
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/StatsLog;->writeImpl([BII)V

    .line 458
    return-void
.end method
