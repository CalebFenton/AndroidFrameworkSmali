.class Lsun/nio/ch/EPoll;
.super Ljava/lang/Object;
.source "EPoll.java"


# static fields
.field static final blacklist EPOLLONESHOT:I = 0x40000000

.field static final blacklist EPOLL_CTL_ADD:I = 0x1

.field static final blacklist EPOLL_CTL_DEL:I = 0x2

.field static final blacklist EPOLL_CTL_MOD:I = 0x3

.field private static final blacklist OFFSETOF_EVENTS:I

.field private static final blacklist OFFSETOF_FD:I

.field private static final blacklist SIZEOF_EPOLLEVENT:I

.field private static final blacklist unsafe:Ljdk/internal/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/EPoll;->unsafe:Ljdk/internal/misc/Unsafe;

    .line 53
    invoke-static {}, Lsun/nio/ch/EPoll;->eventSize()I

    move-result v0

    sput v0, Lsun/nio/ch/EPoll;->SIZEOF_EPOLLEVENT:I

    .line 54
    invoke-static {}, Lsun/nio/ch/EPoll;->eventsOffset()I

    move-result v0

    sput v0, Lsun/nio/ch/EPoll;->OFFSETOF_EVENTS:I

    .line 55
    invoke-static {}, Lsun/nio/ch/EPoll;->dataOffset()I

    move-result v0

    sput v0, Lsun/nio/ch/EPoll;->OFFSETOF_FD:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist allocatePollArray(I)J
    .registers 4
    .param p0, "count"    # I

    .line 69
    sget-object v0, Lsun/nio/ch/EPoll;->unsafe:Ljdk/internal/misc/Unsafe;

    sget v1, Lsun/nio/ch/EPoll;->SIZEOF_EPOLLEVENT:I

    mul-int/2addr v1, p0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native blacklist dataOffset()I
.end method

.method static native blacklist epollCreate()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist epollCtl(IIII)I
.end method

.method static native blacklist epollWait(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist eventSize()I
.end method

.method private static native blacklist eventsOffset()I
.end method

.method static blacklist freePollArray(J)V
    .registers 3
    .param p0, "address"    # J

    .line 76
    sget-object v0, Lsun/nio/ch/EPoll;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Ljdk/internal/misc/Unsafe;->freeMemory(J)V

    .line 77
    return-void
.end method

.method static blacklist getDescriptor(J)I
    .registers 5
    .param p0, "eventAddress"    # J

    .line 90
    sget-object v0, Lsun/nio/ch/EPoll;->unsafe:Ljdk/internal/misc/Unsafe;

    sget v1, Lsun/nio/ch/EPoll;->OFFSETOF_FD:I

    int-to-long v1, v1

    add-long/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getInt(J)I

    move-result v0

    return v0
.end method

.method static blacklist getEvent(JI)J
    .registers 5
    .param p0, "address"    # J
    .param p2, "i"    # I

    .line 83
    sget v0, Lsun/nio/ch/EPoll;->SIZEOF_EPOLLEVENT:I

    mul-int/2addr v0, p2

    int-to-long v0, v0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method static blacklist getEvents(J)I
    .registers 5
    .param p0, "eventAddress"    # J

    .line 97
    sget-object v0, Lsun/nio/ch/EPoll;->unsafe:Ljdk/internal/misc/Unsafe;

    sget v1, Lsun/nio/ch/EPoll;->OFFSETOF_EVENTS:I

    int-to-long v1, v1

    add-long/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getInt(J)I

    move-result v0

    return v0
.end method
