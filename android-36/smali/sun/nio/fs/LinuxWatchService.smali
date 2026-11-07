.class Lsun/nio/fs/LinuxWatchService;
.super Lsun/nio/fs/AbstractWatchService;
.source "LinuxWatchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/LinuxWatchService$Poller;,
        Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;
    }
.end annotation


# static fields
.field private static final blacklist unsafe:Ljdk/internal/misc/Unsafe;


# instance fields
.field private final blacklist poller:Lsun/nio/fs/LinuxWatchService$Poller;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetpoller(Lsun/nio/fs/LinuxWatchService;)Lsun/nio/fs/LinuxWatchService$Poller;
    .registers 1

    iget-object p0, p0, Lsun/nio/fs/LinuxWatchService;->poller:Lsun/nio/fs/LinuxWatchService$Poller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetunsafe()Ljdk/internal/misc/Unsafe;
    .registers 1

    sget-object v0, Lsun/nio/fs/LinuxWatchService;->unsafe:Ljdk/internal/misc/Unsafe;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smeventOffsets()[I
    .registers 1

    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->eventOffsets()[I

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smeventSize()I
    .registers 1

    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->eventSize()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sminotifyAddWatch(IJI)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lsun/nio/fs/LinuxWatchService;->inotifyAddWatch(IJI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminotifyRmWatch(II)V
    .registers 2

    invoke-static {p0, p1}, Lsun/nio/fs/LinuxWatchService;->inotifyRmWatch(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smpoll(II)I
    .registers 2

    invoke-static {p0, p1}, Lsun/nio/fs/LinuxWatchService;->poll(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxWatchService;->unsafe:Ljdk/internal/misc/Unsafe;

    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixFileSystem;)V
    .registers 7
    .param p1, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lsun/nio/fs/AbstractWatchService;-><init>()V

    .line 60
    const/4 v0, -0x1

    .line 62
    .local v0, "ifd":I
    :try_start_4
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->inotifyInit()I

    move-result v1
    :try_end_8
    .catch Lsun/nio/fs/UnixException; {:try_start_4 .. :try_end_8} :catch_34

    .line 68
    .end local v0    # "ifd":I
    .local v1, "ifd":I
    nop

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 74
    .local v0, "sp":[I
    const/4 v2, 0x0

    :try_start_d
    invoke-static {v1, v2}, Lsun/nio/fs/LinuxWatchService;->configureBlocking(IZ)V

    .line 75
    invoke-static {v0}, Lsun/nio/fs/LinuxWatchService;->socketpair([I)V

    .line 76
    aget v3, v0, v2

    invoke-static {v3, v2}, Lsun/nio/fs/LinuxWatchService;->configureBlocking(IZ)V
    :try_end_18
    .catch Lsun/nio/fs/UnixException; {:try_start_d .. :try_end_18} :catch_26

    .line 80
    nop

    .line 82
    new-instance v2, Lsun/nio/fs/LinuxWatchService$Poller;

    invoke-direct {v2, p1, p0, v1, v0}, Lsun/nio/fs/LinuxWatchService$Poller;-><init>(Lsun/nio/fs/UnixFileSystem;Lsun/nio/fs/LinuxWatchService;I[I)V

    iput-object v2, p0, Lsun/nio/fs/LinuxWatchService;->poller:Lsun/nio/fs/LinuxWatchService$Poller;

    .line 83
    iget-object v2, p0, Lsun/nio/fs/LinuxWatchService;->poller:Lsun/nio/fs/LinuxWatchService$Poller;

    invoke-virtual {v2}, Lsun/nio/fs/LinuxWatchService$Poller;->start()V

    .line 84
    return-void

    .line 77
    :catch_26
    move-exception v2

    .line 78
    .local v2, "x":Lsun/nio/fs/UnixException;
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 79
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    .end local v1    # "ifd":I
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    .local v0, "ifd":I
    :catch_34
    move-exception v1

    .line 64
    .local v1, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->errno()I

    move-result v2

    sget v3, Lsun/nio/fs/UnixConstants;->EMFILE:I

    if-ne v2, v3, :cond_40

    .line 65
    const-string v2, "User limit of inotify instances reached or too many open files"

    goto :goto_44

    .line 66
    :cond_40
    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v2

    :goto_44
    nop

    .line 67
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static native blacklist configureBlocking(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native blacklist eventOffsets()[I
.end method

.method private static native blacklist eventSize()I
.end method

.method private static native blacklist inotifyAddWatch(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native blacklist inotifyInit()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native blacklist inotifyRmWatch(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native blacklist poll(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native blacklist socketpair([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method


# virtual methods
.method blacklist implClose()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService;->poller:Lsun/nio/fs/LinuxWatchService$Poller;

    invoke-virtual {v0}, Lsun/nio/fs/LinuxWatchService$Poller;->close()V

    .line 100
    return-void
.end method

.method varargs blacklist register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .registers 5
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p3, "modifiers"    # [Ljava/nio/file/WatchEvent$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    .local p2, "events":[Ljava/nio/file/WatchEvent$Kind;, "[Ljava/nio/file/WatchEvent$Kind<*>;"
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService;->poller:Lsun/nio/fs/LinuxWatchService$Poller;

    invoke-virtual {v0, p1, p2, p3}, Lsun/nio/fs/LinuxWatchService$Poller;->register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object v0

    return-object v0
.end method
