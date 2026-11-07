.class final Landroid/os/PerfettoTrackEventExtra$ArgBool;
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
    name = "ArgBool"
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

    .line 949
    nop

    .line 951
    const-class v0, Landroid/os/PerfettoTrackEventExtra$ArgBool;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->native_delete()J

    move-result-wide v1

    .line 950
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 949
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->native_init(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mPtr:J

    .line 963
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mExtraPtr:J

    .line 964
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mName:Ljava/lang/String;

    .line 965
    sget-object v0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 966
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

.method private static native blacklist native_set_value(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 974
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPtr()J
    .registers 3

    .line 970
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mExtraPtr:J

    return-wide v0
.end method

.method public blacklist setValue(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 978
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgBool;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->native_set_value(JZ)V

    .line 979
    return-void
.end method
