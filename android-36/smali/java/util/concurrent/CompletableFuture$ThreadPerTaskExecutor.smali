.class final Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadPerTaskExecutor"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/CompletableFuture-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 419
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 421
    return-void
.end method
