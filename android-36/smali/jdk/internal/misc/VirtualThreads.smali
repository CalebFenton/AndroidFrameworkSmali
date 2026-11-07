.class public final Ljdk/internal/misc/VirtualThreads;
.super Ljava/lang/Object;
.source "VirtualThreads.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist park()V
    .registers 0

    .line 57
    return-void
.end method

.method public static blacklist park(J)V
    .registers 2
    .param p0, "nanos"    # J

    .line 71
    return-void
.end method

.method public static blacklist parkUntil(J)V
    .registers 2
    .param p0, "deadline"    # J

    .line 87
    return-void
.end method

.method public static blacklist unpark(Ljava/lang/Thread;)V
    .registers 1
    .param p0, "thread"    # Ljava/lang/Thread;

    .line 99
    return-void
.end method
