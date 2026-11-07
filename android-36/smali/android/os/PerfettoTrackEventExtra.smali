.class public final Landroid/os/PerfettoTrackEventExtra;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PerfettoTrackEventExtra$Pool;,
        Landroid/os/PerfettoTrackEventExtra$Builder;,
        Landroid/os/PerfettoTrackEventExtra$FieldContainer;,
        Landroid/os/PerfettoTrackEventExtra$RingBuffer;,
        Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;,
        Landroid/os/PerfettoTrackEventExtra$CounterInt64;,
        Landroid/os/PerfettoTrackEventExtra$CounterDouble;,
        Landroid/os/PerfettoTrackEventExtra$Proto;,
        Landroid/os/PerfettoTrackEventExtra$Flow;,
        Landroid/os/PerfettoTrackEventExtra$FieldNested;,
        Landroid/os/PerfettoTrackEventExtra$FieldString;,
        Landroid/os/PerfettoTrackEventExtra$FieldDouble;,
        Landroid/os/PerfettoTrackEventExtra$FieldInt64;,
        Landroid/os/PerfettoTrackEventExtra$ArgString;,
        Landroid/os/PerfettoTrackEventExtra$ArgDouble;,
        Landroid/os/PerfettoTrackEventExtra$ArgBool;,
        Landroid/os/PerfettoTrackEventExtra$ArgInt64;,
        Landroid/os/PerfettoTrackEventExtra$CounterTrack;,
        Landroid/os/PerfettoTrackEventExtra$NamedTrack;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_EXTRA_CACHE_SIZE:I = 0x5

.field private static final blacklist NO_OP_BUILDER:Landroid/os/PerfettoTrackEventExtra$Builder;

.field private static final blacklist TAG:Ljava/lang/String; = "PerfettoTrackEventExtra"

.field private static final blacklist sBuilderSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/PerfettoTrackEventExtra$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sFieldDoubleSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/PerfettoTrackEventExtra$FieldDouble;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sFieldInt64Supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/PerfettoTrackEventExtra$FieldInt64;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sFieldNestedSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/PerfettoTrackEventExtra$FieldNested;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sFieldStringSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/PerfettoTrackEventExtra$FieldString;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sFlowSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/PerfettoTrackEventExtra$Flow;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sNamedTrackId:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;

.field private static final blacklist sTrackEventExtra:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/PerfettoTrackEventExtra;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgBool;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgDouble;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgInt64;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgString;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

.field private blacklist mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

.field private final blacklist mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$CounterTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldDouble;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldInt64;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldNested;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldString;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

.field private final blacklist mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$NamedTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingPointers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

.field private final blacklist mPtr:J

.field private blacklist mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;


