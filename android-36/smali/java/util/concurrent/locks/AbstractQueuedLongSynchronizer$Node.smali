.class abstract Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
.super Ljava/lang/Object;
.source "AbstractQueuedLongSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Node"
.end annotation


# static fields
.field private static final blacklist NEXT:J

.field private static final blacklist PREV:J

.field private static final blacklist STATUS:J


# instance fields
.field volatile blacklist next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field volatile blacklist prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field volatile blacklist status:I

.field blacklist waiter:Ljava/lang/Thread;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 115
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    .line 116
    const-class v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    const-string v2, "status"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->STATUS:J

    .line 117
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    .line 118
    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->NEXT:J

    .line 119
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    .line 120
    const-string v2, "prev"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->PREV:J

    .line 119
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final blacklist casNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .registers 9
    .param p1, "c"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p2, "v"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 100
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->NEXT:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "c":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local p2    # "v":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .local v4, "c":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .local v5, "v":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->weakCompareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final blacklist casPrev(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .registers 9
    .param p1, "c"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p2, "v"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 97
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->PREV:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "c":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local p2    # "v":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .local v4, "c":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .local v5, "v":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->weakCompareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final blacklist clearStatus()V
    .registers 5

    .line 112
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sget-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->STATUS:J

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->putIntOpaque(Ljava/lang/Object;JI)V

    .line 113
    return-void
.end method

.method final blacklist getAndUnsetStatus(I)I
    .registers 6
    .param p1, "v"    # I

    .line 103
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sget-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->STATUS:J

    not-int v3, p1

    invoke-virtual {v0, p0, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->getAndBitwiseAndInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method final blacklist setPrevRelaxed(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .registers 5
    .param p1, "p"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 106
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sget-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->PREV:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->putReference(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 107
    return-void
.end method

.method final blacklist setStatusRelaxed(I)V
    .registers 5
    .param p1, "s"    # I

    .line 109
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sget-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->STATUS:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 110
    return-void
.end method
