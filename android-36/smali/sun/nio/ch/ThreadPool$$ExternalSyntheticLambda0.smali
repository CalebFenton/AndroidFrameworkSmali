.class public final synthetic Lsun/nio/ch/ThreadPool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    .line 0
    invoke-static {p1}, Lsun/nio/ch/ThreadPool;->lambda$defaultThreadFactory$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