# direct methods
.method public static synthetic blacklist $r8$lambda$PKockuywBd_S6YrwVRC15_taBZQ()Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 2

    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;-><init>(Landroid/os/PerfettoTrackEventExtra-IA;)V

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArgBoolCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .registers 1

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArgDoubleCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .registers 1

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArgInt64Cache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .registers 1

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArgStringCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .registers 1

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBuilderCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;
    .registers 1

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCounterTrackCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .registers 1

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldDoubleCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;
    .registers 1

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldInt64Cache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;
    .registers 1

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldNestedCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;
    .registers 1

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldStringCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;
    .registers 1

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNamedTrackCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .registers 1

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCounterDouble(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$CounterDouble;
    .registers 1

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra;->getCounterDouble()Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCounterInt64(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$CounterInt64;
    .registers 1

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra;->getCounterInt64()Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFlow(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Flow;
    .registers 1

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra;->getFlow()Landroid/os/PerfettoTrackEventExtra$Flow;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetProto(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Proto;
    .registers 1

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra;->getProto()Landroid/os/PerfettoTrackEventExtra$Proto;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTerminatingFlow(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Flow;
    .registers 1

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra;->getTerminatingFlow()Landroid/os/PerfettoTrackEventExtra$Flow;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsBuilderSupplier()Ljava/util/function/Supplier;
    .registers 1

    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sBuilderSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsFieldDoubleSupplier()Ljava/util/function/Supplier;
    .registers 1

    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldDoubleSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsFieldInt64Supplier()Ljava/util/function/Supplier;
    .registers 1

    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldInt64Supplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsFieldNestedSupplier()Ljava/util/function/Supplier;
    .registers 1

    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldNestedSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsFieldStringSupplier()Ljava/util/function/Supplier;
    .registers 1

    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldStringSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsNamedTrackId()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sNamedTrackId:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsTrackEventExtra()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sTrackEventExtra:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_emit(IJLjava/lang/String;J)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/os/PerfettoTrackEventExtra;->native_emit(IJLjava/lang/String;J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 40
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Builder;-><init>(Landroid/os/PerfettoTrackEventExtra;Z)V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->NO_OP_BUILDER:Landroid/os/PerfettoTrackEventExtra$Builder;

    .line 41
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$1;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$1;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sTrackEventExtra:Ljava/lang/ThreadLocal;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sNamedTrackId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sFlowSupplier:Ljava/util/function/Supplier;

    .line 50
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sBuilderSupplier:Ljava/util/function/Supplier;

    .line 51
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldInt64Supplier:Ljava/util/function/Supplier;

    .line 52
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldDoubleSupplier:Ljava/util/function/Supplier;

    .line 53
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldStringSupplier:Ljava/util/function/Supplier;

    .line 54
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sFieldNestedSupplier:Ljava/util/function/Supplier;

    .line 648
    nop

    .line 650
    const-class v0, Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->native_delete()J

    move-result-wide v1

    .line 649
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 648
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 4

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPendingPointers:Ljava/util/List;

    .line 632
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 634
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 637
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 638
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 639
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 640
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 642
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 643
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 644
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 645
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 646
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;-><init>(I)V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 656
    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPtr:J

    .line 657
    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->getInstance()Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->isRunningOnRavenwood()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 658
    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/PerfettoTrackEventExtra;->mPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 660
    :cond_6f
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/PerfettoTrackEventExtra-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra;-><init>()V

    return-void
.end method

.method public static blacklist builder(Z)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 3
    .param p0, "isCategoryEnabled"    # Z

    .line 625
    if-eqz p0, :cond_1a

    .line 626
    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->sTrackEventExtra:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra;

    iget-object v0, v0, Landroid/os/PerfettoTrackEventExtra;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    sget-object v1, Landroid/os/PerfettoTrackEventExtra;->sBuilderSupplier:Ljava/util/function/Supplier;

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$Builder;

    .line 627
    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;->-$$Nest$minitInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 626
    return-object v0

    .line 629
    :cond_1a
    sget-object v0, Landroid/os/PerfettoTrackEventExtra;->NO_OP_BUILDER:Landroid/os/PerfettoTrackEventExtra$Builder;

    return-object v0
.end method

.method private blacklist getCounterDouble()Landroid/os/PerfettoTrackEventExtra$CounterDouble;
    .registers 2

    .line 704
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    if-nez v0, :cond_b

    .line 705
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$CounterDouble;-><init>()V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    .line 707
    :cond_b
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    return-object v0
.end method

.method private blacklist getCounterDouble$ravenwood()Landroid/os/PerfettoTrackEventExtra$CounterDouble;
    .registers 2

    .line 1301
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getCounterInt64()Landroid/os/PerfettoTrackEventExtra$CounterInt64;
    .registers 2

    .line 696
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    if-nez v0, :cond_b

    .line 697
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$CounterInt64;-><init>()V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    .line 699
    :cond_b
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    return-object v0
.end method

.method private blacklist getCounterInt64$ravenwood()Landroid/os/PerfettoTrackEventExtra$CounterInt64;
    .registers 2

    .line 1296
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getFlow()Landroid/os/PerfettoTrackEventExtra$Flow;
    .registers 2

    .line 720
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    if-nez v0, :cond_b

    .line 721
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$Flow;-><init>()V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    .line 723
    :cond_b
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    return-object v0
.end method

.method private blacklist getFlow$ravenwood()Landroid/os/PerfettoTrackEventExtra$Flow;
    .registers 2

    .line 1311
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getProto()Landroid/os/PerfettoTrackEventExtra$Proto;
    .registers 2

    .line 712
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    if-nez v0, :cond_b

    .line 713
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Proto;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$Proto;-><init>()V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    .line 715
    :cond_b
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    return-object v0
.end method

.method private blacklist getProto$ravenwood()Landroid/os/PerfettoTrackEventExtra$Proto;
    .registers 2

    .line 1306
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getTerminatingFlow()Landroid/os/PerfettoTrackEventExtra$Flow;
    .registers 2

    .line 728
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    if-nez v0, :cond_b

    .line 729
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-direct {v0}, Landroid/os/PerfettoTrackEventExtra$Flow;-><init>()V

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    .line 731
    :cond_b
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    return-object v0
.end method

.method private blacklist getTerminatingFlow$ravenwood()Landroid/os/PerfettoTrackEventExtra$Flow;
    .registers 2

    .line 1316
    const/4 v0, 0x0

    return-object v0
.end method

.method private static native blacklist native_add_arg(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_clear_args(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_delete()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static blacklist native_delete$ravenwood()J
    .registers 2

    .line 1291
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static native blacklist native_emit(IJLjava/lang/String;J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_init()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static blacklist native_init$ravenwood()J
    .registers 2

    .line 1286
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private blacklist reset$ravenwood()V
    .registers 1

    .line 1321
    return-void
.end method


# virtual methods
.method public blacklist addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V
    .registers 4
    .param p1, "container"    # Landroid/os/PerfettoTrackEventExtra$FieldContainer;
    .param p2, "extra"    # Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;

    .line 681
    invoke-interface {p1, p2}, Landroid/os/PerfettoTrackEventExtra$FieldContainer;->addField(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 682
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPendingPointers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    return-void
.end method

.method public blacklist addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V
    .registers 6
    .param p1, "extra"    # Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;

    .line 673
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPtr:J

    invoke-interface {p1}, Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;->getPtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/os/PerfettoTrackEventExtra;->native_add_arg(JJ)V

    .line 674
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPendingPointers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    return-void
.end method

.method public blacklist getPtr()J
    .registers 3

    .line 666
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPtr:J

    return-wide v0
.end method

.method public blacklist reset()V
    .registers 3

    .line 690
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra;->native_clear_args(J)V

    .line 691
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra;->mPendingPointers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 692
    return-void
.end method
