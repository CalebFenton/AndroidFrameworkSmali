.class public final Landroid/internal/perfetto/protos/InternedDataOuterClass$InternedData;
.super Ljava/lang/Object;
.source "InternedDataOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/InternedDataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InternedData"
.end annotation


# static fields
.field public static final blacklist APP_WAKELOCK_INFO:J = 0x20b0000002aL

.field public static final blacklist BUILD_IDS:J = 0x20b00000010L

.field public static final blacklist CALLSTACKS:J = 0x20b00000007L

.field public static final blacklist DEBUG_ANNOTATION_NAMES:J = 0x20b00000003L

.field public static final blacklist DEBUG_ANNOTATION_STRING_VALUES:J = 0x20b0000001dL

.field public static final blacklist DEBUG_ANNOTATION_VALUE_TYPE_NAMES:J = 0x20b0000001bL

.field public static final blacklist EVENT_CATEGORIES:J = 0x20b00000001L

.field public static final blacklist EVENT_NAMES:J = 0x20b00000002L

.field public static final blacklist FRAMES:J = 0x20b00000006L

.field public static final blacklist FUNCTION_NAMES:J = 0x20b00000005L

.field public static final blacklist GPU_SPECIFICATIONS:J = 0x20b00000018L

.field public static final blacklist GRAPHICS_CONTEXTS:J = 0x20b00000017L

.field public static final blacklist HISTOGRAM_NAMES:J = 0x20b00000019L

.field public static final blacklist KERNEL_SYMBOLS:J = 0x20b0000001aL

.field public static final blacklist LOG_MESSAGE_BODY:J = 0x20b00000014L

.field public static final blacklist MAPPINGS:J = 0x20b00000013L

.field public static final blacklist MAPPING_PATHS:J = 0x20b00000011L

.field public static final blacklist PACKET_CONTEXT:J = 0x20b0000001eL

.field public static final blacklist PROFILED_FRAME_SYMBOLS:J = 0x20b00000015L

.field public static final blacklist PROTOLOG_STACKTRACE:J = 0x20b00000025L

.field public static final blacklist PROTOLOG_STRING_ARGS:J = 0x20b00000024L

.field public static final blacklist SOURCE_LOCATIONS:J = 0x20b00000004L

.field public static final blacklist SOURCE_PATHS:J = 0x20b00000012L

.field public static final blacklist UNSYMBOLIZED_SOURCE_LOCATIONS:J = 0x20b0000001cL

.field public static final blacklist V8_ISOLATE:J = 0x20b00000023L

.field public static final blacklist V8_JS_FUNCTION:J = 0x20b00000020L

.field public static final blacklist V8_JS_FUNCTION_NAME:J = 0x20b0000001fL

.field public static final blacklist V8_JS_SCRIPT:J = 0x20b00000021L

.field public static final blacklist V8_WASM_SCRIPT:J = 0x20b00000022L

.field public static final blacklist VIEWCAPTURE_CLASS_NAME:J = 0x20b00000029L

.field public static final blacklist VIEWCAPTURE_PACKAGE_NAME:J = 0x20b00000026L

.field public static final blacklist VIEWCAPTURE_VIEW_ID:J = 0x20b00000028L

.field public static final blacklist VIEWCAPTURE_WINDOW_NAME:J = 0x20b00000027L

.field public static final blacklist VULKAN_MEMORY_KEYS:J = 0x20b00000016L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/InternedDataOuterClass;)V
    .registers 2
    .param p1, "this$0"    # Landroid/internal/perfetto/protos/InternedDataOuterClass;
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
