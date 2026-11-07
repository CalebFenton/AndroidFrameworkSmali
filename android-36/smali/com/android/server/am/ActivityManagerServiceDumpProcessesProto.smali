.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$Controller;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$Profile;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$DebugApp;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$Voice;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$SleepStatus;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$PendingTempWhitelist;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$UidObserverRegistrationProto;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$ScreenCompatPackage;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$LruProcesses;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVE_INSTRUMENTATIONS:J = 0x20b00000003L

.field public static final blacklist ACTIVE_UIDS:J = 0x20b00000004L

.field public static final blacklist ADJ_SEQ:J = 0x10500000031L

.field public static final blacklist ALLOW_LOWER_MEM_LEVEL:J = 0x10800000037L

.field public static final blacklist ALWAYS_FINISH_ACTIVITIES:J = 0x10800000024L

.field public static final blacklist APP_ERRORS:J = 0x10b0000000dL

.field public static final blacklist BOOTED:J = 0x10800000029L

.field public static final blacklist BOOTING:J = 0x1080000002bL

.field public static final blacklist BOOT_ANIMATION_COMPLETE:J = 0x1080000002dL

.field public static final blacklist CALL_FINISH_BOOTING:J = 0x1080000002cL

.field public static final blacklist CONFIG_WILL_CHANGE:J = 0x10800000015L

.field public static final blacklist CONTROLLER:J = 0x10b00000025L

.field public static final blacklist CURRENT_TRACKER:J = 0x10b0000001fL

.field public static final blacklist DEBUG:J = 0x10b0000001eL

.field public static final blacklist DEVICE_IDLE_TEMP_WHITELIST:J = 0x20500000019L

.field public static final blacklist DEVICE_IDLE_WHITELIST:J = 0x20500000018L

.field public static final blacklist FACTORY_TEST:J = 0x1050000002aL

.field public static final blacklist GC_PROCS:J = 0x20b0000000cL

.field public static final blacklist GLOBAL_CONFIGURATION:J = 0x10b00000013L

.field public static final blacklist GOING_TO_SLEEP:J = 0x10b0000002fL

.field public static final blacklist HEAVY_WEIGHT_PROC:J = 0x10b00000012L

.field public static final blacklist HOME_PROC:J = 0x10b0000000fL

.field public static final blacklist IMPORTANT_PROCS:J = 0x20b00000008L

.field public static final blacklist ISOLATED_PROCS:J = 0x20b00000002L

.field public static final blacklist LAST_IDLE_TIME:J = 0x10b0000003aL

.field public static final blacklist LAST_MEMORY_LEVEL:J = 0x10500000038L

.field public static final blacklist LAST_NUM_PROCESSES:J = 0x10500000039L

.field public static final blacklist LAST_POWER_CHECK_UPTIME_MS:J = 0x1030000002eL

.field public static final blacklist LAUNCHING_ACTIVITY:J = 0x10b00000030L

.field public static final blacklist LOW_RAM_SINCE_LAST_IDLE_MS:J = 0x1030000003bL

.field public static final blacklist LRU_PROCS:J = 0x10b00000006L

.field public static final blacklist LRU_SEQ:J = 0x10500000032L

.field public static final blacklist MEM_WATCH_PROCESSES:J = 0x10b00000020L

.field public static final blacklist NATIVE_DEBUGGING_APP:J = 0x10900000023L

.field public static final blacklist NEW_NUM_SERVICE_PROCS:J = 0x10500000036L

.field public static final blacklist NUM_CACHED_HIDDEN_PROCS:J = 0x10500000034L

.field public static final blacklist NUM_NON_CACHED_PROCS:J = 0x10500000033L

.field public static final blacklist NUM_SERVICE_PROCS:J = 0x10500000035L

.field public static final blacklist ON_HOLD_PROCS:J = 0x20b0000000bL

.field public static final blacklist PENDING_TEMP_WHITELIST:J = 0x20b0000001aL

.field public static final blacklist PERSISTENT_STARTING_PROCS:J = 0x20b00000009L

.field public static final blacklist PIDS_SELF_LOCKED:J = 0x20b00000007L

.field public static final blacklist PREVIOUS_PROC:J = 0x10b00000010L

.field public static final blacklist PREVIOUS_PROC_VISIBLE_TIME_MS:J = 0x10300000011L

.field public static final blacklist PROCESSES_READY:J = 0x10800000027L

.field public static final blacklist PROCS:J = 0x20b00000001L

.field public static final blacklist PROFILE:J = 0x10b00000022L

.field public static final blacklist REMOVED_PROCS:J = 0x20b0000000aL

.field public static final blacklist RUNNING_VOICE:J = 0x10b0000001cL

.field public static final blacklist SCREEN_COMPAT_PACKAGES:J = 0x20b00000016L

.field public static final blacklist SLEEP_STATUS:J = 0x10b0000001bL

.field public static final blacklist SYSTEM_READY:J = 0x10800000028L

.field public static final blacklist TOTAL_PERSISTENT_PROCS:J = 0x10500000026L

.field public static final blacklist TRACK_ALLOCATION_APP:J = 0x10900000021L

.field public static final blacklist UID_OBSERVERS:J = 0x20b00000017L

.field public static final blacklist USER_CONTROLLER:J = 0x10b0000000eL

.field public static final blacklist VALIDATE_UIDS:J = 0x20b00000005L

.field public static final blacklist VR_CONTROLLER:J = 0x10b0000001dL


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
