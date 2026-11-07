.class final Landroid/os/PerfettoTrackEventExtra$FieldNested;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"

# interfaces
.implements Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;
.implements Landroid/os/PerfettoTrackEventExtra$FieldContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FieldNested"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mFieldPtr:J

.field private final blacklist mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1229
    nop

    .line 1231
    const-class v0, Landroid/os/PerfettoTrackEventExtra$FieldNested;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$FieldNested;->native_delete()J

    move-result-wide v1

    .line 1230
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra$FieldNested;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1229
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 1239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$FieldNested;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldNested;->mPtr:J

    .line 1241
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldNested;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra$FieldNested;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldNested;->mFieldPtr:J

    .line 1242
    sget-object v0, Landroid/os/PerfettoTrackEventExtra$FieldNested;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/PerfettoTrackEventExtra$FieldNested;->mPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 1243
    return-void
.end method

.method private static native blacklist native_add_field(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
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

.method private static native blacklist native_set_id(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist addField(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V
    .registers 6
    .param p1, "field"    # Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;

    .line 1252
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldNested;->mPtr:J

    invoke-interface {p1}, Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;->getPtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/os/PerfettoTrackEventExtra$FieldNested;->native_add_field(JJ)V

    .line 1253
    return-void
.end method

.method public blacklist getPtr()J
    .registers 3

    .line 1247
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldNested;->mFieldPtr:J

    return-wide v0
.end method

.method public blacklist setId(J)V
    .registers 5
    .param p1, "id"    # J

    .line 1256
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldNested;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/PerfettoTrackEventExtra$FieldNested;->native_set_id(JJ)V

    .line 1257
    return-void
.end method
