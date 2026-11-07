.class public final Landroid/internal/perfetto/protos/DataSourceConfigOuterClass$DataSourceConfig;
.super Ljava/lang/Object;
.source "DataSourceConfigOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/DataSourceConfigOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DataSourceConfig"
.end annotation


# static fields
.field public static final blacklist ANDROID_GAME_INTERVENTION_LIST_CONFIG:J = 0x10b00000074L

.field public static final blacklist ANDROID_INPUT_EVENT_CONFIG:J = 0x10b00000080L

.field public static final blacklist ANDROID_LOG_CONFIG:J = 0x10b0000006bL

.field public static final blacklist ANDROID_POLLED_STATE_CONFIG:J = 0x10b00000072L

.field public static final blacklist ANDROID_POWER_CONFIG:J = 0x10b0000006aL

.field public static final blacklist ANDROID_SDK_SYSPROP_GUARD_CONFIG:J = 0x10b0000007cL

.field public static final blacklist ANDROID_SYSTEM_PROPERTY_CONFIG:J = 0x10b00000076L

.field public static final blacklist APP_WAKELOCKS_CONFIG:J = 0x10b00000087L

.field public static final blacklist CHROME_CONFIG:J = 0x10b00000065L

.field public static final blacklist CHROMIUM_HISTOGRAM_SAMPLES:J = 0x10b00000086L

.field public static final blacklist CHROMIUM_SYSTEM_METRICS:J = 0x10b00000083L

.field public static final blacklist ENABLE_EXTRA_GUARDRAILS:J = 0x10800000006L

.field public static final blacklist ETW_CONFIG:J = 0x10b0000007dL

.field public static final blacklist FOR_TESTING:J = 0x10b000003e9L

.field public static final blacklist FTRACE_CONFIG:J = 0x10b00000064L

.field public static final blacklist GPU_COUNTER_CONFIG:J = 0x10b0000006cL

.field public static final blacklist GPU_RENDERSTAGES_CONFIG:J = 0x10b00000085L

.field public static final blacklist HEAPPROFD_CONFIG:J = 0x10b00000069L

.field public static final blacklist INODE_FILE_CONFIG:J = 0x10b00000066L

.field public static final blacklist INTERCEPTOR_CONFIG:J = 0x10b00000073L

.field public static final blacklist JAVA_HPROF_CONFIG:J = 0x10b0000006eL

.field public static final blacklist KERNEL_WAKELOCKS_CONFIG:J = 0x10b00000084L

.field public static final blacklist LEGACY_CONFIG:J = 0x109000003e8L

.field public static final blacklist NAME:J = 0x10900000001L

.field public static final blacklist NETWORK_PACKET_TRACE_CONFIG:J = 0x10b00000078L

.field public static final blacklist PACKAGES_LIST_CONFIG:J = 0x10b0000006dL

.field public static final blacklist PERF_EVENT_CONFIG:J = 0x10b0000006fL

.field public static final blacklist PIXEL_MODEM_CONFIG:J = 0x10b00000081L

.field public static final blacklist PREFER_SUSPEND_CLOCK_FOR_DURATION:J = 0x1080000007aL

.field public static final blacklist PROCESS_STATS_CONFIG:J = 0x10b00000067L

.field public static final blacklist PROTOLOG_CONFIG:J = 0x10b0000007eL

.field public static final blacklist SESSION_INITIATOR:J = 0x10e00000008L

.field public static final blacklist SESSION_INITIATOR_TRUSTED_SYSTEM:I = 0x1

.field public static final blacklist SESSION_INITIATOR_UNSPECIFIED:I = 0x0

.field public static final blacklist STATSD_TRACING_CONFIG:J = 0x10b00000075L

.field public static final blacklist STOP_TIMEOUT_MS:J = 0x10d00000007L

.field public static final blacklist SURFACEFLINGER_LAYERS_CONFIG:J = 0x10b00000079L

.field public static final blacklist SURFACEFLINGER_TRANSACTIONS_CONFIG:J = 0x10b0000007bL

.field public static final blacklist SYSTEM_INFO_CONFIG:J = 0x10b00000077L

.field public static final blacklist SYS_STATS_CONFIG:J = 0x10b00000068L

.field public static final blacklist TARGET_BUFFER:J = 0x10d00000002L

.field public static final blacklist TRACE_DURATION_MS:J = 0x10d00000003L

.field public static final blacklist TRACING_SESSION_ID:J = 0x10400000004L

.field public static final blacklist TRACK_EVENT_CONFIG:J = 0x10b00000071L

.field public static final blacklist V8_CONFIG:J = 0x10b0000007fL

.field public static final blacklist VULKAN_MEMORY_CONFIG:J = 0x10b00000070L

.field public static final blacklist WINDOWMANAGER_CONFIG:J = 0x10b00000082L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/DataSourceConfigOuterClass;)V
    .registers 2
    .param p1, "this$0"    # Landroid/internal/perfetto/protos/DataSourceConfigOuterClass;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
