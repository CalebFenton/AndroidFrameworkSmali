.class public Llibcore/util/NativeAllocationRegistry;
.super Ljava/lang/Object;
.source "NativeAllocationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/util/NativeAllocationRegistry$Allocator;,
        Llibcore/util/NativeAllocationRegistry$CleanerRunner;,
        Llibcore/util/NativeAllocationRegistry$CleanerThunk;
    }
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final freeFunction:J

.field private final size:J


# direct methods
.method static synthetic -get0(Llibcore/util/NativeAllocationRegistry;)J
    .locals 2

    #@0
    iget-wide v0, p0, Llibcore/util/NativeAllocationRegistry;->freeFunction:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Llibcore/util/NativeAllocationRegistry;)J
    .locals 2

    #@0
    iget-wide v0, p0, Llibcore/util/NativeAllocationRegistry;->size:J

    #@2
    return-wide v0
.end method

.method static synthetic -wrap0(J)V
    .locals 0
    .param p0, "size"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Llibcore/util/NativeAllocationRegistry;->registerNativeFree(J)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;JJ)V
    .locals 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "freeFunction"    # J
    .param p4, "size"    # J

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    const-wide/16 v0, 0x0

    #@5
    cmp-long v0, p4, v0

    #@7
    if-gez v0, :cond_0

    #@9
    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Invalid native allocation size: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 81
    :cond_0
    iput-object p1, p0, Llibcore/util/NativeAllocationRegistry;->classLoader:Ljava/lang/ClassLoader;

    #@25
    .line 82
    iput-wide p2, p0, Llibcore/util/NativeAllocationRegistry;->freeFunction:J

    #@27
    .line 83
    iput-wide p4, p0, Llibcore/util/NativeAllocationRegistry;->size:J

    #@29
    .line 76
    return-void
.end method

.method public static native applyFreeFunction(JJ)V
.end method

.method private static registerNativeAllocation(J)V
    .locals 4
    .param p0, "size"    # J

    #@0
    .prologue
    .line 219
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    const-wide/32 v2, 0x7fffffff

    #@7
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@a
    move-result-wide v2

    #@b
    long-to-int v1, v2

    #@c
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    #@f
    .line 218
    return-void
.end method

.method private static registerNativeFree(J)V
    .locals 4
    .param p0, "size"    # J

    #@0
    .prologue
    .line 223
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    const-wide/32 v2, 0x7fffffff

    #@7
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@a
    move-result-wide v2

    #@b
    long-to-int v1, v2

    #@c
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    #@f
    .line 222
    return-void
.end method


# virtual methods
.method public registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;
    .locals 4
    .param p1, "referent"    # Ljava/lang/Object;
    .param p2, "nativePtr"    # J

    #@0
    .prologue
    .line 114
    if-nez p1, :cond_0

    #@2
    .line 115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "referent is null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 117
    :cond_0
    const-wide/16 v2, 0x0

    #@d
    cmp-long v2, p2, v2

    #@f
    if-nez v2, :cond_1

    #@11
    .line 118
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "nativePtr is null"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 122
    :cond_1
    :try_start_0
    iget-wide v2, p0, Llibcore/util/NativeAllocationRegistry;->size:J

    #@1c
    invoke-static {v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(J)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 128
    new-instance v2, Llibcore/util/NativeAllocationRegistry$CleanerThunk;

    #@21
    invoke-direct {v2, p0, p2, p3}, Llibcore/util/NativeAllocationRegistry$CleanerThunk;-><init>(Llibcore/util/NativeAllocationRegistry;J)V

    #@24
    invoke-static {p1, v2}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    #@27
    move-result-object v0

    #@28
    .line 129
    .local v0, "cleaner":Lsun/misc/Cleaner;
    new-instance v2, Llibcore/util/NativeAllocationRegistry$CleanerRunner;

    #@2a
    invoke-direct {v2, v0}, Llibcore/util/NativeAllocationRegistry$CleanerRunner;-><init>(Lsun/misc/Cleaner;)V

    #@2d
    return-object v2

    #@2e
    .line 123
    .end local v0    # "cleaner":Lsun/misc/Cleaner;
    :catch_0
    move-exception v1

    #@2f
    .line 124
    .local v1, "oome":Ljava/lang/OutOfMemoryError;
    iget-wide v2, p0, Llibcore/util/NativeAllocationRegistry;->freeFunction:J

    #@31
    invoke-static {v2, v3, p2, p3}, Llibcore/util/NativeAllocationRegistry;->applyFreeFunction(JJ)V

    #@34
    .line 125
    throw v1
.end method

.method public registerNativeAllocation(Ljava/lang/Object;Llibcore/util/NativeAllocationRegistry$Allocator;)Ljava/lang/Runnable;
    .locals 7
    .param p1, "referent"    # Ljava/lang/Object;
    .param p2, "allocator"    # Llibcore/util/NativeAllocationRegistry$Allocator;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 162
    if-nez p1, :cond_0

    #@3
    .line 163
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v5, "referent is null"

    #@8
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4

    #@c
    .line 165
    :cond_0
    iget-wide v4, p0, Llibcore/util/NativeAllocationRegistry;->size:J

    #@e
    invoke-static {v4, v5}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(J)V

    #@11
    .line 170
    new-instance v1, Llibcore/util/NativeAllocationRegistry$CleanerThunk;

    #@13
    invoke-direct {v1, p0}, Llibcore/util/NativeAllocationRegistry$CleanerThunk;-><init>(Llibcore/util/NativeAllocationRegistry;)V

    #@16
    .line 171
    .local v1, "thunk":Llibcore/util/NativeAllocationRegistry$CleanerThunk;
    invoke-static {p1, v1}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    #@19
    move-result-object v0

    #@1a
    .line 172
    .local v0, "cleaner":Lsun/misc/Cleaner;
    invoke-interface {p2}, Llibcore/util/NativeAllocationRegistry$Allocator;->allocate()J

    #@1d
    move-result-wide v2

    #@1e
    .line 173
    .local v2, "nativePtr":J
    const-wide/16 v4, 0x0

    #@20
    cmp-long v4, v2, v4

    #@22
    if-nez v4, :cond_1

    #@24
    .line 174
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    #@27
    .line 175
    return-object v6

    #@28
    .line 177
    :cond_1
    invoke-virtual {v1, v2, v3}, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->setNativePtr(J)V

    #@2b
    .line 178
    new-instance v4, Llibcore/util/NativeAllocationRegistry$CleanerRunner;

    #@2d
    invoke-direct {v4, v0}, Llibcore/util/NativeAllocationRegistry$CleanerRunner;-><init>(Lsun/misc/Cleaner;)V

    #@30
    return-object v4
.end method
