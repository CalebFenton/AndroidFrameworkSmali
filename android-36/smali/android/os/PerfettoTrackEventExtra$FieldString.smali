.class final Landroid/os/PerfettoTrackEventExtra$FieldString;
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
    name = "FieldString"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mFieldPtr:J

.field private final blacklist mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1193
    nop

    .line 1195
    const-class v0, Landroid/os/PerfettoTrackEventExtra$FieldString;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$FieldString;->native_delete()J

    move-result-wide v1

    .line 1194
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra$FieldString;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1193
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 1203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1204
    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$FieldString;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldString;->mPtr:J

    .line 1205
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldString;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra$FieldString;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldString;->mFieldPtr:J

    .line 1206
    sget-object v0, Landroid/os/PerfettoTrackEventExtra$FieldString;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/PerfettoTrackEventExtra$FieldString;->mPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 1207
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

.method private static native blacklist native_set_value(JJLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getPtr()J
    .registers 3

    .line 1211
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldString;->mFieldPtr:J

    return-wide v0
.end method

.method public blacklist setValue(JLjava/lang/String;)V
    .registers 6
    .param p1, "id"    # J
    .param p3, "val"    # Ljava/lang/String;

    .line 1215
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldString;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/PerfettoTrackEventExtra$FieldString;->native_set_value(JJLjava/lang/String;)V

    .line 1216
    return-void
.end method
