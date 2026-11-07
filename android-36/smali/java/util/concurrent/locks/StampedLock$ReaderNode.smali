.class final Ljava/util/concurrent/locks/StampedLock$ReaderNode;
.super Ljava/util/concurrent/locks/StampedLock$Node;
.source "StampedLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/StampedLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReaderNode"
.end annotation


# static fields
.field private static final blacklist COWAITERS:J


# instance fields
.field volatile blacklist cowaiters:Ljava/util/concurrent/locks/StampedLock$ReaderNode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 394
    invoke-static {}, Ljava/util/concurrent/locks/StampedLock;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    .line 395
    const-class v1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    const-string v2, "cowaiters"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->COWAITERS:J

    .line 394
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 386
    invoke-direct {p0}, Ljava/util/concurrent/locks/StampedLock$Node;-><init>()V

    return-void
.end method


# virtual methods
.method final blacklist casCowaiters(Ljava/util/concurrent/locks/StampedLock$ReaderNode;Ljava/util/concurrent/locks/StampedLock$ReaderNode;)Z
    .registers 9
    .param p1, "c"    # Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    .param p2, "v"    # Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    .line 389
    invoke-static {}, Ljava/util/concurrent/locks/StampedLock;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->COWAITERS:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "c":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    .end local p2    # "v":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    .local v4, "c":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    .local v5, "v":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->weakCompareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final blacklist setCowaitersRelaxed(Ljava/util/concurrent/locks/StampedLock$ReaderNode;)V
    .registers 5
    .param p1, "p"    # Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    .line 392
    invoke-static {}, Ljava/util/concurrent/locks/StampedLock;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sget-wide v1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->COWAITERS:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->putReference(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 393
    return-void
.end method
