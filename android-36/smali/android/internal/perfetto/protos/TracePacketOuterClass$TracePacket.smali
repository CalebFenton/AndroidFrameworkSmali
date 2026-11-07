.class public final Landroid/internal/perfetto/protos/TracePacketOuterClass$TracePacket;
.super Ljava/lang/Object;
.source "TracePacketOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/TracePacketOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TracePacket"
.end annotation


# static fields
.field public static final blacklist ANDROID_CAMERA_FRAME_EVENT:J = 0x10b00000050L

.field public static final blacklist ANDROID_CAMERA_SESSION_STATS:J = 0x10b00000051L

.field public static final blacklist ANDROID_ENERGY_ESTIMATION_BREAKDOWN:J = 0x10b0000004dL

.field public static final blacklist ANDROID_GAME_INTERVENTION_LIST:J = 0x10b00000053L

.field public static final blacklist ANDROID_LOG:J = 0x10b00000027L

.field public static final blacklist ANDROID_SYSTEM_PROPERTY:J = 0x10b00000056L

.field public static final blacklist APP_WAKELOCK_BUNDLE:J = 0x10b00000074L

.field public static final blacklist BATTERY:J = 0x10b00000026L

.field public static final blacklist BLUETOOTH_TRACE_EVENT:J = 0x10b00000072L

.field public static final blacklist CHROME_BENCHMARK_METADATA:J = 0x10b00000030L

.field public static final blacklist CHROME_EVENTS:J = 0x10b00000005L

.field public static final blacklist CHROME_METADATA:J = 0x10b00000033L

.field public static final blacklist CHROME_TRIGGER:J = 0x10b0000006dL

.field public static final blacklist CLOCK_SNAPSHOT:J = 0x10b00000006L

.field public static final blacklist CLONE_SNAPSHOT_TRIGGER:J = 0x10b00000071L

.field public static final blacklist COMPRESSED_PACKETS:J = 0x10c00000032L

.field public static final blacklist CPU_INFO:J = 0x10b00000043L

.field public static final blacklist DEOBFUSCATION_MAPPING:J = 0x10b00000040L

.field public static final blacklist ENTITY_STATE_RESIDENCY:J = 0x10b0000005bL

.field public static final blacklist ETW_EVENTS:J = 0x10b0000005fL

.field public static final blacklist EXTENSION_DESCRIPTOR:J = 0x10b00000048L

.field public static final blacklist FIRST_PACKET_ON_SEQUENCE:J = 0x10800000057L

.field public static final blacklist FOR_TESTING:J = 0x10b00000384L

.field public static final blacklist FRAME_TIMELINE_EVENT:J = 0x10b0000004cL

.field public static final blacklist FTRACE_EVENTS:J = 0x10b00000001L

.field public static final blacklist FTRACE_STATS:J = 0x10b00000022L

.field public static final blacklist GPU_COUNTER_EVENT:J = 0x10b00000034L

.field public static final blacklist GPU_LOG:J = 0x10b0000003fL

.field public static final blacklist GPU_MEM_TOTAL_EVENT:J = 0x10b00000047L

.field public static final blacklist GPU_RENDER_STAGE_EVENT:J = 0x10b00000035L

.field public static final blacklist GRAPHICS_FRAME_EVENT:J = 0x10b00000039L

.field public static final blacklist HEAP_GRAPH:J = 0x10b00000038L

.field public static final blacklist INCREMENTAL_STATE_CLEARED:J = 0x10800000029L

.field public static final blacklist INITIAL_DISPLAY_STATE:J = 0x10b00000046L

.field public static final blacklist INODE_FILE_MAP:J = 0x10b00000004L

.field public static final blacklist INTERNED_DATA:J = 0x10b0000000cL

.field public static final blacklist KERNEL_WAKELOCK_DATA:J = 0x10b00000073L

.field public static final blacklist MACHINE_ID:J = 0x10d00000062L

.field public static final blacklist MEMORY_TRACKER_SNAPSHOT:J = 0x10b00000049L

.field public static final blacklist MODULE_SYMBOLS:J = 0x10b0000003dL

.field public static final blacklist NETWORK_PACKET:J = 0x10b00000058L

.field public static final blacklist NETWORK_PACKET_BUNDLE:J = 0x10b0000005cL

.field public static final blacklist PACKAGES_LIST:J = 0x10b0000002fL

.field public static final blacklist PERFETTO_METATRACE:J = 0x10b00000031L

.field public static final blacklist PERF_SAMPLE:J = 0x10b00000042L

.field public static final blacklist PIXEL_MODEM_EVENTS:J = 0x10b0000006eL

.field public static final blacklist PIXEL_MODEM_TOKEN_DATABASE:J = 0x10b0000006fL

