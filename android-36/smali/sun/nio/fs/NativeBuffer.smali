.class Lsun/nio/fs/NativeBuffer;
.super Ljava/lang/Object;
.source "NativeBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/NativeBuffer$Deallocator;
    }
.end annotation


# static fields
.field private static final blacklist unsafe:Ljdk/internal/misc/Unsafe;


# instance fields
.field private final blacklist address:J

.field private final blacklist cleaner:Lsun/misc/Cleaner;

.field private blacklist owner:Ljava/lang/Object;

.field private final blacklist size:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetunsafe()Ljdk/internal/misc/Unsafe;
    .registers 1

    sget-object v0, Lsun/nio/fs/NativeBuffer;->unsafe:Ljdk/internal/misc/Unsafe;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/NativeBuffer;->unsafe:Ljdk/internal/misc/Unsafe;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 5
    .param p1, "size"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lsun/nio/fs/NativeBuffer;->unsafe:Ljdk/internal/misc/Unsafe;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    iput-wide v0, p0, Lsun/nio/fs/NativeBuffer;->address:J

    .line 58
    iput p1, p0, Lsun/nio/fs/NativeBuffer;->size:I

    .line 59
    new-instance v0, Lsun/nio/fs/NativeBuffer$Deallocator;

    iget-wide v1, p0, Lsun/nio/fs/NativeBuffer;->address:J

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/NativeBuffer$Deallocator;-><init>(J)V

    invoke-static {p0, v0}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/NativeBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 60
    return-void
.end method


# virtual methods
.method blacklist address()J
    .registers 3

    .line 73
    iget-wide v0, p0, Lsun/nio/fs/NativeBuffer;->address:J

    return-wide v0
.end method

.method blacklist cleaner()Lsun/misc/Cleaner;
    .registers 2

    .line 81
    iget-object v0, p0, Lsun/nio/fs/NativeBuffer;->cleaner:Lsun/misc/Cleaner;

    return-object v0
.end method

.method blacklist owner()Ljava/lang/Object;
    .registers 2

    .line 91
    iget-object v0, p0, Lsun/nio/fs/NativeBuffer;->owner:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist release()V
    .registers 1

    .line 64
    invoke-static {p0}, Lsun/nio/fs/NativeBuffers;->releaseNativeBuffer(Lsun/nio/fs/NativeBuffer;)V

    .line 65
    return-void
.end method

.method blacklist setOwner(Ljava/lang/Object;)V
    .registers 2
    .param p1, "owner"    # Ljava/lang/Object;

    .line 86
    iput-object p1, p0, Lsun/nio/fs/NativeBuffer;->owner:Ljava/lang/Object;

    .line 87
    return-void
.end method

.method blacklist size()I
    .registers 2

    .line 77
    iget v0, p0, Lsun/nio/fs/NativeBuffer;->size:I

    return v0
.end method
