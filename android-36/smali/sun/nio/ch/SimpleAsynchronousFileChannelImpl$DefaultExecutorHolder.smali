.class Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$DefaultExecutorHolder;
.super Ljava/lang/Object;
.source "SimpleAsynchronousFileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultExecutorHolder"
.end annotation


# static fields
.field static final blacklist defaultExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    invoke-static {}, Lsun/nio/ch/ThreadPool;->createDefault()Lsun/nio/ch/ThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$DefaultExecutorHolder;->defaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 46
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
