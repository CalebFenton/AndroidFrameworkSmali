.class final Landroid/os/PerfettoTrackEventExtra$ArgDouble;
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
    name = "ArgDouble"
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

    .line 992
    nop

    .line 994
    const-class v0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->native_delete()J

    move-result-wide v1

    .line 993
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 992
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->native_init(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mPtr:J

    .line 1006
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mExtraPtr:J

    .line 1007
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mName:Ljava/lang/String;

    .line 1008
    sget-object v0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 1009
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

.method private static native blacklist native_init(Ljava/lang/String;)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_set_value(JD)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 1017
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPtr()J
    .registers 3

    .line 1013
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mExtraPtr:J

    return-wide v0
.end method

.method public blacklist setValue(D)V
    .registers 5
    .param p1, "val"    # D

    .line 1021
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->native_set_value(JD)V

    .line 1022
    return-void
.end method
