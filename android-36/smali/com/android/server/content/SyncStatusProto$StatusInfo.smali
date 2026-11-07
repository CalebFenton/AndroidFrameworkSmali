.class public final Lcom/android/server/content/SyncStatusProto$StatusInfo;
.super Ljava/lang/Object;
.source "SyncStatusProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStatusProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StatusInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncStatusProto$StatusInfo$LastEventInfo;,
        Lcom/android/server/content/SyncStatusProto$StatusInfo$Stats;
    }
.end annotation


# static fields
.field public static final blacklist AUTHORITY_ID:J = 0x10500000002L

.field public static final blacklist INITIALIZE:J = 0x1080000000aL

.field public static final blacklist INITIAL_FAILURE_TIME:J = 0x10300000008L

.field public static final blacklist LAST_EVENT_INFO:J = 0x20b0000000cL

.field public static final blacklist LAST_FAILURE_MESSAGE:J = 0x10900000007L

.field public static final blacklist LAST_FAILURE_SOURCE:J = 0x10500000006L

.field public static final blacklist LAST_FAILURE_TIME:J = 0x10300000005L

.field public static final blacklist LAST_SUCCESS_SOURCE:J = 0x10500000004L

.field public static final blacklist LAST_SUCCESS_TIME:J = 0x10300000003L

.field public static final blacklist LAST_TODAY_RESET_TIME:J = 0x1030000000dL

.field public static final blacklist PENDING:J = 0x10800000009L

.field public static final blacklist PERIODIC_SYNC_TIMES:J = 0x2030000000bL

.field public static final blacklist PER_SOURCE_LAST_FAILURE_TIMES:J = 0x20300000012L

.field public static final blacklist PER_SOURCE_LAST_SUCCESS_TIMES:J = 0x20300000011L

.field public static final blacklist TODAY_STATS:J = 0x10b0000000fL

.field public static final blacklist TOTAL_STATS:J = 0x10b0000000eL

.field public static final blacklist YESTERDAY_STATS:J = 0x10b00000010L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/content/SyncStatusProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/content/SyncStatusProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
