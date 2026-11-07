.class final Landroid/os/PerfettoTrackEventExtra$CounterDouble;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"

# interfaces
.implements Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CounterDouble"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mExtraPtr:J

.field private final blacklist mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 873
    nop

    .line 875
    const-class v0, Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->native_delete()J

    move-result-wide v1

    .line 874
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 873
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->mPtr:J

    .line 882
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->mExtraPtr:J

    .line 883
    sget-object v0, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->mPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 884
    return-void
.end method

.method private static native blacklist native_delete()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_get_extra_ptr(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_init()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_set_value(JD)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getPtr()J
    .registers 3

    .line 888
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->mExtraPtr:J

    return-wide v0
.end method

.method public blacklist setValue(D)V
    .registers 5
    .param p1, "value"    # D

    .line 892
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->native_set_value(JD)V

    .line 893
    return-void
.end method
