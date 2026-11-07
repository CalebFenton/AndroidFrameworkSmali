.class final Landroid/os/PerfettoTrackEventExtra$CounterTrack;
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
    name = "CounterTrack"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mExtraPtr:J

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 807
    nop

    .line 809
    const-class v0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->native_delete()J

    move-result-wide v1

    .line 808
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 807
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;J)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentUuid"    # J

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    invoke-static {p1, p2, p3}, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->native_init(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->mPtr:J

    .line 817
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->mExtraPtr:J

    .line 818
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->mName:Ljava/lang/String;

    .line 819
    sget-object v0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->mPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 820
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

.method private static native blacklist native_init(Ljava/lang/String;J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 828
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPtr()J
    .registers 3

    .line 824
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->mExtraPtr:J

    return-wide v0
.end method
