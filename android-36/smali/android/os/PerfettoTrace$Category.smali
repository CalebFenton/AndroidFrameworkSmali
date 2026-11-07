.class public final Landroid/os/PerfettoTrace$Category;
.super Ljava/lang/Object;
.source "PerfettoTrace.java"

# interfaces
.implements Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Category"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mExtraPtr:J

.field private blacklist mIsRegistered:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPtr:J

.field private final blacklist mSeverity:Ljava/lang/String;

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 63
    nop

    .line 65
    const-class v0, Landroid/os/PerfettoTrace$Category;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrace$Category;->native_delete()J

    move-result-wide v1

    .line 64
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrace$Category;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 80
    const-string v0, ""

    invoke-direct {p0, p1, v0, v0}, Landroid/os/PerfettoTrace$Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 90
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroid/os/PerfettoTrace$Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "severity"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/os/PerfettoTrace$Category;->mName:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Landroid/os/PerfettoTrace$Category;->mTag:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Landroid/os/PerfettoTrace$Category;->mSeverity:Ljava/lang/String;

    .line 104
    invoke-static {p1, p2, p3}, Landroid/os/PerfettoTrace$Category;->native_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    .line 105
    iget-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrace$Category;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mExtraPtr:J

    .line 106
    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->getInstance()Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->isRunningOnRavenwood()Z

    move-result v0

    if-nez v0, :cond_28

    .line 107
    sget-object v0, Landroid/os/PerfettoTrace$Category;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 109
    :cond_28
    return-void
.end method

.method private static native blacklist native_delete()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static blacklist native_delete$ravenwood()J
    .registers 2

    .line 134
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static native blacklist native_get_extra_ptr(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static blacklist native_get_extra_ptr$ravenwood(J)J
    .registers 4
    .param p0, "ptr"    # J

    .line 139
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static native blacklist native_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static blacklist native_init$ravenwood(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "severity"    # Ljava/lang/String;

    .line 129
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static native blacklist native_is_enabled(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_register(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_unregister(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getPtr()J
    .registers 3

    .line 185
    iget-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mExtraPtr:J

    return-wide v0
.end method

.method public blacklist isEnabled()Z
    .registers 3

    .line 165
    invoke-static {}, Landroid/os/PerfettoTrace;->-$$Nest$sfgetIS_FLAG_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrace$Category;->native_is_enabled(J)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist isEnabled$ravenwood()Z
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRegistered()Z
    .registers 2

    .line 177
    iget-boolean v0, p0, Landroid/os/PerfettoTrace$Category;->mIsRegistered:Z

    return v0
.end method

.method public blacklist register()Landroid/os/PerfettoTrace$Category;
    .registers 3

    .line 146
    iget-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrace$Category;->native_register(J)V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PerfettoTrace$Category;->mIsRegistered:Z

    .line 148
    return-object p0
.end method

.method public blacklist unregister()Landroid/os/PerfettoTrace$Category;
    .registers 3

    .line 155
    iget-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrace$Category;->native_unregister(J)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/PerfettoTrace$Category;->mIsRegistered:Z

    .line 157
    return-object p0
.end method
