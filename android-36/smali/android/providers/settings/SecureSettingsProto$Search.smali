.class public final Landroid/providers/settings/SecureSettingsProto$Search;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Search"
.end annotation


# static fields
.field public static final blacklist GLOBAL_SEARCH_ACTIVITY:J = 0x10b00000001L

.field public static final blacklist MAX_RESULTS_PER_SOURCE:J = 0x10b00000004L

.field public static final blacklist MAX_RESULTS_TO_DISPLAY:J = 0x10b00000003L

.field public static final blacklist MAX_SHORTCUTS_RETURNED:J = 0x10b0000000dL

.field public static final blacklist MAX_SOURCE_EVENT_AGE_MILLIS:J = 0x10b0000000aL

.field public static final blacklist MAX_STAT_AGE_MILLIS:J = 0x10b00000009L

.field public static final blacklist MIN_CLICKS_FOR_SOURCE_RANKING:J = 0x10b0000000cL

.field public static final blacklist MIN_IMPRESSIONS_FOR_SOURCE_RANKING:J = 0x10b0000000bL

.field public static final blacklist NUM_PROMOTED_SOURCES:J = 0x10b00000002L

.field public static final blacklist PER_SOURCE_CONCURRENT_QUERY_LIMIT:J = 0x10b00000013L

.field public static final blacklist PREFILL_MILLIS:J = 0x10b00000008L

.field public static final blacklist PROMOTED_SOURCE_DEADLINE_MILLIS:J = 0x10b00000006L

.field public static final blacklist QUERY_THREAD_CORE_POOL_SIZE:J = 0x10b0000000eL

.field public static final blacklist QUERY_THREAD_MAX_POOL_SIZE:J = 0x10b0000000fL

.field public static final blacklist SHORTCUT_REFRESH_CORE_POOL_SIZE:J = 0x10b00000010L

.field public static final blacklist SHORTCUT_REFRESH_MAX_POOL_SIZE:J = 0x10b00000011L

.field public static final blacklist SOURCE_TIMEOUT_MILLIS:J = 0x10b00000007L

.field public static final blacklist THREAD_KEEPALIVE_SECONDS:J = 0x10b00000012L

.field public static final blacklist WEB_RESULTS_OVERRIDE_LIMIT:J = 0x10b00000005L


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/SecureSettingsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
