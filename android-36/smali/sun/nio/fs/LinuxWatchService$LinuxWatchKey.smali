.class Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;
.super Lsun/nio/fs/AbstractWatchKey;
.source "LinuxWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/LinuxWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinuxWatchKey"
.end annotation


# instance fields
.field private final blacklist ifd:I

.field private volatile blacklist wd:I


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/UnixPath;Lsun/nio/fs/LinuxWatchService;II)V
    .registers 5
    .param p1, "dir"    # Lsun/nio/fs/UnixPath;
    .param p2, "watcher"    # Lsun/nio/fs/LinuxWatchService;
    .param p3, "ifd"    # I
    .param p4, "wd"    # I

    .line 112
    invoke-direct {p0, p1, p2}, Lsun/nio/fs/AbstractWatchKey;-><init>(Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V

    .line 113
    iput p3, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->ifd:I

    .line 114
    iput p4, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->wd:I

    .line 115
    return-void
.end method


# virtual methods
.method public whitelist test-api cancel()V
    .registers 2

    .line 139
    invoke-virtual {p0}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 141
    invoke-virtual {p0}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->watcher()Lsun/nio/fs/AbstractWatchService;

    move-result-object v0

    check-cast v0, Lsun/nio/fs/LinuxWatchService;

    invoke-static {v0}, Lsun/nio/fs/LinuxWatchService;->-$$Nest$fgetpoller(Lsun/nio/fs/LinuxWatchService;)Lsun/nio/fs/LinuxWatchService$Poller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/nio/fs/LinuxWatchService$Poller;->cancel(Ljava/nio/file/WatchKey;)V

    .line 143
    :cond_13
    return-void
.end method

.method blacklist descriptor()I
    .registers 2

    .line 118
    iget v0, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->wd:I

    return v0
.end method

.method blacklist invalidate(Z)V
    .registers 4
    .param p1, "remove"    # Z

    .line 122
    if-eqz p1, :cond_b

    .line 124
    :try_start_2
    iget v0, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->ifd:I

    iget v1, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->wd:I

    invoke-static {v0, v1}, Lsun/nio/fs/LinuxWatchService;->-$$Nest$sminotifyRmWatch(II)V
    :try_end_9
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_9} :catch_a

    .line 127
    goto :goto_b

    .line 125
    :catch_a
    move-exception v0

    .line 129
    :cond_b
    :goto_b
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->wd:I

    .line 130
    return-void
.end method

.method public whitelist test-api isValid()Z
    .registers 3

    .line 134
    iget v0, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->wd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
