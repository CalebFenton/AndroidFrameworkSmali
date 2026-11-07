.class public Landroid/graphics/ColorFilter;
.super Ljava/lang/Object;
.source "ColorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorFilter$NoImagePreloadHolder;
    }
.end annotation


# instance fields
.field private greylist-max-o mNativeInstance:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/ColorFilter;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native greylist-max-o nativeGetFinalizer()J
.end method


# virtual methods
.method greylist-max-o createNativeInstance()J
    .registers 3

    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final declared-synchronized greylist-max-o getNativeInstance()J
    .registers 5

    monitor-enter p0

    .line 52
    :try_start_1
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 53
    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->createNativeInstance()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    .line 55
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 59
    sget-object v0, Landroid/graphics/ColorFilter$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 62
    .end local p0    # "this":Landroid/graphics/ColorFilter;
    :cond_1c
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-wide v0

    .line 51
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method
