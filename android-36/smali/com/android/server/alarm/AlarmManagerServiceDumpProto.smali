.class public final Lcom/android/server/alarm/AlarmManagerServiceDumpProto;
.super Ljava/lang/Object;
.source "AlarmManagerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/AlarmManagerServiceDumpProto$AlarmStat;,
        Lcom/android/server/alarm/AlarmManagerServiceDumpProto$TopAlarm;,
        Lcom/android/server/alarm/AlarmManagerServiceDumpProto$LastAllowWhileIdleDispatch;
    }
.end annotation


# static fields
.field public static final blacklist ALARM_STATS:J = 0x20b00000027L

.field public static final blacklist ALLOW_WHILE_IDLE_DISPATCHES:J = 0x20b00000028L

.field public static final blacklist APP_STATE_TRACKER:J = 0x10b00000006L

.field public static final blacklist BROADCAST_REF_COUNT:J = 0x1050000001dL

.field public static final blacklist CURRENT_TIME:J = 0x10300000001L

.field public static final blacklist DELAYED_ALARM_COUNT:J = 0x10500000019L

.field public static final blacklist DEVICE_IDLE_USER_EXEMPT_APP_IDS:J = 0x20500000011L

.field public static final blacklist ELAPSED_REALTIME:J = 0x10300000002L

.field public static final blacklist IS_INTERACTIVE:J = 0x10800000007L

.field public static final blacklist LAST_ALLOW_WHILE_IDLE_DISPATCH_TIMES:J = 0x20b00000024L

.field public static final blacklist LAST_TIME_CHANGE_CLOCK_TIME:J = 0x10300000003L

.field public static final blacklist LAST_TIME_CHANGE_REALTIME:J = 0x10300000004L

.field public static final blacklist LISTENER_FINISH_COUNT:J = 0x10500000021L

.field public static final blacklist LISTENER_SEND_COUNT:J = 0x10500000020L

.field public static final blacklist MAX_DELAY_DURATION_MS:J = 0x1030000001bL

.field public static final blacklist MAX_NON_INTERACTIVE_DURATION_MS:J = 0x1030000001cL

.field public static final blacklist MAX_WAKEUP_DELAY_MS:J = 0x10300000009L

.field public static final blacklist NEXT_ALARM_CLOCK_METADATA:J = 0x20b00000012L

.field public static final blacklist NEXT_WAKE_FROM_IDLE:J = 0x10b00000017L

.field public static final blacklist OUTSTANDING_DELIVERIES:J = 0x20b00000022L

.field public static final blacklist PAST_DUE_NON_WAKEUP_ALARMS:J = 0x20b00000018L

.field public static final blacklist PENDING_ALARMS:J = 0x20b0000002aL

.field public static final blacklist PENDING_ALARM_BATCHES:J = 0x20b00000013L

.field public static final blacklist PENDING_IDLE_UNTIL:J = 0x10b00000015L

.field public static final blacklist PENDING_INTENT_FINISH_COUNT:J = 0x1050000001fL

.field public static final blacklist PENDING_INTENT_SEND_COUNT:J = 0x1050000001eL

.field public static final blacklist PENDING_USER_BLOCKED_BACKGROUND_ALARMS:J = 0x20b00000014L

.field public static final blacklist PENDING_WHILE_IDLE_ALARMS:J = 0x20b00000016L

.field public static final blacklist RECENT_PROBLEMS:J = 0x10b00000025L

.field public static final blacklist RECENT_WAKEUP_HISTORY:J = 0x20b00000029L

.field public static final blacklist SETTINGS:J = 0x10b00000005L

.field public static final blacklist TIME_CHANGE_EVENT_COUNT:J = 0x10300000010L

.field public static final blacklist TIME_SINCE_LAST_DISPATCH_MS:J = 0x1030000000aL

.field public static final blacklist TIME_SINCE_LAST_WAKEUP_MS:J = 0x1030000000eL

.field public static final blacklist TIME_SINCE_LAST_WAKEUP_SET_MS:J = 0x1030000000fL

.field public static final blacklist TIME_SINCE_NON_INTERACTIVE_MS:J = 0x10300000008L

.field public static final blacklist TIME_UNTIL_NEXT_NON_WAKEUP_ALARM_MS:J = 0x1030000000cL

.field public static final blacklist TIME_UNTIL_NEXT_NON_WAKEUP_DELIVERY_MS:J = 0x1030000000bL

.field public static final blacklist TIME_UNTIL_NEXT_WAKEUP_MS:J = 0x1030000000dL

.field public static final blacklist TOP_ALARMS:J = 0x20b00000026L

.field public static final blacklist TOTAL_DELAY_TIME_MS:J = 0x1030000001aL

.field public static final blacklist USE_ALLOW_WHILE_IDLE_SHORT_TIME:J = 0x20500000023L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