.field public static final blacklist POWER_RAILS:J = 0x10b00000028L

.field public static final blacklist PREVIOUS_PACKET_DROPPED:J = 0x1080000002aL

.field public static final blacklist PROCESS_DESCRIPTOR:J = 0x10b0000002bL

.field public static final blacklist PROCESS_STATS:J = 0x10b00000009L

.field public static final blacklist PROCESS_TREE:J = 0x10b00000002L

.field public static final blacklist PROFILED_FRAME_SYMBOLS:J = 0x10b00000037L

.field public static final blacklist PROFILE_PACKET:J = 0x10b00000025L

.field public static final blacklist PROTOLOG_MESSAGE:J = 0x10b00000068L

.field public static final blacklist PROTOLOG_VIEWER_CONFIG:J = 0x10b00000069L

.field public static final blacklist REMOTE_CLOCK_SYNC:J = 0x10b0000006bL

.field public static final blacklist SEQUENCE_FLAGS:J = 0x10d0000000dL

.field public static final blacklist SEQ_INCREMENTAL_STATE_CLEARED:I = 0x1

.field public static final blacklist SEQ_NEEDS_INCREMENTAL_STATE:I = 0x2

.field public static final blacklist SEQ_UNSPECIFIED:I = 0x0

.field public static final blacklist SERVICE_EVENT:J = 0x10b00000045L

.field public static final blacklist SHELL_HANDLER_MAPPINGS:J = 0x10b00000061L

.field public static final blacklist SHELL_TRANSITION:J = 0x10b00000060L

.field public static final blacklist SMAPS_PACKET:J = 0x10b00000044L

.field public static final blacklist STATSD_ATOM:J = 0x10b00000054L

.field public static final blacklist STREAMING_ALLOCATION:J = 0x10b0000004aL

.field public static final blacklist STREAMING_FREE:J = 0x10b0000004bL

.field public static final blacklist STREAMING_PROFILE_PACKET:J = 0x10b00000036L

.field public static final blacklist SURFACEFLINGER_LAYERS_SNAPSHOT:J = 0x10b0000005dL

.field public static final blacklist SURFACEFLINGER_TRANSACTIONS:J = 0x10b0000005eL

.field public static final blacklist SYNCHRONIZATION_MARKER:J = 0x10c00000024L

.field public static final blacklist SYSTEM_INFO:J = 0x10b0000002dL

.field public static final blacklist SYS_STATS:J = 0x10b00000007L

.field public static final blacklist THREAD_DESCRIPTOR:J = 0x10b0000002cL

.field public static final blacklist TIMESTAMP:J = 0x10400000008L

.field public static final blacklist TIMESTAMP_CLOCK_ID:J = 0x10d0000003aL

.field public static final blacklist TRACE_CONFIG:J = 0x10b00000021L

.field public static final blacklist TRACE_PACKET_DEFAULTS:J = 0x10b0000003bL

.field public static final blacklist TRACE_STATS:J = 0x10b00000023L

.field public static final blacklist TRACE_UUID:J = 0x10b00000059L

.field public static final blacklist TRACK_DESCRIPTOR:J = 0x10b0000003cL

.field public static final blacklist TRACK_EVENT:J = 0x10b0000000bL

.field public static final blacklist TRACK_EVENT_RANGE_OF_INTEREST:J = 0x10b0000005aL

.field public static final blacklist TRANSLATION_TABLE:J = 0x10b00000052L

.field public static final blacklist TRIGGER:J = 0x10b0000002eL

.field public static final blacklist TRUSTED_PACKET_SEQUENCE_ID:J = 0x10d0000000aL

.field public static final blacklist TRUSTED_PID:J = 0x1050000004fL

.field public static final blacklist TRUSTED_UID:J = 0x10500000003L

.field public static final blacklist UI_STATE:J = 0x10b0000004eL

.field public static final blacklist V8_CODE_MOVE:J = 0x10b00000067L

.field public static final blacklist V8_INTERNAL_CODE:J = 0x10b00000064L

.field public static final blacklist V8_JS_CODE:J = 0x10b00000063L

.field public static final blacklist V8_REG_EXP_CODE:J = 0x10b00000066L

.field public static final blacklist V8_WASM_CODE:J = 0x10b00000065L

.field public static final blacklist VULKAN_API_EVENT:J = 0x10b00000041L

.field public static final blacklist VULKAN_MEMORY_EVENT:J = 0x10b0000003eL

.field public static final blacklist WINSCOPE_EXTENSIONS:J = 0x10b00000070L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/TracePacketOuterClass;)V
    .registers 2
    .param p1, "this$0"    # Landroid/internal/perfetto/protos/TracePacketOuterClass;
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
