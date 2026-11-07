.class Lsun/nio/fs/PollingWatchService$CacheEntry;
.super Ljava/lang/Object;
.source "PollingWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/PollingWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
.end annotation


# instance fields
.field private blacklist lastModified:J

.field private blacklist lastTickCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlastModified(Lsun/nio/fs/PollingWatchService$CacheEntry;)J
    .registers 3

    iget-wide v0, p0, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastModified:J

    return-wide v0
.end method

.method constructor blacklist <init>(JI)V
    .registers 4
    .param p1, "lastModified"    # J
    .param p3, "lastTickCount"    # I

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-wide p1, p0, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastModified:J

    .line 206
    iput p3, p0, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastTickCount:I

    .line 207
    return-void
.end method


# virtual methods
.method blacklist lastModified()J
    .registers 3

    .line 214
    iget-wide v0, p0, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastModified:J

    return-wide v0
.end method

.method blacklist lastTickCount()I
    .registers 2

    .line 210
    iget v0, p0, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastTickCount:I

    return v0
.end method

.method blacklist update(JI)V
    .registers 4
    .param p1, "lastModified"    # J
    .param p3, "tickCount"    # I

    .line 218
    iput-wide p1, p0, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastModified:J

    .line 219
    iput p3, p0, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastTickCount:I

    .line 220
    return-void
.end method
